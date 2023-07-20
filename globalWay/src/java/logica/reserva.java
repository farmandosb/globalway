/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author JDEM_
 */
public class reserva {
    private int idReserva;    
    private moneda objMonedaEntrada;
    private moneda objMonedaSalida;
    private cliente objCliente;
    private String nombreCliente;
    private double cantMEntrada;
    private double cantMSalida;
    private double comisionPago;
    private double totalPagar;

    public reserva() {
    }

    public reserva(int idReserva, moneda objMonedaEntrada, moneda objMonedaSalida, cliente objCliente, String nombreCliente, double cantMEntrada, double cantMSalida, double comisionPago, double totalPagar) {
        this.idReserva = idReserva;
        this.objMonedaEntrada = objMonedaEntrada;
        this.objMonedaSalida = objMonedaSalida;
        this.objCliente = objCliente;
        this.nombreCliente = nombreCliente;
        this.cantMEntrada = cantMEntrada;
        this.cantMSalida = cantMSalida;
        this.comisionPago = comisionPago;
        this.totalPagar = totalPagar;
    }

    public int getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }

    public moneda getObjMonedaEntrada() {
        return objMonedaEntrada;
    }

    public void setObjMonedaEntrada(moneda objMonedaEntrada) {
        this.objMonedaEntrada = objMonedaEntrada;
    }

    public moneda getObjMonedaSalida() {
        return objMonedaSalida;
    }

    public void setObjMonedaSalida(moneda objMonedaSalida) {
        this.objMonedaSalida = objMonedaSalida;
    }

    public cliente getObjCliente() {
        return objCliente;
    }

    public void setObjCliente(cliente objCliente) {
        this.objCliente = objCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public double getCantMEntrada() {
        return cantMEntrada;
    }

    public void setCantMEntrada(double cantMEntrada) {
        this.cantMEntrada = cantMEntrada;
    }

    public double getCantMSalida() {
        return cantMSalida;
    }

    public void setCantMSalida(double cantMSalida) {
        this.cantMSalida = cantMSalida;
    }

    public double getComisionPago() {
        return comisionPago;
    }

    public void setComisionPago(double comisionPago) {
        this.comisionPago = comisionPago;
    }

    public double getTotalPagar() {
        return totalPagar;
    }

    public void setTotalPagar(double totalPagar) {
        this.totalPagar = totalPagar;
    }
    
    
    
}
