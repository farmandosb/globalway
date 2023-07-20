<%-- 
    Document   : mantenimientoBaseDatos
    Created on : 19 jul 2023, 21:33:54
    Author     : JDEM_
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.moneda"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
    <style>
      .body__container {
        margin: 5%;
        display: flex;
        flex-direction: column;
      }
    </style>
    <title>GlobalWay-BD</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp" style="font-weight: bolder; font-size: 1.65rem; color: blue"
          >GlobalWay</a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
      <a
        class="navbar-brand"
        href="index.jsp"
        style="font-weight: bolder; font-size: 1rem; color: rgb(10, 89, 121); justify-self: center"
        >Home</a
      >
    </nav>
    <div class="body__container">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Consec. Moneda</th>
            <th scope="col">Nombre</th>
            <th scope="col">Pais Origen</th>
            <th scope="col">Cambio a USD</th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <% ArrayList<moneda> listaMonedas = (ArrayList) request.getSession().getAttribute("atributoMantenimientoMonedas");
               Iterator<moneda> iterador = listaMonedas.iterator();
               while(iterador.hasNext()){
                    moneda monedaImprimir = iterador.next();
                    String idMoneda = String.valueOf(monedaImprimir.getIdMoneda());
                    String paisOrigen = monedaImprimir.getPaisOrigen();
                    String nombreMoneda = monedaImprimir.getNombreMoneda();
                    String cambioUnDolar = String.valueOf(monedaImprimir.getCambioUnDolar());

                %>
                <tr>
                    <th scope="row"> <%= idMoneda%></th>
                    <td><%= paisOrigen%></td>
                    <td><%= nombreMoneda%></td>
                    <td><%= cambioUnDolar%></td>
                    <td>
                        <form action="svletMantenimientoMonedas" method="get">
                            <button class="btn btn-success" type="submit">Consultar</button>
                        </form>
                    </td>
                    <td>
                        <form action="svletMantenimientoMonedas" method="get">
                            <button class="btn btn-warning" type="submit">Modificar</button>
                        </form>
                    </td>
                    <td>
                        <form action="svletMantenimientoMonedas" method="get">
                            <button class="btn btn-danger" type="submit">Eliminar</button>
                        </form>
                    </td>
                </tr>
                
                <% }
                %>
        </tbody>
      </table>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>
