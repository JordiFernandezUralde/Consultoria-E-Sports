package view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

public class VentanaPrincipalAdmin  extends JFrame {
    private JPanel pPrincipal;
    private JMenu menuEquipos;
    private JPanel pSecundario;
    private JLabel tituloLabel;
    private JMenuItem cerrarEtapaInscripcionMenuItem;
    private JMenu procesosMenu;
    private JMenuItem generarCalendarioMenuIItem;
    private JMenuItem introducirResultadosMenuItem;
    private JMenu consultasMenu;
    private JMenuItem resultadosJornadasMenuItem;
    private JMenuItem clasificacionMenuItem;
    private JMenuBar menuDosBar;
    private JButton cerrarSesionButton;
    private JButton salirButton;
    private JButton equiposButton;
    private JButton jugadoresButton;
    private JButton staffButton;
    private JButton patrocinadoresButton;
    private JButton juegosButton;
    private JButton competicionesButton;

    public VentanaPrincipalAdmin() throws HeadlessException {
        super("Panel de Administrador");
        setContentPane(pPrincipal);
        setSize(750, 450);
        setLocationRelativeTo(null);
    }
    public void addMEquipos(ActionListener listener){
        equiposButton.addActionListener(listener);
    }
}
