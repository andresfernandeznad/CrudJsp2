<%-- 
    Document   : guardarSocioModificado
    Created on : 07-mar-2018, 20:35:52
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
      
      String actualizacion = "UPDATE cliente SET "
                           + "NomCli='" + request.getParameter("nombre")
                           + "', ApeCli='" + request.getParameter("apellidos")
                           + "', FechNac='" + request.getParameter("fechNac")
                           + "' WHERE CodCli=" + Integer.valueOf(request.getParameter("codigo"));
      s.execute(actualizacion);
      String actualizacion2 = "UPDATE apuntado SET "
                           + "CodAct=" + Integer.valueOf(request.getParameter("codiAct"))
                           + " WHERE CodCli=" + Integer.valueOf(request.getParameter("codigo"));
      s.execute(actualizacion2);
      
      conexion.close();
    %>
    </body>
    
    <script>
        
        document.location = "indexEncargado.jsp?user=<%=request.getParameter("user")%>";
    </script>
</html>
