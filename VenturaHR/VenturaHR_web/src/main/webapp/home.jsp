<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>VenturaHR</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
}
</style>
</head>
<body style="background-color: lightcyan">

    <h1 style="text-align: center">VenturaHR</h1>

<form action="j_security_check" method="post">
  <div class="imgcontainer">
    <img src="https://www.assespro-rs.org.br/site/wp-content/uploads/recursos-humanos-digital-1200x500.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="email"><b>E-mail:</b></label>
    <input type="text" placeholder="Entre com o e-mail" name="j_username">

    <label for="senha"><b>Senha:</b></label>
    <input type="password" placeholder="Entre com a senha" name="j_password">
        
    <button type="submit">Login</button>
    <br>

  </div>

</form>

<div class="imgcontainer"> 
    <form action="criarConta.html">
        <button type="submit" style="background-color: blue">Criar Conta</button>
    </form>
</div>
    
</body>
</html>