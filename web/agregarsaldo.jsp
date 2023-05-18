<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="./css/saldo.css">
    <title>Document</title>
</head>
<body>
    <header>
        <h1>Agregar Saldo</h1>
    </header>
    <form>
        <div class="left">
            <div class="input-group input-group-lg" id="numecuenta">

            </div>     
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                  <span class="input-group-text">$</span>
                </div>
                <input type="number" step="10" placeholder="0.00" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" min="10" id="amountInput">
              </div>
              
              <br><br>
              
              <select class="form-select form-select-sm" id="amountSelect" aria-label=".form-select-sm example">
                <option selected>Elije el monto a recargar</option>
                <option value="1">$20</option>
                <option value="2">$30</option>
                <option value="3">$50</option>
                <option value="4">$100</option>
              </select>
              
                <input class="btn" type="submit" value="Recargar">
        </div>
    </form>
    <div class="right">
        
        <div class="table-container">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Fecha</th>
                <th scope="col">Número de Cuenta</th>
                <th scope="col">Monto</th>
              </tr>
            </thead>
            <tbody class="table-group-divider">
              <tr>
                <th scope="row">1</th>
                <td>10/04/2023</td>
                <td>029329023</td>
                <td>$20</td>
              </tr>
            </tbody>
          </table>
        </div>
    </div>
      <script src="./js/valid.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</body>
</html>
