<%-- 
    Document   : borraSocio
    Created on : 07-mar-2018, 20:13:32
    Author     : andrés fernández nadales
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      String usuario = request.getParameter("user");

      s.execute ("DELETE FROM cliente WHERE CodCli=" + request.getParameter("codigoCli"));
      
      s.close();
    %>
    <script>document.location = "indexEncargado.jsp?user=<%=usuario%>"</script>
    </body>
</html>
