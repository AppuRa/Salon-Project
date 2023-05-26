package MMD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Regitration
 */
@WebServlet("/Review")
public class Review extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String yourname = request.getParameter("yourname");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		Re re = new Re(yourname, email,message);
		REJdbc rej = new REJdbc();
		String Result = rej.insert(re);
		response.getWriter().print(Result);

	}

}
