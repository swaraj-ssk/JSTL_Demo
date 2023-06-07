import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	protected void doGet( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		List<Student> studs = Arrays.asList(new Student(1,"Navin"), new Student(2, "Arti"), new Student(3,"Swaraj"));
//			
//		request.setAttribute("students", studs);
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
		
	}

}
