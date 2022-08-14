package beans;

public class Actividad {

    private int id;
    private String actividad;
    private String categoria;
    
    public Actividad(){
        id = 0;
        actividad = "";
        categoria = "";
    }

    public Actividad(int id, String actividad, String categoria) {
        this.id = id;
        this.actividad = actividad;
        this.categoria = categoria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
    
}
