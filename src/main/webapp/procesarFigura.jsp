<%-- 
    Document   : procesarFigura
    Created on : 10 jun. 2024, 5:21:41 a. m.
    Author     : Daniel
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado de la Figura</title>
</head>
<body>
    <h1>Resultado de la Figura</h1>

    <%
        String strValor1 = request.getParameter("valor1");
        String strValor2 = request.getParameter("valor2");
        String strValor3 = request.getParameter("valor3");
        String strValor4 = request.getParameter("valor4");

        double[] valores = new double[4];
        valores[0] = strValor1.isEmpty() ? 0 : Double.parseDouble(strValor1);
        valores[1] = strValor2.isEmpty() ? 0 : Double.parseDouble(strValor2);
        valores[2] = strValor3.isEmpty() ? 0 : Double.parseDouble(strValor3);
        valores[3] = strValor4.isEmpty() ? 0 : Double.parseDouble(strValor4);

        int contadorValores = 0;
        for (double valor : valores) {
            if (valor > 0) {
                contadorValores++;
            }
        }

        if (contadorValores == 1) {
            double radio = 0;
            for (double valor : valores) {
                if (valor > 0) {
                    radio = valor;
                    break;
                }
            }
            double diametro = 2 * radio;
            double circunferencia = 2 * Math.PI * radio;
            double area = Math.PI * Math.pow(radio, 2);
            %>
            <p>Figura: Círculo</p>
            <p>Radio: <%= radio %></p>
            <p>Diámetro: <%= diametro %></p>
            <p>Circunferencia: <%= circunferencia %></p>
            <p>Área: <%= area %></p>
            <%
        } else if (contadorValores == 3) {
            double a = valores[0], b = valores[1], c = valores[2];
            String tipoTriangulo = "";
            if (a == b && b == c) {
                tipoTriangulo = "Equilátero";
            } else if (a == b || a == c || b == c) {
                tipoTriangulo = "Isósceles";
            } else {
                tipoTriangulo = "Escaleno";
            }
            double s = (a + b + c) / 2;
            double area = Math.sqrt(s * (s - a) * (s - b) * (s - c));
            %>
            <p>Figura: Triángulo <%= tipoTriangulo %></p>
            <p>Lado a: <%= a %></p>
            <p>Lado b: <%= b %></p>
            <p>Lado c: <%= c %></p>
            <p>Área: <%= area %></p>
            <%
        } else if (contadorValores == 4) {
            boolean esCuadrado = true;
            for (int i = 1; i < 4; i++) {
                if (valores[i] != valores[0]) {
                    esCuadrado = false;
                    break;
                }
            }
            if (esCuadrado) {
                double lado = valores[0];
                double perimetro = 4 * lado;
                double area = Math.pow(lado, 2);
                %>
                <p>Figura: Cuadrado</p>
                <p>Lado: <%= lado %></p>
                <p>Perímetro: <%= perimetro %></p>
                <p>Área: <%= area %></p>
                <%
            } else {
                double largo = valores[0];
                double ancho = valores[1];
                double perimetro = 2 * (largo + ancho);
                double area = largo * ancho;
                %>
                <p>Figura: Rectángulo</p>
                <p>Largo: <%= largo %></p>
                <p>Ancho: <%= ancho %></p>
                <p>Perímetro: <%= perimetro %></p>
                <p>Área: <%= area %></p>
                <%
            }
        } else {
            %>
            <p>Por favor, introduzca los valores correctamente.</p>
            <%
        }
    %>
</body>
</html>

