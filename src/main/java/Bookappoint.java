

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MMD.Book;
import MMD.Books;

/**
 * Servlet implementation class Bookappoint
 */
@WebServlet("/Bookappoint")
public class Bookappoint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bookappoint() {
        super();
        // TODO Auto-generated constructor stub
    }
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String cname=request.getParameter("username");
		String contact=request.getParameter("mobilenumber");
		String email=request.getParameter("email");
		String location=request.getParameter("location");
		String gender=request.getParameter("gender");
		String servicetype=request.getParameter("servicetype");
		String timingslot=request.getParameter("timingslot");
		Book book=new Book();
		Books books=new Books();
		book.setCname(cname);
		book.setContact(contact);
		book.setEmail(email);
		book.setLocation(location);
		book.setGender(gender);
		book.setServicetype(servicetype);
		book.setTimingslot(timingslot);
		String Result=books.insert(book);
		response.getWriter().print(Result);
		
		}

}

	
