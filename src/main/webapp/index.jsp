<%-- 
    Document   : index
    Created on : 11 jun. 2023, 10:53:16
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
        <form class="container" action="login">
            <table>
                <tr>
                    <td>Usuario:</td>
                    <td><input type="text" name="txtuser"></td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td><input type="text" name="txtpass"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Ingresar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
