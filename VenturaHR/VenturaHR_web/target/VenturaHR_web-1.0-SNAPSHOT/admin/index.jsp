<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body style="background-color: lightcyan">
        
        <h1>Campo de Administrador</h1>
        <h2>Bem Vindo, ${usuario.nome}!</h2>
        <h3>Todos os usuários cadastrados:</h3>
        
        <c:if test="${empty usuarios}">
        <h3>Não há usuários cadastrados!</h3>
        </c:if>
        
        <c:if test="${not empty usuarios}">
            <table class="table table-striped" border="1">
                <thead>
                    <tr>
                        <th scope="col">Nome</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">CPF</th>
                        <th scope="col">CNPJ</th>
                        <th scope="col">Tipo</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${usuarios}">
                    <tr>
                        <td>${user.nome}</td>
                        <td>${user.email}</td>
                        <td>${user.cpf}</td>
                        <td>${user.cnpj}</td>
                        <td>${user.tipo}</td>
                    </tr>
                </c:forEach>
                </tbody>   
            </table>   
        </c:if>
        <br>
    </body>
</html>