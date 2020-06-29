<%@page import="DAO.arrayList.AlumnoDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Alumno"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Listar</title>
    </head>
    <body>
        <div class="container">
            <h1>Alumnos</h1>
            <a class="btn btn-success" href="Controlador?accion=agregar">Agregar un Nuevo Alumno</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                    </tr>
                </thead>
                <%
                    AlumnoDAO dao = new AlumnoDAO();
                    List<Alumno> list = dao.listar();
                    Iterator<Alumno> i = list.iterator();
                    Alumno a = null;
                    while (i.hasNext()) {
                        a = i.next();
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=a.getId()%></td>
                        <td class="text-center"><%=a.getNombre()%></td>
                        <td><%=a.getApellidos()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= a.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= a.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
