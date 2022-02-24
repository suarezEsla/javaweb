<html>
<body>
<h1 style='text-align:center'>Ejemplo declaraciones</h1>

<br><br>

<!-- Declaración de métodos: -->
<%!

private int resultado;

public int metodoSuma(int num1, int num2){
	resultado=num1+num2;
	
	return resultado;
}




public int metodoResta(int num1, int num2){
	resultado=num1-num2;
	
	return resultado;
}



public int metodoMultiplica(int num1, int num2){
	resultado=num1*num2;
	
	return resultado;
}


%>

Suma: <%= metodoSuma(7,5) %>
<br>
Resta: <%= metodoResta(22,12) %>
<br>
Multiplicación: <%=metodoMultiplica(7,2) %>





</body>
</html>