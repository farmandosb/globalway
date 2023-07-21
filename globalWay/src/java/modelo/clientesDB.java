/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import logica.cliente;

/**
 *
 * @author JDEM_
 */
public class clientesDB {
    
    
    public static cliente crearObjClienteConId(cliente clienteIngresado){
      int idCliente= clienteIngresado.getIdCliente();
              String pasaporteId;
                String nombreCliente;
                String emailCliente;
                String paisPasaporte;
                String telefonoCliente;
         
           
            String comandoSql = "select * from clientes where idCliente = "+idCliente;
        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            while (rs.next()){
                 idCliente = Integer.parseInt(rs.getString(1));
                    pasaporteId = rs.getString(2);
                    paisPasaporte = rs.getString(3);
                    nombreCliente = rs.getString(4);
                    emailCliente = rs.getString(5);
                    telefonoCliente = rs.getString(6);
                    clienteIngresado =(new cliente(idCliente, pasaporteId, nombreCliente, emailCliente, paisPasaporte, telefonoCliente));

        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }

        return clienteIngresado;
     }
    
    public static cliente eliminarCliente(cliente clienteIngresado) {
        int idCliente= clienteIngresado.getIdCliente();
        String comandoSql = "delete clientes where idCliente=" + idCliente;
        clienteIngresado = crearObjClienteConId( clienteIngresado);
         try {
            conexionDB.ejecutarQuery(comandoSql);
            }catch (Exception e)
            {
                System.out.println("Error: " + e.getMessage());
            }   
        return clienteIngresado;
    }
    
     public static cliente insertarCliente(cliente clienteIngresado) {
         cliente clienteConsultado = new cliente();
         
            boolean existe =  consultaClienteExiste(clienteIngresado);
             int idCliente= clienteIngresado.getIdCliente();
              String pasaporteId = clienteIngresado.getPasaporteId();
                String nombreCliente = clienteIngresado.getNombreCliente();
                String emailCliente = clienteIngresado.getEmailCliente();
                String paisPasaporte = clienteIngresado.getEmailCliente();
                String telefonoCliente= clienteIngresado.getTelefonoCliente();

         
         
         if (existe){
         clienteIngresado.setNombreCliente("Cliente ya Existe");
             
         } else {
             String comandoSql = "insert into clientes(pasaporteId,paisPasaporte,nombreCliente,emailCliente,telefonoCliente) "
                     + "values('" + pasaporteId + "','" + paisPasaporte + "','" + nombreCliente + "','" + emailCliente + "','" + telefonoCliente + "')";
             
              try {
            conexionDB.ejecutarQuery(comandoSql);
    }catch (Exception e)
    {
        System.out.println("Error: " + e.getMessage());
    }   
            comandoSql = "SELECT TOP 1 * FROM clientes ORDER BY idCliente DESC";
        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            while (rs.next()){
                 idCliente = Integer.parseInt(rs.getString(1));
                    pasaporteId = rs.getString(2);
                    nombreCliente = rs.getString(3);
                    paisPasaporte = rs.getString(4);
                    emailCliente = rs.getString(5);
                    telefonoCliente = rs.getString(6);
                    
                     clienteConsultado =(new cliente(idCliente, pasaporteId, nombreCliente, emailCliente, paisPasaporte, telefonoCliente));
        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
         }
         
         

     return clienteConsultado;
     }
     
     public static boolean consultaClienteExiste(cliente clienteIngresado) {
        boolean existe = false;
        String pasaporteId = clienteIngresado.getPasaporteId();
        String paisPasaporte = clienteIngresado.getPaisPasaporte();
        
        String comandoSql = "select * from clientes where pasaporteId='"+ pasaporteId +"' and paisPasaporte= '" +paisPasaporte + "'";

        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            if (rs.next()){
                existe = true;
      
        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
       
        
        return existe ;
     }
    
    public static ArrayList<cliente> listaTodosClientes() {
          ArrayList<cliente> arregloClientes = new ArrayList<cliente>();
          
          ResultSet rs = null; // variable de registros o filas
          try {
            String comandoSql = "select * from clientes";
            rs = conexionDB.ejecutarQueryConRS(comandoSql) ;
  
            if (rs.next()){
                int idCliente = Integer.parseInt(rs.getString(1));
                    String pasaporteId = rs.getString(2);
                    String nombreCliente = rs.getString(3);
                    String paisPasaporte = rs.getString(4);
                    String emailCliente = rs.getString(5);
                    String telefonoCliente = rs.getString(6);
        arregloClientes.add(new cliente(idCliente, pasaporteId, nombreCliente, emailCliente, paisPasaporte, telefonoCliente));
       while (rs.next())
    { 
        idCliente = Integer.parseInt(rs.getString(1));
                    pasaporteId = rs.getString(2);
                    nombreCliente = rs.getString(3);
                    paisPasaporte = rs.getString(4);
                    emailCliente = rs.getString(5);
                    telefonoCliente = rs.getString(6);
        arregloClientes.add(new cliente(idCliente, pasaporteId, nombreCliente, emailCliente, paisPasaporte, telefonoCliente));
   
    }
  } else {
      arregloClientes.add(new cliente(0, "na", "na", "na", "na","na"));
      
  }
    
       
    
    }catch (Exception e)
    {
        System.out.println("Error: " + e.getMessage());
    }

        return arregloClientes;
    }

    
}
