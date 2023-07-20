/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servLets;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import logica.moneda;

/**
 *
 * @author JDEM_
 */
public class svletNuevaMoneda extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nombreMoneda=null;
        String paisMoneda=null;
        double comisionPorcentaje=0;
        double  cambioUnDolar=0;
        paisMoneda = request.getParameter("PaisOrigenMoneda");
        nombreMoneda = request.getParameter("nombreMoneda");
        cambioUnDolar = Double.parseDouble(request.getParameter("tipoCambio")) ;
        comisionPorcentaje = Double.parseDouble(request.getParameter("comision")) ;
        moneda monedaIngresada = new moneda(0, paisMoneda, nombreMoneda, cambioUnDolar, comisionPorcentaje);
        moneda monedaConfirmacion = moneda.setMonedaObjeto(monedaIngresada);
        
        
        PrintWriter out = response.getWriter();
        
        try {
            
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Exito</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>se ha agregado la Siguiente Moneda "+ monedaConfirmacion.getNombreMoneda() +" con exito:</h1>");
            out.println("<p>Nombre: "+ monedaConfirmacion.getPaisOrigen()+" </p>");
            out.println("<p>Pais: "+ monedaConfirmacion.getNombreMoneda() +" </p>");
            out.println("<p>Tipo Cambio: "+ String.valueOf(monedaConfirmacion.getCambioUnDolar())+" </p>");
            out.println("<p>Comision: "+ String.valueOf(monedaConfirmacion.getComisionPorcentaje()) +" </p>");
            out.println("<a href=\"index.jsp\">Comision: "+ "Home" +"% </a>");
            
            
            out.println("</body>");
            out.println("</html>");
             
        } finally { 
            out.close();
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*  processRequest(request, response);
        ArrayList<moneda> arregloMonedas = new ArrayList<moneda>();
        HttpSession sesion = request.getSession();
        moneda pruebaMoneda = new logica.moneda(1,"", "", 0, 0);
        arregloMonedas.add(pruebaMoneda);
        sesion.setAttribute("atributoNuevaMoneda", arregloMonedas); */
        response.sendRedirect("formMonedas.jsp");
    }
    
        
        

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
