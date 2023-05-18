<%@page import="entidades.Usuario"%>
<%@page import="entidades.Pedido" %>
<%@page import="entidades.Comidas" %>
<%@page import="DAO.ComidaDAO"%>
<%@page import="DAO.PedidoDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<%
    HttpSession session4 = request.getSession(false);

    if (session4 != null) {

    Usuario usu=(Usuario)session4.getAttribute("usuario");
    if(usu!=null){

%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Ordenar producto</title>
</head>
<body>
    <%
    ComidaDAO comD=new ComidaDAO();
    Comidas com=new Comidas();
    int id=Integer.parseInt(request.getAttribute("id"));
    com=comD.buscarss(id);
    
    %>
    <div class="cardd">
        <div class="imgBox">
            <img src="<%=com.getImg()%>" alt="img del producto">
        </div>
        <div class="detailss">
            <div class="titlee">
                <h3>
                    <%=com.getNombre()%>                </h3>
                <small>
                    Comidita
                </small>
            </div>
            <div class="description">
                <h4>
                    descripcion
                </h4>
                <p><%=com.getDescripcion()%>
                </p>
            </div>
        <div class="buy">
            <div class="precio">
                <sup>$</sup>
                <span><%=com.getPrecio()%></span>
            </div>
            <div class="bton">
                <form action="SvUsuarios" method="Post">
                    <input type="hidden" name="id" value="<%=com.getId()%>">
                    <input type="submit" name="accion" value="Realizar Pedido">
                    
                </form>
            </div>
        </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</body>
</html>
<%}


}
%>