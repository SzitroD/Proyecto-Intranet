package servlets;

import control.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Usuario;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    public Login(){
        super();
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
        PrintWriter out = response.getWriter();
        
        try {
            /*
            String usuario = request.getParameter("usuario");
            String pass = request.getParameter("contrasena");
            out.println("<html>");
            out.println("<body>");
            out.println("<h1> usuario: "+usuario+"</h1>");
            out.println("<h2> contraseña: "+pass+"</h2>");
            out.println("</body>");
            out.println("</html>");
            */
            HttpSession sesion = request.getSession(true);
            RequestDispatcher dispatcher;
            Consultas objConsultas = new Consultas();
	            
            String usuario = request.getParameter("usuario");
            String pass = request.getParameter("contrasena");
            String mensaje = "", retorno;
            
            int login = 0;
            
            ArrayList<Usuario> ListaUsuario = objConsultas.validarUsuario(usuario);
            
            if (ListaUsuario.size() > 0) {
                int id_usuario = ListaUsuario.get(0).getId_Usuario();
                String nombre_usuario = ListaUsuario.get(0).getNombre_Usuario();
                String password = ListaUsuario.get(0).getContraseña();;
                String retorno1 = "";
                if (password.equals(pass)) {
                    retorno1 = "/index.jsp";
                    sesion.setAttribute("id_usuario", "" + id_usuario);
                    retorno = retorno1;
                    sesion.setAttribute("nombre_usuario", nombre_usuario);
                    sesion.setAttribute("contrasena", password);
                    sesion.setMaxInactiveInterval(-1);
                    dispatcher = getServletContext().getRequestDispatcher(retorno);
                    dispatcher.forward(request, response);

                } else {
                    login = 1;
                    mensaje += "Password Incorrecto, favor de rectificar";
                    retorno = "/login.jsp";
                    sesion.setAttribute("login", "" + login);
                    sesion.setAttribute("mensaje", mensaje);
                    dispatcher = getServletContext().getRequestDispatcher(retorno);
                    dispatcher.forward(request, response);
                }
        	} else {
                mensaje += "Usuario Incorrecto favor de verificar";
                retorno = "/login.jsp";
                sesion.setAttribute("mensaje", mensaje);
                dispatcher = getServletContext().getRequestDispatcher(retorno);
                dispatcher.forward(request, response);
            }
        } finally {
            out.close();
        }
    }
}

