package EscapeRoom.reg;

import jakarta.servlet.*;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import EscapeRoom.DB.studentDB;
import EscapeRoom.DB.Student;
/**
 * Servlet implementation class StudServlet
 */
@WebServlet("/register")
public class StudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatch = request.getRequestDispatcher("register.jsp");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String email = request.getParameter("email");
		String Password = request.getParameter("Password");
		
		Student stud = new Student();
		stud.setFirstName(FirstName);
		stud.setLastName(LastName);
		stud.setEmail(email);
		stud.setPassword(Password);
		RequestDispatcher dispatch = request.getRequestDispatcher("index.jsp");
		dispatch.forward(request, response);
		//registerstudent regstub=new registerstudent();
		try {
			studentDB std = new studentDB();
			std.registerstudent(stud);
			//esponse.getWriter().append("Served at: ").append(FirstName);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

}
