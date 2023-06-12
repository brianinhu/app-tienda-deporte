<%-- 
    Document   : main
    Created on : 12 jun. 2023, 11:08:38
    Author     : Brian
--%>

<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Usuario usuario = (Usuario) request.getAttribute("owner");
            Empleado empleado = new Empleado(usuario.getIdempleado(), "", "", "", "");
            empleado = new EmpleadoDAO().read(empleado);
        %>
        <p>Administración de la tienda deporte</p>
        <div><span><%=empleado.getNombre()%> <%=empleado.getApaterno()%></span><span><%=empleado.getCargo()%></span><span><a href="logout">Cerrar sesión</a></span></div>
        <ul>
            <li><a href="mainEmpleado">Sección empleados</a></li>
            <li><a href="#">Sección articulos</a></li>
            <li><a href="#">Sección clientes</a></li>
            <li><a href="#">Sección pedidos</a></li>
        </ul>
    </body>
</html>
