<%@ page import="pildorasinformaticas.com.CalculosMatematicos.*" %><!-- Importar paquete con la clase Calculos (.* importa todos -->



<html>
<body>
<h1>Llamada a clases</h1>
<!-- Llamada a clases: paquete.clase.metodo (modo más largo):-->
<!-- 
La suma de 5 y 7 es: <%= pildorasinformaticas.com.CalculosMatematicos.Calculos.metodoSuma(5,7) %>
 -->
 
 
 <!-- Modo más corto: -->
 <br>
 La suma de 5 y 7 es: <%= Calculos.metodoSuma(5,7) %>
 
<br>
La resta de 5 y 7 es: <%= Calculos.metodoResta(5,7) %>
<br>
La multiplicación de 5 y 7 es: <%= Calculos.metodoMultiplica(5,7) %>




</body>
</html>