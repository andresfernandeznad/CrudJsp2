<%-- 
    Document   : indexEncargado
    Created on : 10-abr-2018, 20:13:01
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
        <h1 id="titulo">GIMNASIO "..."</h1>
        <div id="usuarioImg"> <img src="imagenes/usuario.jpg" width="35%">
            <span id="nomUsu"><%=request.getParameter("user")%></span></div>
        <a id="logout" href="index.jsp" class="btn btn-primary btn-sm active" role="button">
            Logout
        </a>

        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
          PreparedStatement ps = conexion.prepareStatement("SELECT c.CodCli, c.NomCli, c.ApeCli, c.FechNac, a.CodAct FROM cliente c, apuntado a WHERE c.CodCli = a.CodCli");

          ResultSet listadoCliente = ps.executeQuery("SELECT c.CodCli, c.NomCli, c.ApeCli, c.FechNac, a.CodAct FROM cliente c, apuntado a WHERE c.CodCli = a.CodCli");


        %>

        <div id="listadoClientes"><table id="tablaList">
            <tr><th>Código Cliente</th><th>Nombre</th><th>Apellidos</th><th>Fecha de nacimiento</th><th>CodAct</th></tr>
            <tr><form method="get" action="nuevoSocio.jsp">
                <td><input type="number" name="codigo" size="10" required></td>
                <td><input type="text" name="nombre" size="30" required></td>
                <td><input type="text" name="apellidos" size="50" required></td>
                <td><input type="date" name="fechNac" size="5" required></td>
                
                <td><input type="number" name="codAct" min="1" max="5" required></td>
                <td><input type="hidden" name="user" value=<%=request.getParameter("user")%>></td>
                <td><button type="submit" value="Enviar" id="nuevoCliente">Enviar</button>    </td>      
            </form></tr>        

        <%          while (listadoCliente.next()) {
            out.println("<tr><td>");
            out.println(listadoCliente.getString("CodCli") + "</td>");
            out.println("<td>" + listadoCliente.getString("NomCli") + "</td>");
            out.println("<td>" + listadoCliente.getString("ApeCli") + "</td>");
            out.println("<td>" + listadoCliente.getString("FechNac") + "</td>");
            out.println("<td>" + listadoCliente.getString("CodAct") + "</td>");

        %>
        <td>
            <form id="modificar" name="modificar" method="get" action="cambiaSocio.jsp">
                <input type="hidden" name="codigoCli" value="<%=listadoCliente.getString("CodCli")%>" >
                <input type="hidden" name="nombre" value="<%=listadoCliente.getString("NomCli")%>" >
                <input type="hidden" name="apellido" value="<%=listadoCliente.getString("ApeCli")%>" >
                <input type="hidden" name="fechnac" value="<%=listadoCliente.getString("FechNac")%>" >
                <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
                <input type="hidden" name="codigoAct" value="<%=listadoCliente.getString("CodAct")%>" >
                <button type="submit" class="btn btn-primary" id="botonModificar">Modificar</button>
            </form>
        </td>
        <td>
            <form method="get" action="borraSocio.jsp">
                
                <input type="hidden" name="codigoCli" value="<%=listadoCliente.getString("CodCli")%>"/>
                <button type="submit" class="btn btn-danger" id="botonEliminar">Eliminar</button>
                <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
            </form>
        </td>
    </tr>
    </div>
            
            
    
    <%
      }


    %>
    
    
    <form method="get" action="indexMon.jsp">
        <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
        <button id="indexMon" type="submit" class="btn btn-primary"><div id="tocaPelotas">Gestión monitores</div></button>
    </form>
    
   
</body>
</html>
