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

String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String usuario = request.getParameter("usuario");
String contra = request.getParameter("contra");
String pais = request.getParameter("pais");
String tecno = request.getParameter("tecnologias");


//Conexión con la bd

Class.forName("com.mysql.jdbc.Driver");


try{
Connection miConexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");


Statement miStatement = miConexion.createStatement();

String instruccionSql = "INSERT INTO usuarios (nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES ('"+nombre+"','"+apellido+"','"+usuario+"','"+contra+"','"+pais+"','"+tecno+"')";

miStatement.executeUpdate(instruccionSql);

out.println("Registrado con éxito");

}catch (Exception e){
	
	out.println("Error al conectar a la Base de datos. ");
	
}

%>


</body>
</html>