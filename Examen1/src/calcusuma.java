

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class calcusuma extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public calcusuma() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		int X,Y,RES;
		X=Integer.parseInt(request.getParameter("X"));
		Y=Integer.parseInt(request.getParameter("Y"));
		RES=X+Y;
		writer.print("<html><body>Resultado: "+RES+"</html></body>");
	}

}
