<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VenturaHR - Cadastro</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    
<body style="background-color: lightcyan">
    <div class="container">
        <h2 style="text-align: center">Cadastramento de Usuário</h2><br>
        <form class="form-horizontal" action="home.jsp" method="post">
            <div class="form-group">
                <label class="control-label col-sm-2" for="nome">Nome:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="nome">
             </div>
           </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="fone">Telefone:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="fone">
            </div>
        </div>  
        <div class="form-group">
            <label class="control-label col-sm-2" for="cpf">CPF:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="cpf">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="senha">Senha:</label>
            <div class="col-sm-10">          
                <input type="password" class="form-control" name="senha">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="endereco">Endereço</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="endereco">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="razaoSocial">Razão Social:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="razaoSocial">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="cnpj">CNPJ:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="cnpj">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tipo">Tipo:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tipo">
            </div>
        </div>
        <div class="form-group">        
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Cadastrar</button>
            </div>
          </div>
      </form>
    </div>
</body>
</html>
