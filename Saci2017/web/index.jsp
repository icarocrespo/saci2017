<%@page import="modelo.Organizador"%>
<%
        Organizador org = (Organizador) session.getAttribute("organizador");
%>

<!DOCTYPE HTML>
<!--
        SACI 2017 - Todos Direitos Reservados 
        Back-end: (Nosso querido presidente) Ícaro Crespo
        Front-end: Jorge Siqueira / Template: HTML5UP 
-->
<html>
    <head>
        <title>SACI 2017</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body class="homepage">
        <div id="page-wrapper">
            <!-- Header -->
            <div id="header-wrapper">
                <div id="header">
                    <!-- Logo -->
                    <a href="index.jsp"><img src="images/logo_azul.png" alt="logo"> </a>
                    <!-- Nav -->
                    <nav id="nav">				

                        <span class="sr-only"></span>
                        <%
                            if(session.getAttribute("organizador") != null){
                        %>
                            <a href="presenca.jsp"><img src="images/user.png" align="left" width="100">
                            <h5 align="left"><%=org.getLogin()%></h5></a>
                        <%
                            }
                        %>
                        <ul>				
                            <li class="current"><a href="index.jsp">Home</a></li>
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
                            <li><a href="contato.jsp">Fale Conosco</a></li>
                            
                        </ul>
                    </nav>								
                    <!-- Banner -->
                    <section id="banner">
                        <header>
                            <h2>Bem-vindo à SACI 2017</h2>
                            <p>A Semana Acadêmica do Curso de Informática</p>
                            <p>do IFSul - Campus Bagé</p>
                        </header>
                    </section>						
                </div>
            </div>
            <!-- Main -->
            <div id="main-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="12u">								
                        </div>
                    </div>
                    <div class="row">
                        <div class="12u">
                            <!-- Blog -->
                            <section>						
                                <header class="major">
                                    <h2>Conheça a SACI</h2>
                                </header>
                                <div class="row">
                                    <div class="6u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>O que é?</h3>
                                            </header>
                                            <p align="justify">&nbsp A Semana Acadêmica do Curso de Informática (SACI), é um evento com duração de 3 dias que visa promover o
                                                conhecimento na parte de informática, além da integração entre os alunos. 
                                                Nosso evento ocorrerá nos dias 04, 05 e 06 de setembro contanto com palestrantes de outras cidades e também de Bagé,
                                                pois devemos valorizar o nosso pessoal da área. Na sessão de <a href="cronograma.jsp">Cronograma</a> você pode ficar por dentro das próximas 
                                                palestras e oficinas. Ainda não se inscreveu? Acesse a <a href="inscricao.jsp">Inscrição</a> e não perca!</p>
                                        </section>
                                    </div>
                                    <div class="6u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Quem a realiza?</h3>
                                            </header>
                                            <p align="justify">&nbsp Diferentemente de outros eventos, a SACI - IFSul Campus Bagé é feita por alunos para alunos!
                                                A cada ano modificamos logo, organização, e sua data, fazendo com que todos os alunos tenham
                                                a oportunidade de organizá-la!<br>
                                            &nbsp Nosso foco principal é trazer conhecimento e integração aos membros
                                            do curso, sempre tendo em vista assuntos da área e muito mais.</p><br />
                                        </section>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>