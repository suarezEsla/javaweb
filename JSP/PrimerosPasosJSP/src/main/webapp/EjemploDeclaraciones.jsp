<html>
<body>
<h1 style='text-align:center'>Ejemplo declaraciones</h1>

<br><br>

<!-- Declaraci�n de m�todos: -->
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
Multiplicaci�n: <%=metodoMultiplica(7,2) %>





</body>
</html>