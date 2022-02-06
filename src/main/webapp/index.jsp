<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
  <%@page import="java.sql.*"%>
    
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar do Banco Mysql</title>
</head>
<body>

<form action="cadastro.jsp" method="post">
<label>Nome</label>
<input type="text" name="nome">
<br>
<br>
<label>Idade</label>
<input type="text" name="idade">
<br>
<br>
<input type="submit" value="Cdastrar">
</form>
                  
    <%
    Connection con;
    String url = "jdbc:mysql://localhost:3306/empresa";
    String Driver = "com.mysql.jdbc.Driver";
    String user = "root";
    String clave = "";
    Class.forName(Driver);
    con = DriverManager.getConnection(url, user, clave);
    PreparedStatement ps;
    Statement smt;
    ResultSet rs;
    smt = con.createStatement();
    rs = smt.executeQuery("select * from pessoa");
    %>
    
        
    
    <table>
            
    <%
    while (rs.next()) {
    %>
                    
                   <tr>
                       <td class="text-center">
                       <%= rs.getInt("id")%></td>
                       <td><%= rs.getString("nome")%></td>
                       <td class="text-center"><%= rs.getString("idade")%></td>
                       <td class="text-center">
                <%
    }
%>












     </table>
</body>
</html>