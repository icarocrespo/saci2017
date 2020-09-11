<%@page import="modelo.Organizador"%>
<%@page import="util.EnviarEmail"%>
<%
    Organizador org = (Organizador) session.getAttribute("organizador");
    String mensagem = null;
%>

<!DOCTYPE HTML>
<!--
        SACI 2017 - Todos Direitos Reservados 
        Back-end: (Nosso querido presidente) Ícaro Crespo
        Front-end: Jorge Siqueira / Template: HTML5UP 
-->
<html>
    <head>
        <title>SACI 2017 - Contato</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body class="right-sidebar">
        <div id="page-wrapper">
            <!-- Header -->
            <div id="header-wrapper">
                <div id="header">
                    <!-- Logo -->
                    <a href="index.jsp"><img src="images/logo_azul.png" alt="logo"> </a>
                    <!-- Nav -->
                    <nav id="nav">
                        <%
                            if (session.getAttribute("organizador") != null) {
                        %>
                        <a href="presenca.jsp"><img src="images/user.png" align="left" width="100"></a>
                        <h5 align="left"><%=org.getLogin()%></h5> 
                        <%
                            }
                        %>
                        <ul>				
                            <li><a href="index.jsp">Home</a></li>
                            <li>
                                <a href="#">Participante</a>
                                <ul>
                                    <li><a href="inscricao.jsp">Inscrição</a></li>
                                    <li><a href="consultar.jsp">Consultar Inscrição</a></li>
                                    <!--<li><a href="download.jsp">Download Certificado</a></li>-->
                                </ul>
                            </li>
                            <li><a href="palestras.jsp">Palestras</a></li>
                            <li><a href="oficinas.jsp">Oficinas</a></li>
                            <li><a href="cronograma.jsp">Cronograma</a></li>
                            <li class="current"><a href="contato.jsp">Fale Conosco</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Main -->
            <div id="main-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="8u 12u(mobile)">
                            <!-- Content -->
                            <article class="box post">
                                <a class="image featured"><img src="images/foto%20granada.jpg" alt="Foto por: Paulo Granada" /></a>
                                <header class="major">
                                    <h2>Fale Conosco</h2>
                                </header>
                                <br />
                                <center><h3>Dúvidas, perguntas sobre o evento?</h3></center><br>
                                <b>Mande um e-mail para: </b><a href="mailto:sacifsulbage@gmail.com">sacifsulbage@gmail.com</a><b> e responderemos o mais breve possível!</b>
                            </article>
                        </div>
                        <div class="4u 12u(mobile)">
                            <!-- Sidebar -->
                            <section class="box">
                                <a class="image featured"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3407.9679108867595!2d-54.0740419!3d-31.3322593!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9505dfedb04c332b%3A0x827091ddfbf1068a!2sIFSul+Campus+Bag%C3%A9!5e0!3m2!1spt-BR!2sbr!4v1501268992831" width="367" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></a>
                                <h3>IFSul - Campus Bagé</h3>
                                <p>
                                    Av. Leonel de Moura Brizola, 2501
                                    Bairro Pedras Brancas, Bagé-RS</p>
                                <footer>
                                    <a href="https://goo.gl/poK3XT" class="button alt">Traçar Rota</a>
                                </footer>
                            </section>
                            <section class="box">
                                <header>
                                    <h3>Dúvidas Frequentes</h3>
                                </header>
                                <p>Acesse os links abaixo caso seja sua dúvida</p>
                               
                                <ul class="divided">
                                    <li><a href="cronograma.jsp">Quais são os horários?</a></li>
                                    <li><a href="inscricao.jsp">Onde devo me inscrever?</a></li>
                                    <li><a href="consultar.jsp">Como saber se estou inscrito?"</a></li>
                                    <li><a href="https://goo.gl/poK3XT">Como chegar no IFSul - Campus Bagé?</a></li>
                                </ul>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>