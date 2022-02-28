<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="Formulario_Compra" action="lista_compra.jsp">
<p>Artículos a comprar: </p>
<p>
<label>
<input type="checkbox" name="articulos" value="Agua">Agua
</label>
<br>


<label>
<input type="checkbox" name="articulos" value="Leche">Leche
</label>
<br>

<label>
<input type="checkbox" name="articulos" value="Pan">Pan
</label>
<br>

<label>
<input type="checkbox" name="articulos" value="Manzanas">Manzanas
</label>
<br>

<label>
<input type="checkbox" name="articulos" value="Carne">Carne
</label>
<br>

<label>
<input type="checkbox" name="articulos" value="Pescado">Pescado
</label>
<br>
</p>

<p><input type="submit" name="button" id="button" value="Enviar"><br></p>
</form>

<h2>Carro de la compra: </h2>
<ul>
<%

String[] elementos = request.getParameterValues("articulos");


//Foreach que recorre el array que se ha formado al recoger el valor del checkbox con getParameterValues
//Lo recorremos con la temporal elemTemp y luego lo mostramos dentro de una lista. 
if(elementos != null){
	
	for(String elemTemp : elementos){
		
		out.println("<li>"+ elemTemp + "</li>");
	}
}


%>
</ul>


</body>
</body>
</html>