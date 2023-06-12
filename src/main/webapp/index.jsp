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
        <style>
            body {
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .container {
                margin: 0;
                padding: 1rem;
                width: 500px;
                height: 500px;
                border: 1px solid black;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .table {
                border: transparent;
                margin: 0;
            }

            p {
                margin-top: 1rem;
                margin-bottom: 1rem;
            }
            
            .pcenter {
                text-align: center;
            }
            
            #divimg {
                width: 100px;
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        <form class="container" action="login" method="post">
            <div class="row">
                <p class="pcenter">Log in</p>
                <div id="divimg"><img src="https://www.freeiconspng.com/uploads/user-login-icon-29.png" alt="imagen" width="100"/></div>
                <p>Usuario:</p>
                <p><input type="text" name="txtuser"></p>
                <p>Contraseña:</p>
                <p><input type="password" name="txtpass"></p>
                <p class="pcenter"><input class="btn btn-primary" type="submit" value="Ingresar"></p>
            </div>
        </form>
    </body>
</html>
