<%-- 
    Document   : createEmpleado
    Created on : 11 jun. 2023, 11:27:30
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Ingrese los datos del nuevo empleado</h3>
        <form class="container" action="createE" method="post">
            <table>
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txtnombre"></td>
                </tr>
                <tr>
                    <td>Apellido paterno: </td>
                    <td><input type="text" name="txtapaterno"></td>
                </tr>
                <tr>
                    <td>Apellido materno: </td>
                    <td><input type="text" name="txtamaterno"></td>
                </tr>
                <tr>
                    <td>Cargo: </td>
                    <td><input type="text" name="txtcargo"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Crear"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
