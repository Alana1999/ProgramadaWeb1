<%-- 
    Document   : register
    Created on : 29/06/2020, 12:51:02 PM
    Author     : Alana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
         <link rel="stylesheet" type="text/css" href="css/Desing.css">
         
    </head>
    <body>
        <form class="form" method="post" action="userregis?action=create">  
        <h1>Registrarse</h1>
        <div class="container">
            <div class="input-container">
                <label>Nombre:</label>
                <input type="text" name="name" placeholder="Nombre" required pattern="[A-Za-z]{3,50}"/><br>
           </div>
            <div class="input-container">
                <label>Apellido: </label>
                <input type="text" name="lastname" placeholder="Apellido" required pattern="[A-Za-z]{3,50}"/><br>
            </div>
            
        </div>
        
    </body>
</html>
