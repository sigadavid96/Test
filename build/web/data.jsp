<%-- 
    Document   : data
    Created on : 1 Jun, 2017, 8:35:39 PM
    Author     : David Siga
--%>
<%@ page import="java.sql.*"
         import="java.lang.Integer"
 %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <h2 id="head"></h2>
        <%
            
                
           
            Connection con = null;
            Class.forName("oracle.jdbc.OracleDriver");  
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Banking_App","Banking_App");  
            
            String name =request.getParameter("name"); 
            String roll = request.getParameter("roll");   
            
            String marks = request.getParameter("marks");  
            Statement statement = con.createStatement();
            out.println("Name:"+name+" Roll:"+roll+" Marks:"+marks);
        
            
          String sql="insert into Test values(?,?,?)"; 
            PreparedStatement ps = con.prepareStatement(sql);
        
            ps.setString(1, name);
            ps.setInt(2, Integer.parseInt(roll));
            ps.setInt(3, Integer.parseInt(marks));

    int i=ps.executeUpdate(); 
           
            con.close();
          
        
      
%>
       
        <h1>Updated!</h1>
    </body>
</html>
