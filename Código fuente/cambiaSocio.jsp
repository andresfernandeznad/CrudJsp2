<%-- 
    Document   : cambiaSocio
    Created on : 07-mar-2018, 19:58:37
    Author     : andresillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div id="tituloCambia">Modificación de socio</div>
          <form method="get" action="guardarSocioModificado.jsp">
        <div id="texto">Codigo de cliente
            <input id="inputCambia" type="text" name="codigo" size="10" value="<%= request.getParameter("codigoCli") %>" readonly><br></div>
        <div id="texto">Nombre
            <input type="hidden" name="user" value=<%=request.getParameter("user")%>>
            <input id="inputCambia" type="text" name="nombre" size="30" value="<%= request.getParameter("nombre") %>"><br></div>
        <div id="texto">Apellidos
            <input id="inputCambia" type="text" name="apellidos" size="50" value="<%= request.getParameter("apellido") %>"><br></div>
        <div id="texto">Fecha de nacimiento
            <input id="inputCambia" type="text" name="fechNac" size="5" value="<%= request.getParameter("fechnac") %>"><br></div>
        <div id="texto">Código de la actividad a la que quieres apuntarte
            <input id="inputCambia" type="number" min="1" max="6" name="codiAct" size="20" value="<%= request.getParameter("codigoAct") %>"><br></div>
            <a id="enlaceCambia" class="btn btn-primary btn-sm active" href="indexEncargado.jsp?user=<%=request.getParameter("user")%>"><div id="cancelar">Cancelar</div></a>
        <button type="submit" value="Enviar" id="nuevoCliente2" class="btn-sm btn-success">Enviar</button>          
        </form>

      </div>
    </div>
    </body>
</html>
