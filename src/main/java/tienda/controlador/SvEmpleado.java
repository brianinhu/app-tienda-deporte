package tienda.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tienda.modelo.bean.Empleado;
import tienda.modelo.dao.EmpleadoDAO;

@WebServlet(name = "SvEmpleado", urlPatterns = {"/SvEmpleado", "/mainEmpleado", "/viewcreateE", "/createE", "/viewupdateE", "/updateE", "/viewdeleteE"})
public class SvEmpleado extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String path = request.getServletPath();
        
        switch (path) {
            case "/mainEmpleado":
                request.getRequestDispatcher("WEB-INF/Empleado/mainEmpleado.jsp").forward(request, response);
                break;
            case "/viewcreateE":
                request.getRequestDispatcher("WEB-INF/Empleado/createEmpleado.jsp").forward(request, response);
                break;
            case "/createE":
                createE(request, response);
                break;
            case "/viewupdateE":
                request.getRequestDispatcher("WEB-INF/Empleado/updateEmpleado.jsp").forward(request, response);
                break;
            case "/updateE":
                updateE(request, response);
                break;
            case "/viewdeleteE":
                deleteE(request, response);
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

    private void createE(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nombre = request.getParameter("txtnombre");
        String apaterno = request.getParameter("txtapaterno");
        String amaterno = request.getParameter("txtamaterno");
        String cargo = request.getParameter("txtcargo");
        
        Empleado e = new Empleado(0, nombre, apaterno, amaterno, cargo);
        new EmpleadoDAO().create(e);
        
        response.sendRedirect("mainEmpleado");
    }

    private void updateE(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idempleado = Integer.parseInt(request.getParameter("txtidempleado"));
        String nombre = request.getParameter("txtnombre");
        String apaterno = request.getParameter("txtapaterno");
        String amaterno = request.getParameter("txtamaterno");
        String cargo = request.getParameter("txtcargo");
        
        Empleado e = new Empleado(idempleado, nombre, apaterno, amaterno, cargo);
        new EmpleadoDAO().update(e);
        
        response.sendRedirect("mainEmpleado");
    }

    private void deleteE(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idempleado = Integer.parseInt(request.getParameter("id"));
        Empleado e = new Empleado();
        e.setIdempleado(idempleado);
        new EmpleadoDAO().delete(e);
        
        response.sendRedirect("mainEmpleado");
    }
    
}
