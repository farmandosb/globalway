/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.ArrayList;
import modelo.monedasDB;
/**
 *
 * @author JDEM_
 */
public class moneda {
    private int idMoneda;
    private String paisOrigen;
    private String nombreMoneda;
    private double cambioUnDolar;
    private double comisionPorcentaje;

    public moneda() {
    }

    public moneda(int idMoneda, String paisOrigen, String nombreMoneda, double cambioUnDolar, double comisionPorcentaje) {
        this.idMoneda = idMoneda;
        this.paisOrigen = paisOrigen;
        this.nombreMoneda = nombreMoneda;
        this.cambioUnDolar = cambioUnDolar;
        this.comisionPorcentaje = comisionPorcentaje;
    }

    public int getIdMoneda() {
        return idMoneda;
    }

    public void setIdMoneda(int idMoneda) {
        this.idMoneda = idMoneda;
    }

    public String getPaisOrigen() {
        return paisOrigen;
    }

    public void setPaisOrigen(String paisOrigen) {
        this.paisOrigen = paisOrigen;
    }

    public String getNombreMoneda() {
        return nombreMoneda;
    }

    public void setNombreMoneda(String nombreMoneda) {
        this.nombreMoneda = nombreMoneda;
    }

    public double getCambioUnDolar() {
        return cambioUnDolar;
    }

    public void setCambioUnDolar(double cambioUnDolar) {
        this.cambioUnDolar = cambioUnDolar;
    }

    public double getComisionPorcentaje() {
        return comisionPorcentaje;
    }

    public void setComisionPorcentaje(double comisionPorcentaje) {
        this.comisionPorcentaje = comisionPorcentaje;
    }
    
    //funciones de seguridad para las tablas de monedas en nuestra base de datos
    public static ArrayList<moneda> getMonedas(){
        return monedasDB.listaTodasMonedas();
    }
    
    public static moneda setMonedaObjeto(moneda monedaIngresada){
        return monedasDB.insertarMoneda(monedaIngresada);
    }
    
}
