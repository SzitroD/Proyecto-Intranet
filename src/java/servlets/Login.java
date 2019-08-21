package servlets;

import control.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    public Login(){
        super();
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
        PrintWriter out = response.getWriter();
        
        try {
            HttpSession sesion = request.getSession(true);
            RequestDispatcher dispatcher;
            Consultas objConsultas = new Consultas();
	            
            String usuario = request.getParameter("usuario");
            String pass = request.getParameter("contrasena");
            String mensaje = "", retorno = "";
            
            int login = 0;
            
            Boolean status = objConsultas.validarUsuario(usuario, pass);
            
            if (status) {
                retorno = "/index.jsp";
                sesion.setAttribute("login", "1");
                sesion.setAttribute("usuario", usuario);
                sesion.setAttribute("contrasena", pass);
                sesion.setMaxInactiveInterval(-1);
                System.out.println("Usuario valido");
            } else {
                retorno = "/login.jsp";
                sesion.setAttribute("login", "0");
                sesion.setAttribute("mensaje", mensaje);
                mensaje += "Password Incorrecto, favor de rectificar";
                System.out.println("Usuario no valido");
            }
            
            dispatcher = getServletContext().getRequestDispatcher(retorno);
            dispatcher.forward(request, response);
        } finally {
            out.close();
        }
    }
}

