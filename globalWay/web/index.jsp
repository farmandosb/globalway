<%-- 
    Document   : index
    Created on : 19 jul 2023, 20:04:46
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
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="validacionCliente.jsp" style="font-weight: bold"
                >Nueva Transaccion</a
              >
            </li>

            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Reservas
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a class="dropdown-item" href="validacionCliente.jsp">Nueva Reserva</a>
                </li>
                <li>
                  <a class="dropdown-item" href="mantenimientoReservas.jsp ">Busqueda Reservas</a>
                </li>
              </ul>
            </li>

            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Clientes
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a class="dropdown-item" href="formClientes.jsp ">Nuevo Cliente</a>
                </li>
                <li>
                  
                  <form action="svletMantenimientoClientes" method="get">
                    <button class="dropdown-item" type="submit">Mantenimiento Clientes</button>
                  </form>
                </li>
              </ul>
            </li>

            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Monedas
              </a>
              <ul class="dropdown-menu">
                <li>
                  <form action="servletMonedasDisponivles" method="get">
                    <button class="dropdown-item" type="submit">Mostrar Monedas</button>
                  </form>
                </li>
                <li>
                  <form action="svletNuevaMoneda" method="get">
                    <button class="dropdown-item" type="submit">Nueva Moneda</button>
                  </form>
                </li>
                <li>
                  <form action="svletMantenimientoMonedas" method="get">
                    <button class="dropdown-item" type="submit">Mantenimietno Monedas</button>
                  </form>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="body__container">
      <div class="presentacion">
        <h1 class="presentacion__h1">Bienvenido a Global Way</h1>
        <h3 class="presentacion__h3">Casa de cambio conveniente y rapida</h3>
      </div>
      <div class="imagenHome">
        <figure>
          <img
            src="https://c.pxhere.com/images/9a/9e/56521f0c75315ca3ae63492d7b4a-1445659.jpg!d"
            srcset="https://c.pxhere.com/images/9a/9e/56521f0c75315ca3ae63492d7b4a-1445659.jpg!d"
            alt="money transfer globe"
            width="500"
            height="500"
          />
        </figure>
      </div>
    </div>
    <footer class="footer">
      <p>Copyright &copy; Colegio Universitario de Cartago 2023</p>
    </footer>
  </body>
</html>
