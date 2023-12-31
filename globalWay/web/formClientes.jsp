<%-- 
    Document   : formClientes
    Created on : 19 jul 2023, 21:28:05
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
      .formulario {
        margin: 35px;
      }

      .body__container {
        margin: 5% 10%;
        width: 70%;
        display: flex;
        flex-direction: column;
      }
    </style>
    <title>GlobalWay-Clientes</title>
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
      <h2 class="titulo" name="tituloH2">Nuevo Cliente</h2>
      <form class="formulario">
        <div class="cajaInputsClientes">
          <div class="mb-3">
            <label for="consCliente" class="form-label">Consecutivo:</label>
            <input type="text" class="form-control" id="consCliente" name="consCliente" disabled />
          </div>
          <div class="mb-3">
            <label for="idPasaporte" class="form-label">N° ID/Pasaporte:</label>
            <input
              required
              type="text"
              class="form-control"
              id="idPasaporte"
              name="idPasaporte"
              placeholder="AB-123456"
            />
          </div>
          <div class="mb-3">
            <label for="nacionalidadPasaporte" class="form-label">Nacionalidad de Id:</label>
            <input
              required
              type="text"
              class="form-control"
              id="nacionalidadPasaporte"
              name="nacionalidadPasaporte"
              placeholder="Costa Rica"
            />
          </div>
          <div class="mb-3">
            <label for="nombreCliente" class="form-label">Nombre</label>
            <input
              required
              type="text"
              class="form-control"
              id="nombreCliente"
              name="nombreCliente"
              placeholder="Nombre Apellido"
            />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input required type="email" class="form-control" id="email" name="email" placeholder="user@mail.com" />
          </div>
          <div class="mb-3">
            <label for="telefono" class="form-label">Telefono:</label>
            <input required type="text" class="form-control" id="telefono" name="telefono" placeholder="1234567890" />
          </div>
        </div>
        <button type="submit" class="btn btn-primary">Agregar Cliente</button>
        <button class="btn btn-info">Reset</button>

        <button class="btn btn-danger">Cancelar</button>
      </form>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>

