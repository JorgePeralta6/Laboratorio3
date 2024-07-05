<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top position-relative">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">Sistema de gestion de Productos</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistema de gestion de Productos</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link" href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../formulario-productos/formulario-productos.jsp">Formulario de productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Lista de productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container position-relative mt-5"> 
            <table class="table table-bordered border-primary">
                <thead>
                    <tr>
                        <th scope="col">No. producto#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Descripcion</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Helado de chocolate</td>
                        <td>Sarita</td>
                        <td>Q9.00</td>
                        <td>Rico helado con sabor a chocolate</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jugo De Naranja</td>
                        <td>La Granja</td>
                        <td>Q16.00</td>
                        <td>Jugo de naranja con pulpa</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td >Desodorante</td>
                        <td>Nivea</td>
                        <td>Q12.00</td>
                        <td>Desplama un gran olor</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
