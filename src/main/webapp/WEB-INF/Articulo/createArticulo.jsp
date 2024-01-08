<%-- 
    Document   : createArticulo
    Created on : 22 jun. 2023, 06:07:22
    Author     : Brian
--%>

<%@page import="tienda.modelo.dao.CategoriaDAO"%>
<%@page import="tienda.modelo.bean.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.bean.Usuario"%>
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

            h2 {
                text-align: center;
                font-weight: 700;
                margin: 0;
                padding: 1rem 0;
            }

            .container {
                margin-top: 1rem;
            }

            .form {
                width: 500px;
                padding: 2rem;
            }

            .btn-success {
                width: 10rem;
            }

            #floatingInput2 {
                height: 95px;
            }

            #floatingInput3 {
                width: 30%;
            }

            #floatingInput4 {
                width: 50%;
            }

            .form-floating {
                color: #6C757D;
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
                <li><a href="mainArticulo">Sección artículos</a></li>
            </ul>
        </nav>
        <section>
            <form class="form form-control container" action="createA" method="post">
                <h2>REGISTRO DE ARTÍCULOS</h2>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput1" name="txtnombre" placeholder="@">
                    <label for="floatingInput1">Nombre</label>
                </div>
                <div class="form-floating mb-3">
                    <select id="cbxCategoria" class="form-select" name="cbxCategoria">
                        <%
                            ArrayList<Categoria> listaCategoria = new CategoriaDAO().tolist();
                            for (Categoria c : listaCategoria) {
                        %>
                        <option value=<%=c.getIdcategoria()%>><%=c.getCategoria()%></option>
                        <%}%>
                    </select>
                    <label for="cbxCategoria">Categoría</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" id="floatingInput2" name="txtdescripcion"></textarea>
                    <label for="floatingInput2">Descripción</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput3" name="txtprecio" placeholder="@">
                    <label for="floatingInput3">Precio</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput4" name="txtfoto" placeholder="@">
                    <label for="floatingInput4">Foto</label>
                </div>
                <div class="d-flex justify-content-center">
                    <input class="btn btn-success" type="submit" value="Agregar">
                </div>
            </form>
        </section>
    </body>
</html>
