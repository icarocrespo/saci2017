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
        <title>SACI 2017 - Oficinas</title>
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
                        <%
                            if (session.getAttribute("organizador") != null) {
                        %>
                        <a href="presenca.jsp"><img src="images/user.png" align="left" width="100">
                        <h5 align="left"><%=org.getLogin()%></h5></a>
                        <%
                            }
                        %>
                        <ul>				
                            <li><a href="index.jsp">Home</a></li>
                            <li>
                                <a href="#">Participante</a>
                                <ul>
                                    <li><a href="inscricao.jsp">Inscri��o</a></li>
                                    <li><a href="consultar.jsp">Consultar Inscri��o</a></li>
                                    <!--<li><a href="download.jsp">Download Certificado</a></li>-->
                                </ul>
                            </li>
                            <li><a href="palestras.jsp">Palestras</a></li>
                            <li class="current"><a href="oficinas.jsp">Oficinas</a></li>
                            <li><a href="cronograma.jsp">Cronograma</a></li>
                            <li><a href="contato.jsp">Fale Conosco</a></li>
                        </ul>
                    </nav>
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
                            <!-- Cards dos Palestrantes -->
                            <!-- Portfolio -->
                            <section>
                                <header class="major">
                                    <h2>Oficinas</h2>
                                </header>
                                <div class="row">
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Esteganografia</h3>
                                            </header>
                                            <p>Diovanna da Luz - Cursando o curso de Engenharia da Computa��o na Unipampa - Campus Bag� e formada no curso t�cnico em inform�tica pelo IFSul - Campus Bag�.</p>			
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Arduino</h3>
                                            </header>
                                            <p>John Welvins - <i>enchendo lingui�a por causa do espa�o</i>.<br>Thales Salazar - Cursando o curso t�cnico em inform�tica pelo IFSul - Campus Bag�.</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Sistemas Legados em GNU COBOL com Arquivos ISAM</h3>
                                            </header>
                                            <p>Alex Val�rio - Especialista em Engenharia de Software com �nfase em Software Livre pela UFLA - MG.</p>	
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <!--<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>-->
                                            <header>
                                                <h3>Edi��o de V�deo -  Inicia��o ao Premiere</h3>
                                            </header>
                                            <p>Ruan Rodrigues - Cursando o curso t�cnico em inform�tica pelo IFSul - Campus Bag�.<br>Thiago Martins - Cursando o curso t�cnico em inform�tica pelo IFSul - Campus Bag�.</p>			
                                            <p></p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Introdu��o ao desenvolvimento de jogos digitais</h3>
                                            </header>
                                            <p>Ricardo Robaina <i>falar sobre</i>.<br>Gabriel Costa <i>falar sobre</i>.</p><br>		
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Como gerir seu pr�ximo projeto, uma abordagem na pr�tica sobre algumas ferramentas</h3>
                                            </header>
                                            <p>Rodrigo Freitas - <i>falar sobre</i>.</p><br>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Criando um jogo 2D em Unity 5</h3>
                                            </header>
                                            <p>Jo�o Pedro Rodrigues - Cursando o curso t�cnico em inform�tica pelo IFSul - Campus Bag�.<br>Yuri Lima - Cursando o curso t�cnico em inform�tica pelo IFSul - Campus Bag�.</p>			
                                        </section>
                                    </div>
                                <div class="4u 12u(mobile)">
                                    <section class="box">
                                        <header>
                                            <h3>Design e desenvolvimento de apps sem computador</h3>
                                        </header>
                                        <p>Hiago Faria - Cursando o curso de Design na UFPel - Campus Pelotas e formada no curso t�cnico em inform�tica pelo IFSul - Campus Bag�.</p>
                                        <p></p>
                                    </section>
                                </div>
                                <div class="4u 12u(mobile)">
                                    <section class="box">
                                        <header>
                                            <h3>Criando jogos em Unity</h3>
                                        </header>
                                        <p>Marcelo Siedler - Graduado em Ci�ncia da Computa��o pela UCPel e Mestre em Ci�ncia da Computa��o pela UFPE.</p><br/><br />	
                                    </section>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@include file="rodape.jsp" %>