<%-- 
    Document   : validar
    Created on : 10-abr-2018, 20:16:34
    Author     : andresillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GIMNASIO</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagenes/2115mancuerna.ico">
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
          PreparedStatement ps = conexion.prepareStatement("SELECT usuEnc, conEnc from encargado where usuEnc = ? AND conEnc = ?");
          String usuario = request.getParameter("usuEnc");  
          ps.setString(1, usuario );
          ps.setString(2, request.getParameter("conEnc"));
          ResultSet encargado = ps.executeQuery();
          if (encargado.next()) {
            %> <script>document.location = "indexEncargado.jsp?user=<%=usuario%>"</script>
      <%    } else {%>
            <script>document.location = "index.jsp?validacion=false"</script>
         <%    }%>
          
    </body>
</html>
