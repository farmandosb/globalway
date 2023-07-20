<%-- 
    Document   : formReservas
    Created on : 19 jul 2023, 21:31:55
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
      .cajaDatosReserva {
        width: 100%;
        height: 40vh;
        display: flex;
        justify-content: space-around;
        flex-direction: column;
        align-items: center;
      }
      .cajaSelect {
        width: 90%;
        display: flex;
        justify-content: space-evenly;
      }
      .cajaSelect div {
        width: max(40%, 200px);
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
      <form action="">
        <div class="cajaFormulario">
          <div class="mb-3">
            <h3 class="cajaFormulario__h3">Datos Cliente</h3>
            <label for="idPasaporteCliente" class="form-label">ID/Pasaporte Cliente:</label>
            <input
              type="text"
              class="form-control"
              id="idPasaporteCliente"
              name="idPasaporteCliente"
              placeholder=""
              disabled
            />
          </div>
          <div class="mb-3">
            <label for="nombreCliente" class="form-label">Nombre Cliente:</label>
            <input type="text" class="form-control" id="nombreCliente" name="nombreCliente" placeholder="" disabled />
          </div>
          <div class="mb-3">
            <label for="emailCliente" class="form-label">Email Cliente:</label>
            <input type="text" class="form-control" id="emailCliente" name="emailCliente" placeholder="" disabled />
          </div>

          <h3 class="cajaFormulario__h3">Datos Reserva</h3>
          <section class="cajaDatosReserva">
            <div class="mb-3">
              <label for="consReserva" class="form-label">Consecutivo Reserva:</label>
              <input type="text" class="form-control" id="consReserva" name="consReserva" disabled />
            </div>
            <div class="cajaSelect">
              <div class="form-floating">
                <select
                  class="form-select"
                  id="selectMonedaRecibida"
                  namme="selectMonedaRecibida"
                  aria-label="Floating label select example"
                >
                  <option selected>Dolar</option>
                  <option value="1">Colon</option>
                  <option value="2">Peso Colombiano</option>
                  <option value="3">Lempira</option>
                </select>
                <label for="selectMonedaRecibida">Moneda Recibida:</label>
              </div>
              <div class="form-floating">
                <select
                  class="form-select"
                  id="selectMonedaEntrada"
                  name="selectMonedaEntrada"
                  aria-label="Floating label select example"
                >
                  <option selected>Dolar</option>
                  <option value="1">Colon</option>
                  <option value="2">Peso Colombiano</option>
                  <option value="3">Lempira</option>
                </select>
                <label for="selectMonedaEntrada">Moneda Despachada:</label>
              </div>
            </div>

            <div class="form-check">
              <input class="form-check-input" type="radio" name="radButConvercion" id="flexRadioDefault1" checked />
              <label class="form-check-label" for="flexRadioDefault1"> Convertir de M Recibida a M Despachada </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="radButConvercion" id="flexRadioDefault2" />
              <label class="form-check-label" for="flexRadioDefault2"> Convertir de M Despachada a M Recibida </label>
            </div>
            <div class="cajaInputsMoneda">
              <div class="mb-3">
                <label for="cantMonedaRecibida" class="form-label">Cantidad M. Recibida:</label>
                <input
                  type="number"
                  class="form-control"
                  id="cantMonedaRecibida"
                  name="cantMonedaRecibida"
                  placeholder="999.05"
                />
              </div>
              <div class="mb-3">
                <label for="cantMonedaDespachada" class="form-label">Cantidad M. Despachada:</label>
                <input
                  type="number"
                  class="form-control"
                  id="cantMonedaDespachada"
                  name="cantMonedaDespachada"
                  placeholder="999.05"
                />
              </div>
            </div>
            <button class="btn btn-info">Convertir</button>
          </section>
          <h3 class="cajaFormulario__h3">Resumen Transaccion</h3>
          <div class="cajeResumen">
            <p class="linea">A pagar:</p>
            <p class="linea">monto conversion</p>
            <p class="linea">comision:</p>
            <p class="linea">total a pagar:</p>
            <p class="linea">total a pagar:</p>
          </div>
        </div>
        <button type="submit" class="btn btn-primary">Confirmar Reserva</button>
        <button class="btn btn-info">Reset</button>

        <button class="btn btn-danger">Cancelar</button>
      </form>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>

