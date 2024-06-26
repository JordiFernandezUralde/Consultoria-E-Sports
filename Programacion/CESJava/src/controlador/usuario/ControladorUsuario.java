package controlador.usuario;

import controlador.ControladorVista;
import modelo.Clasificacion;
import modelo.Competicion;
import modelo.Enfrentamiento;
import modelo.Jornada;
import view.VentanaPrincipalUsuario;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * ControladorUsuario gestiona la interacción entre la vista principal del usuario (VentanaPrincipalUsuario)
 * y el modelo de negocio relacionado con competiciones y clasificaciones a través del ControladorVista.
 */

public class ControladorUsuario {
    protected VentanaPrincipalUsuario vpu;
    private ControladorVista cv;

    /**
     * Constructor de ControladorUsuario.
     *
     * @param cv El controlador principal de la vista.
     */

    public ControladorUsuario(ControladorVista cv) {
        this.cv = cv;
        mostrar();
        botones();

        vpu.getTaConsulta().setEditable(false);
        vpu.getTaConsulta().setBackground(new Color(205, 205, 205));
    }

    /**
     * Muestra la ventana principal del usuario.
     */

    public void mostrar() {
        vpu = new VentanaPrincipalUsuario();
        vpu.setVisible(true);
        vpu.getTaConsulta().setVisible(false);
        vpu.getjScroll().setVisible(false);

    }


    /**
     * Configura los listeners de los botones y oculta los paneles de jornada y clasificación inicialmente.
     */

    public void botones() {
        vpu.getpJornada().setVisible(false);
        vpu.getpClasificacion().setVisible(false);
        vpu.rbClasiAL(new rbUsuClasi());
        vpu.rbJornadaAL(new rbUsuJornada());
        vpu.botonAceprtarJornadaAL(new bAceptarJornada());
        vpu.botonAceptarClasiAL(new bAceptarClasi());
        vpu.bSalirAL(new bSalirUsu());
        vpu.bSesion(new bSesionUsu());
    }


    /**
     * Clase interna que maneja el evento de selección del radio botón para jornada.
     * Muestra el panel de jornada y oculta el de clasificación.
     */

    public class rbUsuJornada implements ActionListener {

        public void actionPerformed(ActionEvent e) {
            vpu.getTaConsulta().setVisible(true);
            vpu.getjScroll().setVisible(true);

            if (vpu.getpJornada().isEnabled()) {
                vpu.getpJornada().setVisible(true);
                vpu.getpClasificacion().setVisible(false);
                vpu.getTaConsulta().setText("");
            }
        }
    }

    /**
     * Clase interna que maneja el evento de selección del radio botón para clasificación.
     * Muestra el panel de clasificación y oculta el de jornada.
     */

    public class rbUsuClasi implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            vpu.getpClasificacion().setVisible(false);
            vpu.getpJornada().setVisible(false);
            vpu.getTaConsulta().setVisible(true);
            vpu.getjScroll().setVisible(true);
            if (vpu.getpClasificacion().isEnabled()) {
                vpu.getpJornada().setVisible(false);
                vpu.getpClasificacion().setVisible(true);
                vpu.getTaConsulta().setText("");
            }
        }
    }

    /**
     * Clase interna que maneja el evento de clic en el botón "Aceptar" para jornada.
     * Obtiene la última jornada de una competición y muestra los detalles de los enfrentamientos.
     */

    public class bAceptarJornada implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            int x = 0;
            Competicion com = new Competicion();
            com.setNombre(vpu.getTfJornada().getText());
            Jornada jor = new Jornada();
            jor.setCodCompe(com);
            StringBuilder total = new StringBuilder();
            ArrayList<Enfrentamiento> lista = cv.obtenerUltimaJornada(com);
            for (x = 0; x < lista.size(); x++) {
                total.append("Numero de jornada: " + lista.get(x).getCodJornada().getNumJornada()).append("\n").append("Hora: " + lista.get(x).getHora()).append("\n").append("Fecha de el enfrentamiento: " + lista.get(x).getFecha()).append("\n").append("Equipo Ganador: " + lista.get(x).getResultado()).append("\n").append("Equipo local: " + lista.get(x).getCodEquipoLocal().getCodEquipo()).append("\n").append("Equipo visitante: " + lista.get(x).getCodEquipoVisitante().getCodEquipo()).append("\n --------------------------------------  \n");
            }
            vpu.getTaConsulta().setText(String.valueOf(total));
        }
    }

    /**
     * Clase interna que maneja el evento de clic en el botón "Aceptar" para clasificación.
     * Obtiene la clasificación de una competición y muestra los detalles de los equipos clasificados.
     */

    public class bAceptarClasi implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            Competicion com = new Competicion();
            StringBuilder resultado = new StringBuilder();
            com.setNombre(vpu.getTfClasi().getText());
            Pattern pattern = Pattern.compile("^[a-zA-Z]+$");
            Matcher matcher = pattern.matcher(vpu.getTfClasi().getText());
            if (!matcher.matches()){
                ArrayList<Clasificacion> lista = cv.clasificacion(com);
                int x1 = 1;
                for (int x = 0; x < lista.size(); x++, x1++) {

                    resultado.append("Posicion en la clasificacion es: " + x1 + "º \n").append("Nombre del equipo: " + lista.get(x).getCodequipo().getNombre()).append("\n").append("Puntos del equipo: " + lista.get(x).getPuntos().getPuntos()).append("\n").append(" ------------------------------ \n");
                }
                vpu.getTaConsulta().setText(String.valueOf(resultado));
            }

        }
    }

    /**
     * Clase interna que maneja el evento de clic en el botón "Salir".
     * Cierra la aplicación.
     */

    public class bSalirUsu implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            System.exit(0);
        }
    }

    /**
     * Clase interna que maneja el evento de clic en el botón "Cerrar sesión".
     * Cierra la ventana principal del usuario y limpia los campos de texto.
     */

    public class bSesionUsu implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            vpu.dispose();
            vpu.getTfJornada().setText("");
            vpu.getTfClasi().setText("");
 }
}
}