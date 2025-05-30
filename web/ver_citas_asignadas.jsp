<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("idUsuario") == null || !"especialista".equals(session.getAttribute("rol"))) {
        response.sendRedirect("login.jsp");
        return;
    }
    String nombreEspecialista = (String) session.getAttribute("nombre");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citas Asignadas</title>
    <link rel="icon" href="imagenes/Logo.svg" type="image/svg+xml">
    <link rel="stylesheet" href="css/estilos_citas_asignadas.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h1>Citas Asignadas a <%= nombreEspecialista %></h1>

    <div>
        <c:if test="${not empty error}">
            <div class='alert alert-danger'>${error}</div>
        </c:if>

        <c:if test="${not empty citasAsignadas}">
            <table class="table-citas-asignadas">
                <thead>
                    <tr>
                        <th>Fecha y Hora</th>
                        <th>Paciente</th>
                        <th>Especialidad</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cita" items="${citasAsignadas}">
                        <tr>
                            <td data-label="Fecha y Hora">${cita.fechaHora}</td>
                            <td data-label="Paciente">${cita.nombrePaciente}</td>
                            <td data-label="Especialidad">${cita.especialidad}</td>
                            <td data-label="Estado">${cita.estado}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty citasAsignadas and empty error}">
            <p>No tienes citas pendientes o en proceso.</p>
        </c:if>
    </div>

    <br>
    <a href="menu_especialista.jsp" class="btn-back" title="Volver al menú del especialista"></a>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>