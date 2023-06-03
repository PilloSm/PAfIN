<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@page import="entidades.Cliente"%>
<%@page import="entidades.Usuario"%>
<%@page import="entidades.Comidas"%>
<%@page import="entidades.Pedido" %>
<%@page import="entidades.Detalle"%>
<%@page import="DAO.DetalleDAO"%>
<%@page import="DAO.ComidaDAO"%>
<%@page import="DAO.PedidoDAO"%>
<%@page import="DAO.ClienteDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
HttpSession session4=request.getSession(false);
if(session4!=null){
Usuario caja=(Usuario)session4.getAttribute("caja");
if(caja!=null){

%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/al.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Document</title>
    </head>
    <body>
        <nav>
            <ul>
                <ul>
                    <li><a href="./indexCaja.jsp"> Home </a></li> 
                    <li><a href="./agregarAlimento.jsp"> Agregar alimento </a></li>
                    <LI><a href="./comidas.jsp"> Stock de alimentos</a></LI>
                    <li><a href="./agregarsaldo.jsp">Agregar Saldo</a> </li>
                    <li><form action="ServletCaja" method="Post" class="text-center">
                            <input type="submit"name="accion" value="Cerrar Sesi�n" class="btn btn-danger">
                        </form>
                    </li>
                </ul>
            </ul>
        </nav>
        <header>Stock de Alimentos</header>
        <div class="table-container">
            <div class="table-scroll">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Alimento</th>
                            <th scope="col">Unidades Restantes</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <%
                        ComidaDAO comD=new ComidaDAO();
                        Comidas com;
                        List<Comidas>lista=comD.imprimir();
                        System.out.println(lista.size());
                        for(Comidas come: lista){
                        %>
                        <tr>
                            <td><%=come.getId()%></td>
                            <td><%=come.getNombre()%></td>
                            <td>
                                <form action="ServletCaja" method="Post">
                                    <input type="hidden" name="id" value="<%=come.getId()%>">
                                    <input type="number" name="cantidad" step="0" min="1" value="<%=come.getEstado()%>">
                                    <input type="submit" name="accion" value="Cambiar stock" id="bton">
                                </form>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
<%
    }
else{
response.sendRedirect("index.jsp");
}

}
else{
response.sendRedirect("index.jsp");
}

%>