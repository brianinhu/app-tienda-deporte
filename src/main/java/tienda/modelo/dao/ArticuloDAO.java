package tienda.modelo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import tienda.conexion.Conexion;
import tienda.helper.InterfaceCRUD;
import tienda.modelo.bean.Articulo;

public class ArticuloDAO extends Conexion implements InterfaceCRUD<Articulo> {

    @Override
    public ArrayList<Articulo> tolist() {
        ArrayList<Articulo> listaArticulo = new ArrayList<>();
        Articulo articulo;
        String sentence = "select * from articulo";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            rs = ps.executeQuery();
            while (rs.next()) {
                articulo = new Articulo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6));
                listaArticulo.add(articulo);
            }
        } catch (SQLException ex) {
            System.out.println("Error al listar todos los articulos. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
        return listaArticulo;
    }

    @Override
    public void create(Articulo e) {
        String sentence = "insert into articulo(nombre, descripcion, precio, foto, idcategoria) values (?,?,?,?,?)";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getDescripcion());
            ps.setFloat(3, e.getPrecio());
            ps.setString(4, e.getFoto());
            ps.setInt(5, e.getIdcategoria());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al crear el articulo. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
    }

    @Override
    public Articulo read(Articulo e) {
        Articulo articulo = null;
        String sentence = "select * from articulo where idarticulo = ?";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setInt(1, e.getIdarticulo());
            rs = ps.executeQuery();
            while (rs.next()) {
                articulo = new Articulo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6));
            }
        } catch (SQLException ex) {
            System.out.println("Error al leer el articulo. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
        return articulo;
    }

    @Override
    public void update(Articulo e) {
        String sentence = "update articulo set nombre = ?, descripcion = ?, precio = ?, foto = ?, idcategoria = ? where idarticulo = ?";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getDescripcion());
            ps.setFloat(3, e.getPrecio());
            ps.setString(4, e.getFoto());
            ps.setInt(5, e.getIdcategoria());
            ps.setInt(6, e.getIdarticulo());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al actualizar el articulo. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
    }

    @Override
    public void delete(Articulo e) {
        String sentence = "delete from articulo where idarticulo = ?";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setInt(1, e.getIdarticulo());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al eliminar el articulo. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
    }

}
