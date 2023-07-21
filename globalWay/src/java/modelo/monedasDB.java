/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.moneda;
/**
 *
 * @author JDEM_
 */
public class monedasDB {
    
    public static moneda crearMonedaConId(moneda monedaIngresada){
      int idMoneda= monedaIngresada.getIdMoneda();
             String paisOrigen;
             String nombreMoneda;
             double cambioUnDolar;
             double comisionPorcentaje;
         
           
            String comandoSql = "select * from monedas where idMoneda="+idMoneda;
        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            while (rs.next()){
                 idMoneda = Integer.parseInt(rs.getString(1));
                    paisOrigen = rs.getString(2);
                    nombreMoneda = rs.getString(3);
                    cambioUnDolar = Double.parseDouble(rs.getString(4));
                    comisionPorcentaje = Double.parseDouble(rs.getString(5));
                    monedaIngresada =(new moneda(idMoneda, paisOrigen, nombreMoneda, cambioUnDolar, comisionPorcentaje));

        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }

        return monedaIngresada;
     }
    
    public static moneda eliminarMoneda(moneda monedaIngresada) {
        int idMoneda= monedaIngresada.getIdMoneda();
        String comandoSql = "delete monedas where idMoneda =" + idMoneda;
        monedaIngresada = crearMonedaConId( monedaIngresada);
         try {
            conexionDB.ejecutarQuery(comandoSql);
            }catch (Exception e)
            {
                System.out.println("Error: " + e.getMessage());
            }   
        return monedaIngresada;
    }
    
     public static moneda insertarMoneda(moneda monedaIngresada) {
         moneda monedaConsultada = new moneda();
         
         boolean existe =  consultaMonedaExiste(monedaIngresada);
             int idMoneda= monedaIngresada.getIdMoneda();
             String paisOrigen= monedaIngresada.getPaisOrigen();
             String nombreMoneda= monedaIngresada.getNombreMoneda();
             double cambioUnDolar= monedaIngresada.getCambioUnDolar();
             double comisionPorcentaje= monedaIngresada.getComisionPorcentaje();

         
         
         if (existe){
         monedaConsultada.setNombreMoneda("monedaRepetida");
             
         } else {
             String comandoSql = "INSERT INTO monedas(paisOrigen,nombreMoneda,cambioUnDolar,comisionPorcentaje)"
                     + " VALUES ('"+ paisOrigen +"','"+ nombreMoneda +"',"+ cambioUnDolar +","+ comisionPorcentaje +")";
             
              try {
            conexionDB.ejecutarQuery(comandoSql);
    }catch (Exception e)
    {
        System.out.println("Error: " + e.getMessage());
    }   
            comandoSql = "select * from monedas where nombreMoneda='"+nombreMoneda+"'";
        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            while (rs.next()){
                 idMoneda = Integer.parseInt(rs.getString(1));
                    paisOrigen = rs.getString(2);
                    nombreMoneda = rs.getString(3);
                    cambioUnDolar = Double.parseDouble(rs.getString(4));
                    comisionPorcentaje = Double.parseDouble(rs.getString(5));
                    monedaConsultada =(new moneda(idMoneda, paisOrigen, nombreMoneda, cambioUnDolar, comisionPorcentaje));

        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
         }
         
         

     return monedaConsultada;
     }
     
     public static boolean consultaMonedaExiste(moneda monedaIngresada) {
        boolean existe = false;
        boolean paisExiste = false;
        boolean nombreMonedaExiste = false;
        String nombreMonedaIngresada = monedaIngresada.getNombreMoneda();
        String paisMonedaIngresada = monedaIngresada.getPaisOrigen();
        
        String comandoSql = "select * from monedas where paisOrigen='"+paisMonedaIngresada+"'";
        
        
        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            if (rs.next()){
                paisExiste = true;
      
        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        comandoSql = "select * from monedas where paisOrigen='"+nombreMonedaIngresada+"'";
        try{
            ResultSet rs = conexionDB.ejecutarQueryConRS(comandoSql);
            if (rs.next()){
                nombreMonedaExiste = true;

        }}
        catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        
        if (nombreMonedaExiste || paisExiste ){
            existe = true;
     }
        
        return existe ;
     }
    
    public static ArrayList<moneda> listaTodasMonedas() {
          ArrayList<moneda> arregloMonedas = new ArrayList<moneda>();
          Connection cn = null; // variable de conexion
          Statement st = null;  // variable de instruccion SQL
          ResultSet rs = null; // variable de registros o filas
          
          try {
            conexionDB objAppConfig = new conexionDB();
            String connectionUrl = objAppConfig.obtenerStringCon();
                 
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               

                    cn = DriverManager.getConnection(connectionUrl);
                    st = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                            ResultSet.CONCUR_READ_ONLY);
        
            rs = st.executeQuery("select * from monedas");
  if (rs.next()){
      int idMoneda = Integer.parseInt(rs.getString(1));
        String paisOrigen = rs.getString(2);
        String nombreMoneda = rs.getString(3);
        double cambioUnDolar = Double.parseDouble(rs.getString(4));
        double comisionPorcentaje = Double.parseDouble(rs.getString(5));
        arregloMonedas.add(new moneda(idMoneda, paisOrigen, nombreMoneda, cambioUnDolar, comisionPorcentaje));
       while (rs.next())
    { 
        idMoneda = Integer.parseInt(rs.getString(1));
        paisOrigen = rs.getString(2);
        nombreMoneda = rs.getString(3);
        cambioUnDolar = Double.parseDouble(rs.getString(4));
        comisionPorcentaje = Double.parseDouble(rs.getString(5));
        arregloMonedas.add(new moneda(idMoneda, paisOrigen, nombreMoneda, cambioUnDolar, comisionPorcentaje));
   
    }
  } else {
      arregloMonedas.add(new moneda(0, "na", "na", 0, 0));
      
  }
    
       
       /*
    String insertar = "INSERT INTO cliente(id,nombre,telefono) VALUES ('4','Marco vargas','69857477')";
   // st.executeUpdate(insertar);
 
  String update = "update cliente set nombre = 'Carlos Torres' where id = 2 ";
  //     st.executeUpdate(update);
 String del = "delete cliente where id = 3 ";
  //     st.executeUpdate(del);
      
      */
    }catch (Exception e)
    {
        System.out.println("Error: " + e.getMessage());
    }

        return arregloMonedas;
    }
}
