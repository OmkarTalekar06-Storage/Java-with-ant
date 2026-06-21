package mypack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String uname = request.getParameter("txtId");
        String upass = request.getParameter("txtPass");

        out.println("<html><body>");

        if(uname.equals("admin") && upass.equals("12345")) {
            out.println("<body bgcolor='blue'>");
            out.println("<h1>Hello " + uname + "</h1>");
        }
        else {
            out.println("<body bgcolor='red'>");
            out.println("<h1>Login Failed</h1>");
        }

        out.println("</body></html>");
    }
}