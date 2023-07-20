<%-- 
    Document   : formMonedas
    Created on : 19 jul 2023, 21:31:28
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
        margin: 5% 10%;
        width: 70%;
        display: flex;
        flex-direction: column;
      }
    </style>
    <title>GlobalWay-Monedas</title>
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
      <h2 class="titulo" name="tituloH2">Nueva Moneda</h2>

      <form class="formulario" action="svletNuevaMoneda" method="post">
        <div class="cajainputMonedas">
          <div class="mb-3">
            <label for="consMoneda" class="form-label">Consecutivo Moneda:</label>
            <input type="text" class="form-control" id="consMoneda" disabled />
          </div>

          <div class="mb-3">
            <label for="PaisOrigenMoneda" class="form-label">Pais Origen:</label>
            <input
              required
              type="text"
              class="form-control"
              id="PaisOrigenMoneda"
              name="PaisOrigenMoneda"
              placeholder="Costa Rica"
            />
          </div>
          <div class="mb-3">
            <label for="nombreMoneda" class="form-label">Nombre Moneda:</label>
            <input
              required
              type="text"
              class="form-control"
              id="nombreMoneda"
              name="nombreMoneda"
              placeholder="nombre Moneda"
            />
          </div>
          <div class="mb-3">
            <label for="tipoCambio" class="form-label">Equivalente a Un (1) Dolar (USD)</label>
            <input required type="number" class="form-control" id="tipoCambio" name="tipoCambio" placeholder="550" />
          </div>
          <div class="mb-3">
            <label for="comision" class="form-label">Comision ( 0 a 100 %, escribir solo el numero)</label>
            <input required type="number" class="form-control" id="comision" name="comision" placeholder="3" />
          </div>
        </div>
        <button required type="submit" class="btn btn-primary">Confirmar Moneda</button>
        <button class="btn btn-info">Reset</button>
        <button class="btn btn-danger">Cancelar</button>
      </form>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>

