<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Example</title>
</head>
<body>
    <h1>Welcome to JSP!</h1>
    
    <p>Current Date & Time: <%= new java.util.Date() %></p>

    <form action="index.jsp" method="GET">
        Enter your name: <input type="text" name="name">
        <input type="submit" value="Submit">
    </form>

    <%
        String name = request.getParameter("name");
        if (name != null && !name.trim().isEmpty()) {
    %>
        <h2>Hello, <%= name %>!</h2>
    <%
        }
    %>

</body>
</html>
