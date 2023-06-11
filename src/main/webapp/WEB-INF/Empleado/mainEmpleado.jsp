<%-- 
    Document   : mainEmpleado
    Created on : 11 jun. 2023, 10:59:58
    Author     : Brian
--%>

<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>CRUD Empleados</h3>
        <div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido paterno</th>
                    <th>Apellido materno</th>
                    <th>Cargo</th>
                    <th colspan="2"><a href="viewcreateE">Crear</a></th>
                </tr>
                <%
                    ArrayList<Empleado> listaEmpleados = new EmpleadoDAO().tolist();
                    for (Empleado e : listaEmpleados) {
                %>
                <tr>
                    <td><%=e.getIdempleado()%></td>
                    <td><%=e.getNombre()%></td>
                    <td><%=e.getApaterno()%></td>
                    <td><%=e.getAmaterno()%></td>
                    <td><%=e.getCargo()%></td>
                    <td><a href="viewupdateE?id=<%=e.getIdempleado()%>">Editar</a></td>
                    <td><a href="viewdeleteE?id=<%=e.getIdempleado()%>">Eliminar</a></td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
