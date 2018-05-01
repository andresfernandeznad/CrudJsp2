<%-- 
    Document   : mensajeError
    Created on : 11-abr-2018, 20:04:26
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
        <div id="mensajeFaltaCred">Este sitio web está orientado a gestionar y administrar
            el gimnasio "..." si usted no es administrador o encargado no tendrá
            credenciales para entrar, en el caso de que si sea encargado 
            y no se le haya dado de alta hable con el administrador del sitio web
             para añadirlo a la base de datos y así darle de alta como usuario 
            encargado y ya así poder gestionar el sitio web.</div>
        <a id="enlaces" href="index.jsp" class="btn btn-primary btn-lg active" role="button">
            Volver a la pantalla de login
        </a>
    </body>
</html>
