<%-- 
    Document   : updateEmpleado
    Created on : 11 jun. 2023, 11:27:39
    Author     : Brian
--%>

<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int idempleado = Integer.parseInt(request.getParameter("id"));
        Empleado e = new Empleado();
        e.setIdempleado(idempleado);
        e = new EmpleadoDAO().read(e);
        %>
        <h3>Actualice los datos del empleado</h3>
        <form class="container" action="updateE" method="post">
            <input type="hidden" name="txtidempleado" value="<%=e.getIdempleado()%>">
            <table>    
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txtnombre" value="<%=e.getNombre()%>"></td>
                </tr>
                <tr>
                    <td>Apellido paterno: </td>
                    <td><input type="text" name="txtapaterno" value="<%=e.getApaterno()%>"></td>
                </tr>
                <tr>
                    <td>Apellido materno: </td>
                    <td><input type="text" name="txtamaterno" value="<%=e.getAmaterno()%>"></td>
                </tr>
                <tr>
                    <td>Cargo: </td>
                    <td><input type="text" name="txtcargo" value="<%=e.getCargo()%>"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Actualizar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
