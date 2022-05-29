package br.com.teste.servlets;

import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("")
public class HomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            PrintWriter out = resp.getWriter();
            out.println("<html>");
            out.println("HomeServlet atualizado!!!");
            out.println("<a href=\"lista\">Lista</a>");
            out.println("<a href=\"cadastro\">Cadastro</a>");
            out.println("</html>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
