package view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

public class VentanaGenerarCalendario extends JFrame{
    private JPanel pPrincipal;
    private JComboBox cbCalendario;
    private JButton bSalir;
    private JButton bAceptar;

    public VentanaGenerarCalendario() throws HeadlessException {
        super("Clasificacion");
        setSize(900, 650);
        setLocationRelativeTo(null);
        setContentPane(pPrincipal);
    }
    public void cbCalendarioAL(ActionListener listener){
        cbCalendario.addActionListener(listener);
    }
    public void bSalirAL(ActionListener listener){
        bSalir.addActionListener(listener);
    }
    public void bAceptarAL(ActionListener listener){
        bAceptar.addActionListener(listener);
    }

    public JComboBox getCbCalendario() {
        return cbCalendario;
    }

    public void setCbCalendario(JComboBox cbCalendario) {
        this.cbCalendario = cbCalendario;
    }
}