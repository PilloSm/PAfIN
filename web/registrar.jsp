<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./Boostrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estiloregistrar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <title>Registrarse</title>
</head>

<body>

    <div id="sideNavigation" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="text-center">
            <img src="./graficos/imagenes/Click Lunch Final 2.png" alt="Logo" class="img-fluid">
        </div>
        <a href="./index.jsp">Home</a>
            <a href="./inicio.jsp">Iniciar Sesión</a>
            <a href="./registrar.jsp">Registrarse</a>
            <a href="./menu.jsp">Menú</a>
    </div>
    <nav class="navbar topnav navbar-expand-lg">
        <a href="#" onclick="openNav()">
            <svg width="30" height="30" id="icoOpen">
                <path d="M0,5 30,5" stroke="#000" stroke-width="5" />
                <path d="M0,14 30,14" stroke="#000" stroke-width="5" />
                <path d="M0,23 30,23" stroke="#000" stroke-width="5" />
            </svg>
        </a>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link">Tu comida un click de distancia</a>
                </li>
            </ul>
        </div>
        <a class="nav-link" id="title">Click Lunch</a>
    </nav>

    <div class="container d-flex flex-column align-items-center justify-content-center" style="height: 100vh">

        <form class="p-3 bg-light text-left mx-auto rounded" style="width: 40vh" action="SvUsuarios" method="Post">
            <h1 class="text-center">Registrate</h1>
            <div class="mb-3">
                <label for="inputusuario" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="inputusuario" name="nombre" placeholder="Nombre de Usuario"
                    required>
            </div>
            <div class="mb-3">
                <label for="inputusuario" class="form-label">Usuario</label>
                <input type="text" class="form-control" id="inputusuario" name="usuario" placeholder="Nombre de Usuario"
                    required>
            </div>
            <div class="mb-3">
                <label for="inputcorreo" class="form-label">Correo</label>
                <input type="email" class="form-control" id="inputcorreo" name="correo" placeholder="Correo Electronico"
                    required>
            </div>
            <div class="mb-3">
                <label for="inputcontra" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="inputcontra" name="contra" placeholder="Contraseña"
                    required>
            </div>
            <div class="mb-3">
                <label for="inputcontra1" class="form-label">Confirmar Contraseña</label>
                <input type="password" class="form-control" id="inputcontra1" name="contra1" placeholder="Contraseña"
                    required>
            </div>
            <div class="text-center">
                <button type="submit" id="boton" class="btn btn-primary mb-3" name="accion" value="Registro">Crear Cuenta</button>
                <p><a href="./inicio.jsp">¿Ya tienes cuenta? Inicia sesión</a></p>
            </div>

        </form>
    </div>

    <footer class=" py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h4>Contacto</h4>
                    <p>Teléfono: 123-456-7890</p>
                    <p>Email: info@clicklunch.com</p>
                    <div class="redes">
                        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <h4>Horario</h4>
                    <p>Lunes a Viernes: 7:00 AM - 8:00 PM</p>
                    <p>Domingos y Sabados: Cerrado</p>
                </div>
            </div>
            <hr>
            <div class="text-center">
                <p>&copy; 2023 Click Lunch - Inno-Tech
                </p>
            </div>
        </div>
    </footer>

    <script src="./js/inicio.js"></script>
    <script src="./Boostrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
