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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;500;700;900&display=swap" rel="stylesheet">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

            .table {
                text-align: center;
                vertical-align: middle;
                margin: 0;
                padding-bottom: 3rem;
            }

            h2 {
                text-align: center;
                font-weight: 700;
                margin: 0;
                padding: 1rem 0;
            }

            .container {
                padding-bottom: 1rem;
            }

            #logout {
                background-color: red;
                border: 5px solid red;
                border-radius: 5px;
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
            <span><i class="bi bi-briefcase-fill"></i> <%=empleado.getCargo()%></span>
            <span><a id="logout" href="logout"><i class="bi bi-box-arrow-left"></i> Cerrar sesión</a></span>
        </nav>
        <nav id="nav2">
            <ul>
                <li><a href="mainEmpleado">Sección empleados</a></li>
                <li><a href="mainArticulo">Sección articulos</a></li>
            </ul>
        </nav>
        <section>
            <div class="container table-responsive">
                <h2>LISTA DE EMPLEADOS</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido paterno</th>
                        <th>Apellido materno</th>
                        <th>Cargo</th>
                        <th colspan="2"><a class="btn btn-success d-grid" href="viewcreateE"><i class="bi bi-person-plus-fill"></i></a></th>
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
                        <td><a class="btn btn-primary d-grid" href="viewupdateE?id=<%=e.getIdempleado()%>"><i class="bi bi-pencil-square"></i></a></td>
                        <td><a class="btn btn-danger d-grid" href="deleteE?id=<%=e.getIdempleado()%>" onclick="return confirmacion()"><i class="bi bi-trash3-fill"></i></a></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </section>
        <script>

            function confirmacion() {
                if (confirm("¿Está seguro que desea eliminar al empleado?")) {
                    alert("¡Empleado eliminado correctamente!");
                    return true;
                }
                return false;
            }

            /*
             function confirmacion() {
             swal({
             title: "Está seguro que desea eliminar?",
             icon: "warning",
             buttons: true,
             dangerMode: true
             })
             .then((willDelete) => {
             if (willDelete) {
             return true;
             }
             });
             return false;
             }
             */

        </script>
    </body>
</html>
