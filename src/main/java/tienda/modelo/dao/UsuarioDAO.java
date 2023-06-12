package tienda.modelo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import tienda.conexion.Conexion;
import tienda.helper.InterfaceCRUD;
import tienda.modelo.bean.Usuario;

public class UsuarioDAO extends Conexion implements InterfaceCRUD<Usuario> {

    @Override
    public ArrayList<Usuario> tolist() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void create(Usuario e) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Usuario read(Usuario e) {
        Usuario usuario = null;
        String sentence = "select * from usuario where usuario = ? and password = ?";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setString(1, e.getUsuario());
            ps.setString(2, e.getPassword());
            rs = ps.executeQuery();
            if (rs.next()) {
                usuario = new Usuario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos del usuario. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
        return usuario;
    }

    @Override
    public void update(Usuario e) {

    }

    @Override
    public void delete(Usuario e) {

    }

}
