<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@page import="entidades.Usuario"%>
<%@page import="entidades.Pedido" %>
<%@page import="DAO.ComidaDAO"%>
<%@page import="DAO.PedidoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator" %>
<!DOCTYPE html>
<html lang="en">
<%
    HttpSession session3 = request.getSession(false);

    if (session != null) {

    Usuario usu=(Usuario)session3.getAttribute("usuario");
    if(usu!=null){

%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="./Boostrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estilossaldo.css">
    <title>Saldo</title>
</head>

<body>
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
        <h1>Saldo</h1>
        <h1 id="numcuenta" class="text-center mt-4 mb-4"><%=usu.getNombre()%><br><%=usu.getNo_cuenta()%></h1>
        <div class="numsaldo">
            <img src="./graficos/iconos/bx-dollar-circle.svg"><%=usu.getSaldo()%>
        </div>
        <table class="table table-sm mt-4">
            <thead>
                <th scope="col"></th>
                    <th scope="col">Fecha</th>
                    <th scope="col">Monto</th>
                    <th scope="col">Producto</th>
            </thead><%
            PedidoDAO peD=new PedidoDAO();
            Iterator<Pedido> it=peD.visualizar_pedidos_vista_cliente(usu.getNo_cuenta()).iterator();
            Pedido pe=null;
            ComidaDAO comD=new ComidaDAO();
            while(it.hasNext()){
            pe=it.next();
            %>
            <tbody>
                    <tr>
                        <th scope="row"><img src="../graficos/iconos/bx-time.svg"></th>
                        <td><%=pe.getFecha()%></td>
                        <td><%=pe.getPrecio()%></td>
                        <td><%=comD.buscar_por_id(pe.getId_comida())%></td>
                    </tr>
                    <%}%>
                </tbody>
        </table>

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
<%}
else{
%> 

<%
}
}
else
{
%>


<%
}
%>
