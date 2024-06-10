<%-- 
    Document   : index
    Created on : 10 jun. 2024, 5:19:29 a. m.
    Author     : Daniel
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Captura de Figuras</title>
</head>
<body>
    <h1>Introduzca los valores de los lados de la figura</h1>
    <form action="procesarFigura.jsp" method="post">
        <label for="valor1">Valor 1:</label>
        <input type="text" id="valor1" name="valor1"><br><br>
        
        <label for="valor2">Valor 2:</label>
        <input type="text" id="valor2" name="valor2"><br><br>
        
        <label for="valor3">Valor 3:</label>
        <input type="text" id="valor3" name="valor3"><br><br>
        
        <label for="valor4">Valor 4:</label>
        <input type="text" id="valor4" name="valor4"><br><br>
        
        <input type="submit" value="Procesar">
    </form>
</body>
</html>

