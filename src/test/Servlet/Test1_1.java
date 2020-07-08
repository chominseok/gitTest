package test.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test1_1")
public class Test1_1 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		resp.setCharacterEncoding("utf-8");
		
		int num = Integer.parseInt(req.getParameter("num"));
		String content = req.getParameter("content");
		PrintWriter pw = resp.getWriter();
		
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset = 'utf-8'/>");
		pw.println("<title>test 페이지</title>");
		pw.println("서블릿이 뜨나 테스트 합니다.");
		pw.println("num은 "+num+"이고");
		pw.println("content는 "+content+"입니다.");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
