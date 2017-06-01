<!DOCTYPE html>
<%-- 
    Document   : index
    Created on : 31 May, 2017, 11:46:19 PM
    Author     : David Siga
--%>
<%@ page import="java.sql.*"
         import="java.lang.Integer"
 %>





<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="data.jsp" method="POST" >
        
        <input type="text" name="name" value="NULL" size="30" />
        <input type="text" name="roll" value="0" size="4" />
        <input type="text" name="marks" value="0" size="4"  />
        <input type="submit" value="Insert" name="Insert" /> </form>
      
     
        

    </body>
</html>
