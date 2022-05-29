package br.com.teste.servlets;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) 
        throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("/cadastro.html");
        rd.forward(req, resp);
    }
}
