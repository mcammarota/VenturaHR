<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VenturaHR - Empresa</title>
    </head>
    <body style="background-color: lightcyan">
        
        <h1>Campo de Empresa</h1>
        <h2>Bem Vindo, ${usuario.nome}!</h2>
        <h3>Vagas publicadas:</h3>
        <c:if test="${not empty vagas}">
            <table border="1" cellpadding="3" cellspacing="0">
                <thead>
                    <tr>
                        <th scope="col">Cargo</th>
                        <th scope="col">Cidade</th>
                        <th scope="col">Critérios</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="vaga" items="${vagas}">
                        <tr>
                            <td>${vaga.cargo}</td>
                            <td>${vaga.cidade}</td>
                            <td>
                                <c:forEach var="criterio" items="${vaga.criterioList}">
                                    ${criterio.descricao} <br>      
                                </c:forEach>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>   
            </table>   
        </c:if>
        <br>
        <a href="/publicarVaga" class="button">Publicar Vaga</a>
    </body>
</html>
