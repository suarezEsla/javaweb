<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>


<!--  Recoger con el objeto request la información del formulario-->
<%


String usuario = request.getParameter("usuario");
String contra = request.getParameter("contra");



//Conexión con la bd

Class.forName("com.mysql.jdbc.Driver");


try{
Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");


//Consultas preparadas

PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM usuarios WHERE usuario = ? AND contrasena=?");

c_preparada.setString(1, usuario);
c_preparada.setString(2, contra);


//Importante 
ResultSet miResultSet = c_preparada.executeQuery();



if(miResultSet.absolute(1)) out.println("Usuario autorizado");
	else out.println("No hay usuarios con esas credenciales");

	



}catch (Exception e){
	
	out.println("Error al conectar a la Base de datos. ");
	
}

%>
</body>
</html>