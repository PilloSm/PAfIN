<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@page import="entidades.Usuario"%>
<!DOCTYPE html>

<%
    HttpSession session = request.getSession(false);

    if (session != null) {
    Usuario usu=(Usuario)session.getAttribute("usuario");
    if(usu.getNivel()==2){

%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/add.css">
  <link rel="icon" href="./img/icono.ico">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <title>Agregar Producto</title>
</head>

<body>
  <p class="text-xl-start">Agregar producto al menú</p>
  <div class="card rotate-vert-center" id="myElement">
    <form>
      <label for="imageUpload" id="previewLink" class="hiddenFileInput">
        <input type="file" name="theFile" id="imageUpload" accept="image/*" />
        <img id="previewImage" class="card-img" src="../img/img2.png" alt="."  style="width: 100%; height: auto;">
      </label>
    </form>
    <div class="card-body">
      <h5 class="card-title" id="cardTitle">Agregar Producto</h5>
      <p id="cardDescription" class="card-text"style="text-align: left;">Agrega una descripción para el producto</p>
      <br>
      <a href="#" class="btn btn-primary">Comprar</a>
    </div>
  </div>
  <div class="form-floating" style="position: absolute; top:15%; left: 5%;">
    <textarea class="form-control" placeholder="Leave a comment here" id="productName" pattern="^[a-zA-Z]+$"
      style="width: 70%" maxlength="15"></textarea>
    <label for="productName">Nombre del Producto</label>
  </div>
  <div class="form-floating" style="position: absolute; top:27%; left: 5%;">
    <textarea class="form-control" placeholder="Leave a comment here" id="productDescription" pattern="^[a-zA-Z]+$"
      style="height: 150px; width: 70%" maxlength="50"></textarea>
    <label for="productDescription">Descripcion</label>
  </div>
  <div class="form-floating" style="position: absolute; top:52%; left: 5%;">
    <textarea class="form-control" placeholder="Leave a comment here" id="productDescription" pattern="^[a-zA-Z]+$"
      style="height: 60px; width: 70%" maxlength="100" resize="none"></textarea>
    <label for="productDescription">Precio</label>
  </div>
  <div class="button-container">
    <a href="#" class="btn btn-primary" style="color: #CCCCCC;" id="myButton">Guardar cambios</a>
  </div>
  <style>
    .button-container {
      position: absolute;
      bottom: 25%;
      left: 5%;
    }
  </style>
  <script>
    const button = document.getElementById('myButton');
    const element = document.getElementById('myElement');

    button.addEventListener('click', function () {
      element.classList.add('animate');
    });
  </script>
  <script>
    const imageUpload = document.getElementById('imageUpload');
    const previewImage = document.getElementById('previewImage');

    imageUpload.addEventListener('change', () => {
      const file = imageUpload.files[0];
      if (file) {
        const reader = new FileReader();
        reader.addEventListener('load', () => {
          previewImage.setAttribute('src', reader.result);
        });
        reader.readAsDataURL(file);
      }
    });
  </script>
  
 <script>
  const productNameTextarea = document.getElementById("productName");
  const productDescriptionTextarea = document.getElementById("productDescription");
  const cardTitle = document.getElementById("cardTitle");
  const cardDescription = document.getElementById("cardDescription");

  productNameTextarea.addEventListener("input", function () {
    cardTitle.textContent = productNameTextarea.value.slice(0, 15);
  });

  productDescriptionTextarea.addEventListener("input", function () {
    cardDescription.textContent = productDescriptionTextarea.value.slice(0, 50);
    cardDescription.style.textAlign = 'left';
  });
</script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous"></script>


  <canvas class="background"></canvas>
  <script src="../js/particles.min.js"></script>
  <br><br><br><br><br>
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


</body>

</html>
<%}
else{


}

%>
