
package tienda.modelo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import tienda.conexion.Conexion;
import tienda.helper.InterfaceCRUD;
import tienda.modelo.bean.Articulo;
import tienda.modelo.bean.Categoria;

public class CategoriaDAO extends Conexion implements InterfaceCRUD<Categoria>{

    @Override
    public ArrayList<Categoria> tolist() {
        ArrayList<Categoria> listaCategoria = new ArrayList<>();
        Categoria categoria;
        String sentence = "select * from categoria";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            rs = ps.executeQuery();
            while (rs.next()) {                
                categoria = new Categoria(rs.getInt(1), rs.getString(2));
                listaCategoria.add(categoria);
            }
        } catch (SQLException ex) {
            System.out.println("Error al listar todos las categorias. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
        return listaCategoria;
    }

    @Override
    public void create(Categoria e) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Categoria read(Categoria e) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Categoria e) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Categoria e) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
