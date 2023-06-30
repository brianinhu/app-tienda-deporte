<%-- 
    Document   : updateArticulo
    Created on : 22 jun. 2023, 06:07:28
    Author     : Brian
--%>

<%@page import="tienda.modelo.dao.CategoriaDAO"%>
<%@page import="tienda.modelo.bean.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Articulo"%>
<%@page import="tienda.modelo.dao.ArticuloDAO"%>
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
                <li><a href="mainArticulo">Sección artículos</a></li>
                <li><a href="#">Sección clientes</a></li>
                <li><a href="#">Sección pedidos</a></li>
            </ul>
        </nav>
        <section>
            <%
                int idarticulo = Integer.parseInt(request.getParameter("id"));
                Articulo a = new Articulo();
                a.setIdarticulo(idarticulo);
                a = new ArticuloDAO().read(a);

                Categoria categoria = new Categoria();
                categoria.setIdcategoria(a.getIdcategoria());
                categoria = new CategoriaDAO().read(categoria);
            %>
            <section>
                <form class="form form-control container" action="updateA" method="post">
                    <h2>EDICIÓN DE ARTÍCULOS</h2>
                    <input type="hidden" name="txtidarticulo" value="<%=a.getIdarticulo()%>">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput1" name="txtnombre" placeholder="@" value="<%=a.getNombre()%>">
                        <label for="floatingInput1">Nombre</label>
                    </div>
                    <div class="form-floating mb-3">
                        <select id="cbxCategoria1" class="form-select" name="cbxCategoria">
                            <option value="<%=categoria.getIdcategoria()%>" selected hidden><%=categoria.getCategoria()%></option>
                            <%
                                ArrayList<Categoria> listaCategoria = new CategoriaDAO().tolist();
                                for (Categoria c : listaCategoria) {
                            %>
                            <option value="<%=c.getIdcategoria()%>"><%=c.getCategoria()%></option>
                            <%}%>
                        </select>
                        <label for="cbxCategoria1">Categoría</label>
                    </div>
                    <div class="form-floating mb-3">
                        <textarea class="form-control" id="floatingInput2" name="txtdescripcion"><%=a.getDescripcion()%></textarea>
                        <label for="floatingInput2">Descripción</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput3" name="txtprecio" placeholder="@" value="<%=a.getPrecio()%>">
                        <label for="floatingInput3">Precio</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput4" name="txtfoto" placeholder="@" value="<%=a.getFoto()%>">
                        <label for="floatingInput4">Foto</label>
                    </div>
                    <div class="d-flex justify-content-center">
                        <input class="btn btn-success" type="submit" value="Actualizar">
                    </div>
                </form>
            </section>
    </body>
</html>