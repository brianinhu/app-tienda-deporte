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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;500;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <style>
            body {
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                font-family: 'Poppins', sans-serif;
            }

            .container {
                margin: 0;
                padding: 1rem;
                width: 500px;
                height: 500px;
                border-radius: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #00e6ac;
            }

            .table {
                border: transparent;
                margin: 0;
            }

            p {
                margin: 0;
                padding: 0.5rem 0;
            }

            .center {
                text-align: center;
            }
            
            #img {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .row {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            input {
                width: inherit;
            }

            #msjError {
                color: red;
            }
            
            .input-group {
                width: 300px;
            }
            
            .btn {
                width: 59%;
            }
            
            h3 {
                color: #FFF;
                font-weight: 700;
            }
            
        </style>
    </head>
    <body>
        <%
            String mensajeError = (String) request.getAttribute("msg");
        %>
        <form class="container" action="login" method="post">
            <div class="row">
                <h3 class="center">INICIO DE SESIÓN</h3>
                <div id="img"><img width="100" src="img/loginimage.png" alt="imagen"/></div>
                <div class="input-group flex-nowrap mt-3">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-person-circle"></i></span>
                    <input type="text" name="txtuser" class="form-control" placeholder="Usuario" aria-label="Username" aria-describedby="addon-wrapping">
                </div>
                <div class="input-group flex-nowrap mt-3">
                    <span class="input-group-text" id="addon-wrapping"><i class="bi bi-key-fill"></i></span>
                    <input type="password" name="txtpass" class="form-control" placeholder="Contraseña" aria-label="Username" aria-describedby="addon-wrapping">
                </div>
                <p class="center"><input class="btn btn-primary mt-3" type="submit" value="Ingresar"></p>
                <p class="center" id="msjError"><%=mensajeError != null ? mensajeError : ""%></p>
            </div>
        </form>
    </body>
</html>
