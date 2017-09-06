package com.until;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ConnectionUntil {
	public static List<HashMap<String,Object>> findfits(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","admin");
			PreparedStatement ps=con.prepareStatement("SELECT SUM(money),DATE_FORMAT(createdate,'%m') from  teacher where DATE_FORMAT(createdate,'%Y')=DATE_FORMAT(NOW(),'%Y') GROUP BY DATE_FORMAT(createdate,'%m') ORDER BY DATE_FORMAT(createdate,'%m')");
			ResultSet rs=ps.executeQuery();
			List<HashMap<String,Object>> maps=new ArrayList<HashMap<String,Object>>();
			HashMap<String,Object> map=null;
			while(rs.next()){
				map=new HashMap<String,Object>();
				map.put("money", rs.getFloat(1));
				map.put("month", rs.getString(2));
				maps.add(map);
			}
			rs.close();
			ps.close();
			con.close();
			return maps;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void main(String[] args) {
		List<HashMap<String,Object>> maps=findfits();
		for (HashMap<String, Object> hashMap : maps) {
			System.out.println(hashMap.get("money"));
		}
	}
}
