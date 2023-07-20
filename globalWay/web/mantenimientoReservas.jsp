<%-- 
    Document   : mantenimientoReservas
    Created on : 19 jul 2023, 21:34:23
    Author     : JDEM_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        display: flex;
        background-color: gray;
        justify-content: center;
        align-items: center;
        height: 50vh;
      }
    </style>
    <title>GlobalWay-HomePage</title>
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
    <div class="body-container">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Consec.</th>
            <th scope="col">ID/Pasaporte Cliente</th>
            <th scope="col">Nombre Cliente</th>
            <th scope="col">Moneda Recibida</th>
            <th scope="col">Total a Pagar</th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>

