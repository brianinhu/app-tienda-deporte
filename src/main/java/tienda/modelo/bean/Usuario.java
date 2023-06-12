
package tienda.modelo.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Usuario {
    private int idusuario;
    private String usuario;
    private String password;
    private String estado;
    private int idempleado;
}
