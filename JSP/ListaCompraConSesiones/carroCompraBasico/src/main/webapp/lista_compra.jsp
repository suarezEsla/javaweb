<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
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

//ArrayList permite ir almacenando datos dentro paulatinamente
//Declaración de ArrayList (Importar paquetes java.util.*)


/**Cuando entra por primera vez el usuario, lee y ve que no existeninguna sesión con el nombre 'misElementos',(lo ve con getAttribute('misElementos')), ,por lo que ListaElementos==null, entonces
salta a la siguiente línea e inicia el ArrayList, y crea la sesión con session.setAttribute(nombredelasesion,ArrayList).*/
List<String> ListaElementos = (List<String>) session.getAttribute("misElementos");

//Establecimiento de sesión

if(ListaElementos == null){
	ListaElementos = new ArrayList<String>();
	session.setAttribute("misElementos",ListaElementos);
}




String[] elementos = request.getParameterValues("articulos");


//Foreach que recorre el array que se ha formado al recoger el valor del checkbox con getParameterValues
//Lo recorremos con la temporal elemTemp y luego lo mostramos dentro de una lista. 
if(elementos != null){
	
	for(String elemTemp : elementos){
		
		//out.println("<li>"+ elemTemp + "</li>");
		
		//Agregar los elementos del array al ArrayList
		
		ListaElementos.add(elemTemp);
	}
}

for(String elemTemp : ListaElementos){
	
	out.println("<li>"+ elemTemp + "</li>");
	
}


%>
</ul>


</body>
</body>
</html>