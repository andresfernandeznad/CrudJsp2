<%-- 
    Document   : index
    Created on : 10-abril-2018, 19:05:20
    Author     : andrés fernández nadales
--%>
<%@page import="java.sql.PreparedStatement"%>
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
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <h1 id="titulo">GIMNASIO "..."</h1>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");

        %>
        <div id="contenedorLogin"><div id="tituLog">Login</div>
            <div id="errorLogin">Datos erroneos, contacte con el administrador del
                sistema en caso de falta de credenciales. Clicka aquí si quieres más información.</div>
            <form method="get" action="validar.jsp" class="form-horizontal">
                <div class="form-group">
                    <input type="text" class="form-control" name="usuEnc" placeholder="Usuario" id="inputLogin"
                           required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="conEnc" placeholder="Contraseña" id="inputLogin"
                           required>
                </div>
                <button type="submit" class="btn btn-default btn-sm">Entrar</button>
            </form>
        </div>
        
        <div id="goInfoContenedor"><div>Si eres cliente y quieres información sobre las actividades del gimnasio y
                ejercicios disponibles</div>
            <a id="enlaceInfo" href="indexInfo.jsp" class="btn btn-primary btn-lg active" role="button">
            Información
            </a>
        </div>
        <%try {
              String validacion = request.getParameter("validacion");
              if (validacion.equals("false")) {%>
        <script>document.getElementById("errorLogin").style.opacity = 1;
            document.getElementById("errorLogin").style.display = "block";</script>
            <%}
            } catch (Exception ex) {

            }%>
    </body>
    <script>

        document.getElementById("errorLogin").onclick = function () {
            document.getElementById("errorLogin").style.opacity = 0;
            document.getElementById("errorLogin").style.display = "none";
            document.location = "mensajeError.jsp";
        };

    </script>
</html>
