<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1 style='text-align:center'>Agencia de viajes</h1>


<%

	//Valor por defecto
	
	String ciudad_favorita = "Madrid";

	//Lee la cookie de la petición del navegador
	
	//Almacenar en el array todas las cookies en el ordenador del usuario
	Cookie[] lasCookies = request.getCookies();
	
	//Buscar las preferencias. La ciudad favorita.
	
	if(lasCookies != null){
		
		for(Cookie cookieTemp : lasCookies){
			
			if("agencia_viajes.ciudad_favorita".equals(cookieTemp.getName())){
				
				ciudad_favorita = cookieTemp.getValue();
				
				break;
			}
		}
	}

%>

<h3>Vuelos a <%= ciudad_favorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>

<h3>Hoteles en <%= ciudad_favorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>

<h3>Coches de alquiler en <%= ciudad_favorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
</body>
</html>