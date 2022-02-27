package ejercicio1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Servlet implementation class ejer1
 */
public class ejer1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ejer1() {
        super();
      
    }
    
   
    
    
    protected void procesaPeticion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        	 out.println("<html>");
        	    out.println("<head>");
        	    out.println("<title>Ejercicio 1</title>");
        	    out.println("</head>");
        	    out.println("<body>");
        	    out.println("<h1>Ejercicio1: </h1>");
        	    out.println("<h3>Realizar un servlet que muestre un mensaje que indique si utilizó o no el navegador Firefox con cultando las cabeceras de la petición enviado por el navegador.</h3>");

        	    out.println("<ul>");
        	    String cadena = request.getHeader("user-agent");
        	   
        	    if(cadena.indexOf("Firefox") != -1) {
        	    	
        	    	out.println("<strong>Estás usando Firefox</strong>");
        	    }else {
        	    	out.println("<strong>No estás usando Firefox</strong>");
        	    }
        	    
        	    
        	    
        	    out.println("</ul>");
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
		//Llamada a función
		procesaPeticion(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesaPeticion(request, response);
	}

}
