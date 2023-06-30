<%-- 
    Document   : updateEmpleado
    Created on : 11 jun. 2023, 11:27:39
    Author     : Brian
--%>

<%@page import="tienda.modelo.bean.Usuario"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;500;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <style>
            body {
                font-family: 'Poppins', sans-serif;
            }

            header {
                background-color: darkkhaki;
                text-align: center;
                padding: 1rem;
                color: #fff;
                font-weight: bold;
            }

            #nav1 {
                display: flex;
                justify-content: space-around;
                padding: 0.5rem 0;
                background-color: darkcyan;
                color: #fff;
            }

            #nav1 a {
                text-decoration: none;
                color: #fff;
            }

            ul {
                display: flex;
                justify-content: center;
                align-items: center;
                list-style-type: none;
                padding: 0;
                margin: 0;
                background-color: #b3daff;
            }

            ul a {
                display: inline-block;
                text-decoration: none;
                color: #fff;
                padding: 0.5rem;
                background-color: #b3daff;
            }

            ul a:hover {
                background-color: #0084ff;
            }
        </style>
    </head>
    <body>
        <%
            Usuario usuario = (Usuario) request.getSession().getAttribute("owner");
            Empleado empleado = new Empleado(usuario.getIdempleado(), "", "", "", "");
            empleado = new EmpleadoDAO().read(empleado);
        %>
        <header>Administración de la tienda deporte</header>
        <nav id="nav1">
            <span><i class="bi bi-person-circle"></i> <%=empleado.getNombre()%> <%=empleado.getApaterno()%></span>
            <span><i class="bi bi-briefcase-fill"></i> <%=empleado.getCargo()%>
            </span><span><a href="logout"><i class="bi bi-box-arrow-left"></i> Cerrar sesión</a></span>
        </nav>
        <nav id="nav2">
            <ul>
                <li><a href="mainEmpleado">Sección empleados</a></li>
                <li><a href="mainArticulo">Sección articulos</a></li>
                <li><a href="#">Sección clientes</a></li>
                <li><a href="#">Sección pedidos</a></li>
            </ul>
        </nav>

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
