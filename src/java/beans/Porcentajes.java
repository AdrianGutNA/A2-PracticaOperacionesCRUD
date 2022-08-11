
package beans;

public class Porcentajes {
    private String descripcion;
    private int porcentaje;
    
    public Porcentajes(){
        descripcion = "";
        porcentaje = 0;
    }

    public Porcentajes(String descripcion, int porcentaje) {
        this.descripcion = descripcion;
        this.porcentaje = porcentaje;
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
