<%-- 
    Document   : login_admin
    Created on : 3/05/2025, 11:52:28 a. m.
    Author     : javie
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Administrador</title>
    <link rel="stylesheet" href="css/estilosLogin.css">
    <link rel="icon" href="imagenes/Logo.png" type="image/png">
</head>
<body>
    <div class="cuerpoFormulario">
        <h1>Administrador</h1>
        <form class="formularioAdmin" id="formularioAdmin" method="post" action="InicioSesionAdmin">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="txtUsuario" placeholder="Ingrese su usuario" required />

            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="txtContrasena" placeholder="Ingrese su contraseña" required />

            <div class="buttonGroup">
                <input type="submit" value="Iniciar Sesión" class="btn">
                <input type="button" value="Borrar Datos" class="btn" onclick="resetearFormularioLogin()">
            </div>
        </form>
    </div>

    <script>
        function resetearFormulario() {
            document.getElementById('formularioAdmin').reset();
        }
    </script>
    <a href="index.html" class="btn-atras" title="Volver al inicio"></a>
</body>
</html>
