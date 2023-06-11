package tienda.modelo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import tienda.conexion.Conexion;
import tienda.helper.InterfaceCRUD;
import tienda.modelo.bean.Empleado;

public class EmpleadoDAO extends Conexion implements InterfaceCRUD<Empleado> {

    @Override
    public ArrayList<Empleado> tolist() {
        String sentence = "select * from empleado";
        ArrayList<Empleado> listaEmpleados = new ArrayList<>();
        Empleado empleado;
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            rs = ps.executeQuery();

            while (rs.next()) {
                empleado = new Empleado(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                listaEmpleados.add(empleado);
            }

        } catch (SQLException ex) {
            System.out.println("Error al listar todos los empleados. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
        return listaEmpleados;
    }

    @Override
    public void create(Empleado e) {
        String sentence = "insert into empleado(nombre, apaterno, amaterno, cargo) values (?,?,?,?)";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getApaterno());
            ps.setString(3, e.getAmaterno());
            ps.setString(4, e.getCargo());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al crear un empleado. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
    }

    @Override
    public Empleado read(Empleado e) {
        String sentence = "select * from empleado where idempleado = ?";
        Empleado empleado = null;
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setInt(1, e.getIdempleado());
            rs = ps.executeQuery();
            if (rs.next()) {
                empleado = new Empleado(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return empleado;
    }

    @Override
    public void update(Empleado e) {
        String sentence = "update empleado set nombre = ?, apaterno = ?, amaterno = ?, cargo = ? where idempleado = ?";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getApaterno());
            ps.setString(3, e.getAmaterno());
            ps.setString(4, e.getCargo());
            ps.setInt(5, e.getIdempleado());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al actualizar un empleado. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
    }

    @Override
    public void delete(Empleado e) {
        String sentence = "delete from empleado where idempleado = ?";
        try {
            cn = getConnection();
            ps = cn.prepareStatement(sentence);
            ps.setInt(1, e.getIdempleado());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error al actualizar un empleado. \nDetalles: " + ex.getMessage());
        } finally {
            close(cn);
            close(ps);
            close(rs);
        }
    }

}
