<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quote</title>
</head>
<body>
<h1 align="center">Quote</h1>
<hr>
<h3 align="center">Health Insurance Premium for Mr. <c:out value="${name}"/>:Rs.<c:out value="${premium}"/>/-  </h3>
<hr>
</body>
</html>