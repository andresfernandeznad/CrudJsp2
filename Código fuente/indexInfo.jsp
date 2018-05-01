<%-- 
    Document   : indexEncargado
    Created on : 10-abr-2018, 20:00:01
    Author     : andresillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
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
        <button id="botonInfoAct" class="btn btn-default btn-default">Actividades</button>
        <button id="botonInfoMus" class="btn btn-default btn-default">Musculación</button>
        
        <button id="botonInfoEje" class="btn btn-default btn-default">Pecho</button>
        <button id="botonInfoEje1" class="btn btn-default btn-default">Espalda</button>
        <button id="botonInfoEje2" class="btn btn-default btn-default">Bíceps</button>
        <button id="botonInfoEje3" class="btn btn-default btn-default">Tríceps</button>
        <button id="botonInfoEje4" class="btn btn-default btn-default">Piernas</button>
        <button id="botonInfoEje5" class="btn btn-default btn-default">Hombros</button>
        
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");
          Connection conexion2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/gimnasio", "root", "");

          PreparedStatement ps = conexion.prepareStatement("SELECT * FROM actividad");
          ResultSet listarInfoAct = ps.executeQuery("SELECT * FROM actividad");
          PreparedStatement ps2 = conexion2.prepareStatement("SELECT * FROM ejercicios");
          ResultSet guardarInfoEje = ps2.executeQuery("SELECT * FROM ejercicios");
          
          List <String> lista1 = new ArrayList();
          List <String> lista2 = new ArrayList();
          List <String> lista3 = new ArrayList();
          List <String> lista4 = new ArrayList();
          List <String> lista5 = new ArrayList();
          List <String> lista6 = new ArrayList();

          Map <Integer,List> m = new HashMap();
        %>
        <table id="infoTablaAct">
            <tr><th>Código Actividad</th><th>Nombre de Actividad</th><th>Descripción de actividad</th></tr>
        <%
          while (listarInfoAct.next()) {
            out.println("<tr><td>");
            out.println(listarInfoAct.getString("CodAct") + "</td>");
            out.println("<td>" + listarInfoAct.getString("NomAct") + "</td>");
            out.println("<td>" + listarInfoAct.getString("DescAct") + "</td>");
          }%>
            

        </tr>
        </table>
          
          <%
          while (guardarInfoEje.next()) {
            if (guardarInfoEje.getString("codMus").equals("1")) {
              lista1.add(guardarInfoEje.getString("nomEje"));
            } else if (guardarInfoEje.getString("codMus").equals("2")) {
              lista2.add(guardarInfoEje.getString("nomEje"));
            } else if (guardarInfoEje.getString("codMus").equals("3")) {
              lista3.add(guardarInfoEje.getString("nomEje"));
            } else if (guardarInfoEje.getString("codMus").equals("4")) {
              lista4.add(guardarInfoEje.getString("nomEje"));
            } else if (guardarInfoEje.getString("codMus").equals("5")) {
              lista5.add(guardarInfoEje.getString("nomEje"));
            } else if (guardarInfoEje.getString("codMus").equals("6")) {
              lista6.add(guardarInfoEje.getString("nomEje"));
            }
          }
          
            m.put(1, lista1);
            m.put(2, lista2);
            m.put(3, lista3);
            m.put(4, lista4);
            m.put(5, lista5);
            m.put(6, lista6);
            %>
            
            <table id="infoTablaEje">
            <tr><th>Nombre Ejercicio</th></tr>
            
            <%
              //Piernas
          int tam = m.get(1).size();
          
          for (int i = 0; i < tam; i++) {
            out.println("<tr><td>");
            out.println(m.get(1).get(i) + "</td>");
          }%>
        
            </tr>

        
        </table>
          
          <table id="infoTablaEje1">
            <tr><th>Nombre Ejercicio</th></tr>
            
            <%
              //Espalda
          tam = m.get(2).size();
          
          for (int i = 0; i < tam; i++) {
            out.println("<tr><td>");
            out.println(m.get(2).get(i) + "</td>");
          }%>
        
            </tr>

        
        </table>
          
          <table id="infoTablaEje2">
            <tr><th>Nombre Ejercicio</th></tr>
            
            <%
              //Pecho
          tam = m.get(3).size();
          
          for (int i = 0; i < tam; i++) {
            out.println("<tr><td>");
            out.println(m.get(3).get(i) + "</td>");
          }%>
        
            </tr>

        
        </table>
          
          <table id="infoTablaEje3">
            <tr><th>Nombre Ejercicio</th></tr>
            
            <%
              //Tríceps
          tam = m.get(4).size();
          
          for (int i = 0; i < tam; i++) {
            out.println("<tr><td>");
            out.println(m.get(4).get(i) + "</td>");
          }%>
        
            </tr>

        
        </table>
          
          <table id="infoTablaEje4">
            <tr><th>Nombre Ejercicio</th></tr>
            
            <%
              //Bíceps
          tam = m.get(5).size();
          
          for (int i = 0; i < tam; i++) {
            out.println("<tr><td>");
            out.println(m.get(5).get(i) + "</td>");
          }%>
        
            </tr>

        
        </table>
          
          <table id="infoTablaEje5">
            <tr><th>Nombre Ejercicio</th></tr>
            
            <%
              //Hombros
          tam = m.get(6).size();
          
          for (int i = 0; i < tam; i++) {
            out.println("<tr><td>");
            out.println(m.get(6).get(i) + "</td>");
          }%>
        
            </tr>

        
        </table>
          
          <a id="enlaces" href="index.jsp" class="btn btn-primary btn-lg active" role="button">
            Volver a la pantalla de login
        </a>
    </body>
    <script>

        var mostrarAct = 0;
        var mostrarMus = 0;
        var mostrarEje = 0;
        document.getElementById("botonInfoAct").onclick = function clickAct () {
            if (mostrarAct === 0) {
                document.getElementById("infoTablaAct").style.display = "block";
                document.getElementById("botonInfoEje").style.display = "none";
                document.getElementById("botonInfoEje1").style.display = "none";
                document.getElementById("botonInfoEje2").style.display = "none";
                document.getElementById("botonInfoEje3").style.display = "none";
                document.getElementById("botonInfoEje4").style.display = "none";
                document.getElementById("botonInfoEje5").style.display = "none";
                document.getElementById("infoTablaEje").style.display = "none";
                document.getElementById("infoTablaEje1").style.display = "none";
                document.getElementById("infoTablaEje2").style.display = "none";
                document.getElementById("infoTablaEje3").style.display = "none";
                document.getElementById("infoTablaEje4").style.display = "none";
                document.getElementById("infoTablaEje5").style.display = "none";
                mostrarAct = 1;
            } else {
               document.getElementById("infoTablaAct").style.display = "none";
               mostrarAct = 0; 
            }
        };
        
        document.getElementById("botonInfoMus").onclick = function clickMus () {
            if (mostrarMus === 0) {
                document.getElementById("botonInfoEje").style.display = "inline";
                document.getElementById("botonInfoEje1").style.display = "inline";
                document.getElementById("botonInfoEje2").style.display = "inline";
                document.getElementById("botonInfoEje3").style.display = "inline";
                document.getElementById("botonInfoEje4").style.display = "inline";
                document.getElementById("botonInfoEje5").style.display = "inline";
                document.getElementById("infoTablaAct").style.display = "none";
                mostrarMus = 1;
            } else {
               document.getElementById("botonInfoEje").style.display = "none";
               document.getElementById("botonInfoEje1").style.display = "none";
                document.getElementById("botonInfoEje2").style.display = "none";
                document.getElementById("botonInfoEje3").style.display = "none";
                document.getElementById("botonInfoEje4").style.display = "none";
                document.getElementById("botonInfoEje5").style.display = "none";
                document.getElementById("infoTablaEje").style.display = "none";
                document.getElementById("infoTablaEje1").style.display = "none";
                document.getElementById("infoTablaEje2").style.display = "none";
                document.getElementById("infoTablaEje3").style.display = "none";
                document.getElementById("infoTablaEje4").style.display = "none";
                document.getElementById("infoTablaEje5").style.display = "none";
               mostrarMus = 0; 
            }
        };
        
        document.getElementById("botonInfoEje").onclick = function () {
            if (mostrarEje === 0) {
                document.getElementById("infoTablaEje2").style.display = "block";
                mostrarEje = 1;
            } else {
               document.getElementById("infoTablaEje2").style.display = "none";
               mostrarEje = 0; 
            }
        };
        
        document.getElementById("botonInfoEje1").onclick = function () {
            if (mostrarEje === 0) {
                document.getElementById("infoTablaEje1").style.display = "block";
                mostrarEje = 1;
            } else {
               document.getElementById("infoTablaEje1").style.display = "none";
               mostrarEje = 0; 
            }
        };
        
        document.getElementById("botonInfoEje2").onclick = function () {
            if (mostrarEje === 0) {
                document.getElementById("infoTablaEje4").style.display = "block";
                mostrarEje = 1;
            } else {
               document.getElementById("infoTablaEje4").style.display = "none";
               mostrarEje = 0; 
            }
        };
        
        document.getElementById("botonInfoEje3").onclick = function () {
            if (mostrarEje === 0) {
                document.getElementById("infoTablaEje5").style.display = "block";
                mostrarEje = 1;
            } else {
               document.getElementById("infoTablaEje5").style.display = "none";
               mostrarEje = 0; 
            }
        };
        
        document.getElementById("botonInfoEje4").onclick = function () {
            if (mostrarEje === 0) {
                document.getElementById("infoTablaEje").style.display = "block";
                mostrarEje = 1;
            } else {
               document.getElementById("infoTablaEje").style.display = "none";
               mostrarEje = 0; 
            }
        };
        
        document.getElementById("botonInfoEje5").onclick = function () {
            if (mostrarEje === 0) {
                document.getElementById("infoTablaEje3").style.display = "block";
                mostrarEje = 1;
            } else {
               document.getElementById("infoTablaEje3").style.display = "none";
               mostrarEje = 0; 
            }
        };

    </script>
</html>
