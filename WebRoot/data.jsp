<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.until.ConnectionUntil"%>
<%@page import="org.apache.struts2.json.JSONUtil"%>
<%
	List<HashMap<String,Object>> maps=ConnectionUntil.findfits();
	out.print(JSONUtil.serialize(maps));
 %>
