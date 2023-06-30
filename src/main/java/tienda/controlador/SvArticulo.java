package tienda.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tienda.modelo.bean.Articulo;
import tienda.modelo.dao.ArticuloDAO;

@WebServlet(name = "SvArticulo", urlPatterns = {"/SvArticulo", "/mainArticulo", "/viewCreateA", "/createA", "/viewUpdateA", "/updateA", "/deleteA"})
public class SvArticulo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String path = request.getServletPath();

        switch (path) {
            case "/mainArticulo":
                request.getRequestDispatcher("WEB-INF/Articulo/mainArticulo.jsp").forward(request, response);
                break;
            case "/viewCreateA":
                request.getRequestDispatcher("WEB-INF/Articulo/createArticulo.jsp").forward(request, response);
                break;
            case "/createA":
                createA(request, response);
                break;
            case "/viewUpdateA":
                request.getRequestDispatcher("WEB-INF/Articulo/updateArticulo.jsp").forward(request, response);
                break;
            case "/updateA":
                updateA(request, response);
                break;
            case "/deleteA":
                deleteA(request, response);
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

    private void createA(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nombre = request.getParameter("txtnombre");
        int idcategoria = Integer.parseInt(request.getParameter("cbxCategoria"));
        String descripcion = request.getParameter("txtdescripcion");
        float precio = Float.parseFloat(request.getParameter("txtprecio"));
        String foto = request.getParameter("txtfoto");

        Articulo articulo = new Articulo(0, nombre, descripcion, precio, foto, idcategoria);
        new ArticuloDAO().create(articulo);

        response.sendRedirect("mainArticulo");
    }

    private void updateA(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idarticulo = Integer.parseInt(request.getParameter("txtidarticulo"));
        String nombre = request.getParameter("txtnombre");
        String descripcion = request.getParameter("txtdescripcion");
        float precio = Float.parseFloat(request.getParameter("txtprecio"));
        String foto = request.getParameter("txtfoto");
        int idcategoria = Integer.parseInt(request.getParameter("cbxCategoria"));

        Articulo a = new Articulo(idarticulo, nombre, descripcion, precio, foto, idcategoria);
        new ArticuloDAO().update(a);

        response.sendRedirect("mainArticulo");
    }

    private void deleteA(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idarticulo = Integer.parseInt(request.getParameter("id"));
        Articulo a = new Articulo();
        a.setIdarticulo(idarticulo);
        
        new ArticuloDAO().delete(a);
        response.sendRedirect("mainArticulo");
    }

}
