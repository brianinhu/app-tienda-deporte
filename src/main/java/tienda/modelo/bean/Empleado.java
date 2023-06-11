package tienda.modelo.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Empleado {

    private int idempleado;
    private String nombre;
    private String apaterno;
    private String amaterno;
    private String cargo;
}
