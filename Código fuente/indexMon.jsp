<%-- 
    Document   : indexMon
    Created on : 23-abr-2018, 19:53:55
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
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        <h1 id="titulo">GIMNASIO "..."</h1>
        <div id="usuarioImg"> <img src="imagenes/usuario.jpg" width="35%">
            <span id="nomUsu"><%=request.getParameter("user")%></span></div>
        <a id="logout" href="index.jsp" class="btn btn-primary btn-sm active" role="button">
            Logout
        </a>

        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
          PreparedStatement ps = conexion.prepareStatement("SELECT m.*, a.CodAct, a.NomAct FROM monitor m, actividad a WHERE m.codMon = a.codMon");

          ResultSet listadoMon = ps.executeQuery("SELECT m.*, a.CodAct, a.NomAct FROM monitor m, actividad a WHERE m.codMon = a.codMon");
          
          
        %>
        <form method="get" action="indexEncargado.jsp">
        <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
        <button id="enlaces" type="submit" class="btn btn-primary">Volver</button>
        </form>
        
        <table id="tablaListMon">
            <tr><th>Código Monitor</th><th>Nombre</th><th>Apellidos</th><th>Fecha de nacimiento</th><th>CodAct</th><th>NomAct</th></tr>
            <% while (listadoMon.next()) {
              out.println("<tr><td>");
            out.println(listadoMon.getString("codMon") + "</td>");
            out.println("<td>" + listadoMon.getString("nomMon") + "</td>");
            out.println("<td>" + listadoMon.getString("apeMon") + "</td>");
            out.println("<td>" + listadoMon.getString("fechNacMon") + "</td>");
            out.println("<td>" + listadoMon.getString("CodAct") + "</td>");
            out.println("<td>" + listadoMon.getString("NomAct") + "</td>");
             %> 
            <td>
            <form id="modificar" name="modificar" method="get" action="cambiaMon.jsp">
                <input type="hidden" name="codigoMon" value="<%=listadoMon.getString("codMon")%>" >
                <input type="hidden" name="nombre" value="<%=listadoMon.getString("nomMon")%>" >
                <input type="hidden" name="apellido" value="<%=listadoMon.getString("apeMon")%>" >
                <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
                <input type="hidden" name="codigoAct" value="<%=listadoMon.getString("CodAct")%>" >
                <input type="hidden" name="nombreAct" value="<%=listadoMon.getString("NomAct")%>" >
                <button type="submit" class="btn btn-primary" id="botonModificar">Cambiar de monitor</button>
            </form>
        </td>
              
          <%  }
          
          conexion.close();%>
            
            
        </table>
        
    </body>
    
</html>
