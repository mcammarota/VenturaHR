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
                <h2 style="text-align: center"><u>Documento de Visão</u></h2>
                <div class="row">
                    <div class="col-sm-3">
                        <h3><b>&nbsp;&nbsp;&nbsp;Introdução</b></h3>
                        <p class="text-justify">&nbsp;&nbsp;&nbsp;O RH 2.0 ganhou protagonismo e está sendo promovido a área estratégica, essencial para a tomada de decisão e crescimento do negócio.
                            Problemas antigos como a dificuldade em medir o retorno sobre o investimento (ROI) das ações, ineficiência do &nbsp;&nbsp;&nbsp;recrutamento e baixo desempenho em treinamentos já têm suas soluções tecnológicas sob medida.
                            As HRTechs são startups que desenvolvem soluções tecnológicas para a área de Recursos Humanos (Human Resources), agregando inteligência aos processos. &nbsp;&nbsp;&nbsp;A missão dessas empresas é levar a inovação ao RH, mostrando que a tecnologia pode reduzir custos, aumentar a eficiência e agilizar o crescimento do setor.
                        </p>
                    </div>
                    <div class="col-sm-3">
                        <h3><b>&nbsp;&nbsp;&nbsp;Cenário Atual</b></h3>
                        <p class="text-justify">&nbsp;&nbsp;&nbsp;VenturaSoft é uma HRTech que atua no segmento de recolocação de profissionais de TI. Devido às peculiaridades desse mercado, os requisitos para contratação têm um dinamismo vertiginoso, pois as tecnologias e as “stacks” adotadas pelas empresas estão &nbsp;&nbsp;&nbsp;em constante evolução.
                            A empresa necessita que seja construída uma solução de software, chamado de VenturaHR, que tenha abrangência de todos os fluxos operacionais da sua atividade fim.
                            A VenturaSoft tem como clientes empresas que precisam fazer &nbsp;&nbsp;&nbsp;processos seletivos para vagas em aberto.
                        </p>
                    </div>
                    <div class="col-sm-3">
                        <h3><b>&nbsp;&nbsp;&nbsp;Solução Desejada</b></h3>
                        <p class="text-justify">&nbsp;&nbsp;&nbsp;O software VenturaHR promove uma integração simples e facilitada entre empresas e candidatos na área de tecnologia.
                            Os candidatos têm a oportunidade de visualizar e se inscreverem para vagas cadastradas por diversas empreasas na plataforma.
                            Para &nbsp;&nbsp;&nbsp;publicarem vagas, as empresas precisam cadastrar critérios, como cargo, forma de contratação, peso do critério, entre outros.
                            Já para se inscreverem, os candidatos necessitam indicar seus conhecimentos para determinado critério citado.
                            As inscrições são &nbsp;&nbsp;&nbsp;disponibilizadas para as empresas poderem escolher os melhores candidatos para determinada vaga.
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

    </body>
</html>