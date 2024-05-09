package modelo;

public class Usuarios {
    private int codUsuario;
    private String tipo;
    private String contrasena;

    public Usuarios(int codUsuario, String tipo, String contrasena) {
        this.codUsuario = codUsuario;
        this.tipo = tipo;
        this.contrasena = contrasena;
    }

    public Usuarios() {
    }

    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
}