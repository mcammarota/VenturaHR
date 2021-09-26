<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <title>VenturaHR - Candidato</title>
    </head>
    <body style="background-color: lightcyan">

        <br>
        <h1 style="text-align: center">Campo de Candidato</h1>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;Bem Vindo, ${usuario.nome}!</h2>
        <br>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;Vagas cadastradas no VenturaHR:</h3>
        <br>
        
        <div class="container mb-3 mt-3">
        <c:if test="${empty vagas}">
        <h3>Não há vagas publicadas!</h3>
        </c:if>
        
        <c:if test="${not empty vagas}">
            <table id="tableVagas" class="table table-striped table-bordered" style="width:80%">
                <thead>
                    <tr>
                        <th>Cargo</th>
                        <th>Cidade</th>
                        <th>Critérios</th>
                        <th>Perfil</th>
                        <th>Peso</th>
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
                            <td>
                                <c:forEach var="criterio" items="${vaga.criterioList}">
                                    ${criterio.perfil} <br>      
                                </c:forEach>
                            </td>
                            <td>
                                <c:forEach var="criterio" items="${vaga.criterioList}">
                                    ${criterio.peso} <br>      
                                </c:forEach>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr>
                        <th>Cargo</th>
                        <th>Cidade</th>
                        <th>Critérios</th>
                        <th>Perfil</th>
                        <th>Peso</th>
                    </tr>
                </tfoot>
            </table>   
        </c:if>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudfare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                     $('#tableVagas').dataTable();
            } );
        </script>
        
    </body>
</html>
