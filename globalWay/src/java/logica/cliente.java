/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author JDEM_
 */
public class cliente {
    private int idCliente;
    private String pasaporteId;
    private String nombreCliente;
    private String emailCliente;
    private String paisPasaporte;
    private String telefonoCliente;

    public cliente() {
    }

    public cliente(int idCliente, String pasaporteId, String nombreCliente, String emailCliente, String paisPasaporte, String telefonoCliente) {
        this.idCliente = idCliente;
        this.pasaporteId = pasaporteId;
        this.nombreCliente = nombreCliente;
        this.emailCliente = emailCliente;
        this.paisPasaporte = paisPasaporte;
        this.telefonoCliente = telefonoCliente;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getPasaporteId() {
        return pasaporteId;
    }

    public void setPasaporteId(String pasaporteId) {
        this.pasaporteId = pasaporteId;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getEmailCliente() {
        return emailCliente;
    }

    public void setEmailCliente(String emailCliente) {
        this.emailCliente = emailCliente;
    }

    public String getPaisPasaporte() {
        return paisPasaporte;
    }

    public void setPaisPasaporte(String paisPasaporte) {
        this.paisPasaporte = paisPasaporte;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }
    
   
}
