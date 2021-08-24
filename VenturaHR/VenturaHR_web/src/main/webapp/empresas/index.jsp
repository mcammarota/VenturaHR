<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VenturaHR - Empresa</title>
    </head>
    <body>
        <h1>Empresas</h1>
        <h2>Bem Vindo ${usuario.nome}</h2>
        <c:if test="${not empty vagas}">
            <table style="width: 100%">
                <tr>
                    <th>Cargo</th>
                    <th>Cidade</th>
                    <th>Critérios</th>
                </tr>
                <c:forEach var="vaga" items="${vagas}">
                    <tr>
                        <td>${vaga.cargo}</td>
                        <td>${vaga.cidade}</td>
                        <td>
                            <c:forEach var="criterio" items="${vaga.criterioList}">
                                ${criterio.descricao}
                                <br>
                            </c:forEach>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
</html>
