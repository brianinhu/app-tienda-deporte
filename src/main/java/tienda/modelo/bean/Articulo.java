
package tienda.modelo.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Articulo {
    private int idarticulo;
    private String nombre;
    private String descripcion;
    private float precio;
    private String foto;
    private int idcategoria;
}
