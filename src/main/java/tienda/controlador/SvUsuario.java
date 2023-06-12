package tienda.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tienda.modelo.bean.Usuario;
import tienda.modelo.dao.UsuarioDAO;

@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario", "/login", "/logout"})
public class SvUsuario extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String path = request.getServletPath();
        
        switch (path) {
            case "/login":
                loginSession(request, response);
                break;
            case "/logout":
                logoutSession(request, response);
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void loginSession(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String user = request.getParameter("txtuser");
        String pass = request.getParameter("txtpass");
        Usuario usuario = new Usuario(0, user, pass, "", 0);
        usuario = new UsuarioDAO().read(usuario);
        if (usuario.getIdusuario() != 0) {
            request.setAttribute("owner", usuario);
            request.getRequestDispatcher("WEB-INF/main.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "Usuario o contraseña inválido");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
    
    private void logoutSession(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
    }
    
}
