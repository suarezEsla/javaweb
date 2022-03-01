<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

//Leyendo datos del formulario (formulario.html)

String ciudad_favorita = request.getParameter("ciudad_favorita");

//Creando la cookie (par nombre-valor)->Nombre de la cookie y a qué apunta

Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita" , ciudad_favorita);


//Vida de la cookie (en segundos, queremos 1 año)

laCookie.setMaxAge(365*24*60*60);

//Enviar la cookie al ordenador del usuario

response.addCookie(laCookie);




%>


Gracias por enviar tus preferencias
  
<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>

</body>
</html>