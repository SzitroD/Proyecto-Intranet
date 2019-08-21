package modelo;

public class Usuario {
    
    private int id_usuario;
    private String nombre_usuario;
    private String contrasena;
    
    public int getId_Usuario() {
        return id_usuario;
    }
    public void setId_Usuario(int id_usuario) {
	this.id_usuario = id_usuario;
    }
    
    public String getNombre_Usuario(){
        return nombre_usuario;
    }
    public void setNombre_Usuario(String nombre_usuario){
        this.nombre_usuario = nombre_usuario;
    }
    public String getContraseña(){
        return contrasena;
    }
    public void setContraseña(String contrasena){
        this.contrasena = contrasena;
    }
}
