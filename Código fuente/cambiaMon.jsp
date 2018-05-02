<%-- 
    Document   : cambiaMon
    Created on : 25-abr-2018, 19:18:40
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

             <% request.setCharacterEncoding("UTF-8"); %>
    <div>
      <br><br>
        <div id="tituloCambia">Cambio de monitor a actividad</div>
          <form method="get" action="guardarMonModificado.jsp">
              
            <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
            <input type="hidden" name="codigoAct" value=<%=request.getParameter("codigoAct")%>>
            <div id="divMon">Actividad - <%= request.getParameter("nombreAct") %></div>
            
        <div id="texto">Código del monitor que quieres asignar a esta actividad
            <input id="inputCambia" type="number" min="1" max="2" name="codMon" size="20" value="<%= request.getParameter("codigoMon") %>"><br></div>
            <a id="enlaceCambia" class="btn btn-primary btn-sm active" href="indexMon.jsp?user=<%=request.getParameter("user")%>"><div id="cancelar">Cancelar</div></a>
        <button type="submit" value="Enviar" id="nuevoCliente2" class="btn-sm btn-success">Enviar</button>          
        </form>

      </div>
    </div>
    </body>
</html>

    </body>
</html>
