
package beans;

public class Porcentaje {
    private String descripcion;
    private int porcentaje;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public Porcentaje(){
        descripcion = "";
        porcentaje = 0;
        id = 0;
    }

    public Porcentaje(String descripcion, int porcentaje, int id) {
        this.descripcion = descripcion;
        this.porcentaje = porcentaje;
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(int porcentaje) {
        this.porcentaje = porcentaje;
    }
    
    
}
