package ejercicio2;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class ejer2
 */
public class ejer2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ejer2() {
        super();
        // TODO Auto-generated constructor stub
    }
    
   
    protected void procesaPeticion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        	 out.println("<html>");
        	    out.println("<head>");
        	    out.println("<title>Ejercicio 2</title>");
        	    out.println("</head>");
        	    out.println("<body>");
        	    out.println("<h1>Ejercicio 2:</h1>");
        	    out.println("<h3>Ampliar el procesamiento de formulario de cursojavaee tema 4 FormularioServlet para que procese un campo tipo radio que informe del sexo y muestre un imagen alusiva a hombres o mujeres.</h3>");

        	  
        	   
        	   
        	    
        	    
        	    
        	    out.println("</ul>");
        	    out.println("</body>");
        	    out.println("</html>");

        } finally {
            out.close();
        }
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {

    	        String nombre = request.getParameter("nombre");
    	        String apellidos = request.getParameter("apellidos");
    	        String edad = request.getParameter("edad");
    	        String[] hobbies = request.getParameterValues("hobbies");
    	        String sexo = request.getParameter("sexo");

    	        response.setContentType("text/html;charset=UTF-8");
    	        PrintWriter out = response.getWriter();
    	        try {
    	            out.println("<html>");
    	            out.println("<head>");
    	            out.println("<title>Servlet que procesa un formulario basico</title>");
    	            out.println("</head>");
    	            out.println("<body>");
    	            out.println("<h1>" + "Hola " + nombre + " " + apellidos+  "</h1>");
    	            out.println("Eres de sexo :" + sexo);
    	            
    	            if(sexo == "Mujer") {
    	            	out.println("<img style='widht:85px' src='mujer.png'>");
    	            }else {
    	            	out.println("<img style='widht:85px' src='hombre.png'>");
    	            }
    	            
    	            out.println("Tu Franja de edad es " + edad + " y tus hobbies son:");

    	            out.println("<ul>");
    	            for (String hobby : hobbies) {
    	                out.println("<li>" + hobby + "</li>");
    	            }
    	            out.println("</ul>");
    	            out.println("Este formulario ha sido invocado con Los siguientes parametros:<br/>");
    	            out.println(request.getQueryString());

    	            out.println("</body>");
    	            out.println("</html>");
    	            
    	        } finally { 
    	            out.close();
    	        }
    	    } 
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
		procesaPeticion(request, response);
		
	}

	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
		procesaPeticion(request, response);
		
	}

	

}
