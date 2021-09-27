<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        <form action="usuarios" method="post">

            <div class="imgcontainer">
                <img src="https://www.assespro-rs.org.br/site/wp-content/uploads/recursos-humanos-digital-1200x500.png" alt="Avatar" class="avatar">
            </div>

            <div class="container-fluid bg-3 text-center">
                <div class="row">
                    <div class="col-sm-3">
                        <h2><b>&nbsp;&nbsp;&nbsp;Introdução</b></h2>
                        <p class="text-justify">&nbsp;&nbsp;&nbsp;O RH 2.0 ganhou protagonismo e está sendo promovido a área estratégica, essencial para a tomada de decisão e crescimento do negócio.
                            Problemas antigos como a dificuldade em medir o retorno sobre o investimento (ROI) das ações, ineficiência do &nbsp;&nbsp;&nbsp;recrutamento e baixo desempenho em treinamentos já têm suas soluções tecnológicas sob medida.
                            As HRTechs são startups que desenvolvem soluções tecnológicas para a área de Recursos Humanos (Human Resources), agregando inteligência aos processos. &nbsp;&nbsp;&nbsp;A missão dessas empresas é levar a inovação ao RH, mostrando que a tecnologia pode reduzir custos, aumentar a eficiência e agilizar o crescimento do setor.
                        </p>
                    </div>
                    <div class="col-sm-3">
                        <h2><b>&nbsp;&nbsp;&nbsp;Cenário Atual</b></h2>
                        <p class="text-justify">&nbsp;&nbsp;&nbsp;VenturaSoft é uma HRTech que atua no segmento de recolocação de profissionais de TI. Devido às peculiaridades desse mercado, os requisitos para contratação têm um dinamismo vertiginoso, pois as tecnologias e as “stacks” adotadas pelas empresas estão &nbsp;&nbsp;&nbsp;em constante evolução.
                            A empresa necessita que seja construída uma solução de software, chamado de VenturaHR, que tenha abrangência de todos os fluxos operacionais da sua atividade fim.
                            A VenturaSoft tem como clientes empresas que precisam fazer &nbsp;&nbsp;&nbsp;processos seletivos para vagas em aberto.
                        </p>
                    </div>
                    <div class="col-sm-3">
                        <h2><b>&nbsp;&nbsp;&nbsp;Solução Desejada</b></h2>
                        <p class="text-justify">&nbsp;&nbsp;&nbsp;O Software VenturaHR será elaborado para as empresas e profissionais de TI e terá como diferencial uma gama muito ampla de critérios que definirão a classificação do candidato para a vaga. Cada critério será variável e informado durante a publicação da vaga.
                            &nbsp;&nbsp;&nbsp;Para definição da classificação, cada critério terá um peso de importância a ser revelado e um PMD (Perfil Mínimo Desejado), que varia de 1 (desejável) a 5 (obrigatório). 
                            A pessoa que deseja se candidatar para a vaga terá que preencher um campo de &nbsp;&nbsp;&nbsp;“Conhecimento / Experiência”, onde os valores variam de 1 (nenhum / pouco) a 5 (todo), para medir o conhecimento dela para o critério da vaga desejada. 
                            Ao final do preenchimento da vaga, o software gerará uma média ponderada a partir das respostas do &nbsp;&nbsp;&nbsp;candidato e enviará um ranking de classificação para a empresa que publicou a vaga. 

                        </p>
                    </div>
                </div>
            </div>

            <div class="container">
                <h2 style="text-align: center"><u>Área de Login</u></h2>
                <label for="email"><b>E-mail:</b></label>
                <input type="text" placeholder="Entre com o e-mail" name="email">

                <label for="senha"><b>Senha:</b></label>
                <input type="password" placeholder="Entre com a senha" name="senha">

                <button type="submit">Login</button>
                <br>

            </div>
        </form>

        <div class="imgcontainer"> 
            <form action="criarConta.jsp">
                <button type="submit" style="background-color: blue">Cadastrar</button>
            </form>
        </div>

    </body>
</html>