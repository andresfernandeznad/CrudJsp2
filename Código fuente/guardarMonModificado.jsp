<%-- 
    Document   : guardarMonModificado
    Created on : 02-may-2018, 18:05:41
    Author     : andresillo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GIMNASIO</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagenes/2115mancuerna.ico">
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE actividad SET "
                           + "codMon=" + Integer.valueOf(request.getParameter("codMon"))
                           + " WHERE CodAct=" + Integer.valueOf(request.getParameter("codigoAct"));
      s.execute(actualizacion);
      
      conexion.close();
    %>
    </body>
    
    <script>
        
        document.location = "indexMon.jsp?user=<%=request.getParameter("user")%>";
    </script>
</html>
