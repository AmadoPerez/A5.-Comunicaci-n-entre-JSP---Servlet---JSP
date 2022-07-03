<%-- 
    Document   : ObjetoJSP
    Created on : 10/06/2022, 05:33:02 PM
    Author     : Privado
--%>
<%@page import="mi_paquete.Alumno"%>
<%@page import="servlet.SProcesar"%>
<%! 
    Alumno dato[]=new Alumno[10]; 
 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css">
         
        
    </head>
    <body>
           <!--FORMULARIO---->
           <form class="form" method="POST" action="SProcesar">
              
        <!--TITULO------------------------>
        <h1 class="titulo">Registros de Alumnos</h1>

        <!--CAJAS-DE-ENTRADA-DE-DATOS------------------------------------------------>
        <input class="txfMatricula" name="txfMatricula" type="text" placeholder="Matricula" required maxlength="30">
        <input class="txfNombre"    name="txfNombre" type="text" placeholder="Nombre" required maxlength="30">
        <input class="txfApellidoP" name="txfApellidoP" type="text" placeholder="ApellidoP" required maxlength="30">
        <input class="txfApellidoM" name="txfApellidoM" type="text" placeholder="ApellidoM" required maxlength="30">
        <input class="txfDDI"       name="txfDDI" type="number" placeholder="DDI" required maxlength="30">
        <input class="txfDWI"       name="txfDWI" type="number" placeholder="DWI" required maxlength="30">
        <input class="txfECBD"      name="txfECBD" type="number" placeholder="ECBD" required maxlength="30">
        <!--BOTON-DE-REGISTRAR-------------------------->
        <input type="submit" class="btnRegistrar" name="btnRegistrar" value="REGISTRAR">


    </form>
           <%
               
               
               if(request.getAttribute("datos")!=null)
               {
                   int cont=Integer.parseInt(request.getAttribute("cont").toString());
                   dato = (Alumno[])request.getAttribute("datos");
                   out.print("<table border='1'>");
                   out.print("<thead>"+
                   "<tr>"+
                    "<th>"+"Matricula"+"</th>"
                    +"<th>"+"Nombre completo"+"</th>"
                    +"<th>"+"ddi"+"</th>"
                    +"<th>"+"dwi"+"</th>"
                    +"<th>"+"ecbd"+"</th>"
                    +"<th>"+"Promedio"+"</th>"
                    +"</tr>"
                    +"</thead>");
               
                    out.print("<h1>"+"Registros!"+"</h1>"+"<tbody>");
               
                     for(int i=0; i<cont; i++)
                        {
                           out.print("<tr>"); 
                           out.print("<td>"+dato[i].getMatricula()+"</td>");
                           out.print("<td>"+dato[i].getNombre()+" "+dato[i].getApellidoP()+" "+dato[i].getApellidoM()+"</td>");
                           out.print("<td>"+dato[i].getDdi()+"</td>");
                           out.print("<td>"+dato[i].getDwi()+"</td>");
                           out.print("<td>"+dato[i].getEcbd()+"</td>");
                           out.print("<td>"+dato[i].getProm()+"</td>");
                           out.print("</tr>"); 
                        }
                   
                    out.print("</tbody>");
                    out.print("</table>");
               }
           %>

            

    </body>
</html>
