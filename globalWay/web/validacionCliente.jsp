<%-- 
    Document   : validacionCliente
    Created on : 19 jul 2023, 21:35:22
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
      form {
        margin: 10px;
      }
      h2 {
        margin: 30px;
      }
      .body__container {
        margin: 5% 10%;
        width: 70%;
        display: flex;
        flex-direction: column;
      }
    </style>
    <title>GlobalWay-Reservas</title>
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
      <h2>Buscar Cliente para Reserva</h2>
      <form class="formulario">
        <div class="cajaInputsClientes">
          <div class="mb-3">
            <label for="consCliente" class="form-label">Id/Pasaporte:</label>
            <input type="text" class="form-control" id="consCliente" name="consCliente" />
          </div>
        </div>

        <button type="submit" class="btn btn-primary">Buscar por ID</button>
        <br />
      </form>
      <form class="formulario">
        <div class="cajaInputsClientes">
          <div class="mb-3">
            <label for="consCliente" class="form-label">Mail:</label>
            <input type="text" class="form-control" id="consCliente" name="consCliente" />
          </div>
        </div>

        <button type="submit" class="btn btn-primary">Buscar por Email</button>
        <br />
      </form>
      <form class="formulario">
        <div class="cajaInputsClientes">
          <div class="mb-3">
            <label for="consCliente" class="form-label">Consecutivo Cliente:</label>
            <input type="text" class="form-control" id="consCliente" name="consCliente" />
          </div>
        </div>
        <button type="submit" class="btn btn-primary">Buscar por Consecutivo</button>
        <br />
      </form>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>
