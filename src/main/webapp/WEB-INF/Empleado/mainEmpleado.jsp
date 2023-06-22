<%-- 
    Document   : mainEmpleado
    Created on : 11 jun. 2023, 10:59:58
    Author     : Brian
--%>

<%@page import="tienda.modelo.bean.Usuario"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <style>
            header {
                background-color: darkkhaki;
                text-align: center;
                padding: 1rem;
                color: #fff;
                font-weight: bold;
            }
            
            nav {
                display: flex;
                justify-content: space-around;
                padding: 0.5rem 0;
                background-color: darkcyan;
                color: #fff;
            }
            
            nav a {
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
            
            .table {
                text-align: center;
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
        <nav><span><%=empleado.getNombre()%> <%=empleado.getApaterno()%></span><span><%=empleado.getCargo()%></span><span><a href="logout">Cerrar sesión</a></span></nav>
        <section>
            <ul>
                <li><a href="mainEmpleado">Sección empleados</a></li>
                <li><a href="mainArticulo">Sección articulos</a></li>
                <li><a href="#">Sección clientes</a></li>
                <li><a href="#">Sección pedidos</a></li>
            </ul>
        </section>
        
        <div class="container">
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido paterno</th>
                    <th>Apellido materno</th>
                    <th>Cargo</th>
                    <th colspan="2"><a class="btn btn-warning"href="viewcreateE">Crear</a></th>
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
                    <td><a class="btn btn-primary" href="viewupdateE?id=<%=e.getIdempleado()%>">Editar</a></td>
                    <td><a class="btn btn-danger" href="viewdeleteE?id=<%=e.getIdempleado()%>">Eliminar</a></td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
