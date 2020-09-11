<%@page import="modelo.Organizador"%>
<%
        Organizador org = (Organizador) session.getAttribute("organizador");
%>

<!DOCTYPE HTML>
<!--
        SACI 2017 - Todos Direitos Reservados 
        Back-end: (Nosso querido presidente) �caro Crespo
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
                                    <li><a href="inscricao.jsp">Inscri��o</a></li>
                                    <li><a href="consultar.jsp">Consultar Inscri��o</a></li>
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
                            <h2>Bem-vindo � SACI 2017</h2>
                            <p>A Semana Acad�mica do Curso de Inform�tica</p>
                            <p>do IFSul - Campus Bag�</p>
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
                                    <h2>Conhe�a a SACI</h2>
                                </header>
                                <div class="row">
                                    <div class="6u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>O que �?</h3>
                                            </header>
                                            <p align="justify">&nbsp A Semana Acad�mica do Curso de Inform�tica (SACI), � um evento com dura��o de 3 dias que visa promover o
                                                conhecimento na parte de inform�tica, al�m da integra��o entre os alunos. 
                                                Nosso evento ocorrer� nos dias 04, 05 e 06 de setembro contanto com palestrantes de outras cidades e tamb�m de Bag�,
                                                pois devemos valorizar o nosso pessoal da �rea. Na sess�o de <a href="cronograma.jsp">Cronograma</a> voc� pode ficar por dentro das pr�ximas 
                                                palestras e oficinas. Ainda n�o se inscreveu? Acesse a <a href="inscricao.jsp">Inscri��o</a> e n�o perca!</p>
                                        </section>
                                    </div>
                                    <div class="6u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Quem a realiza?</h3>
                                            </header>
                                            <p align="justify">&nbsp Diferentemente de outros eventos, a SACI - IFSul Campus Bag� � feita por alunos para alunos!
                                                A cada ano modificamos logo, organiza��o, e sua data, fazendo com que todos os alunos tenham
                                                a oportunidade de organiz�-la!<br>
                                            &nbsp Nosso foco principal � trazer conhecimento e integra��o aos membros
                                            do curso, sempre tendo em vista assuntos da �rea e muito mais.</p><br />
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