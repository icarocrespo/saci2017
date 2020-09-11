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
        <title>SACI 2017 - Palestras</title>
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
                            <li class="current"><a href="palestras.jsp">Palestras</a></li>
                            <li><a href="oficinas.jsp">Oficinas</a></li>
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
                                    <h2>Palestras</h2>
                                </header>
                                <div class="row">
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>"Utilizando a entrada anal�gica do Arduino e sensores"</h3>
                                            </header>
                                            <p>Ministrada por Edson M. Kakuno - Unipampa Campus Bag�.</p><br />
                                            <p>Dia 1 - 09:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Evolu��o das anima��es.</h3>
                                            </header>
                                            <p>Ministrada por Abner Guedes - IFSul Campus Bag�.</p><br /><br /><br/>
                                            <p>Dia 1 - 10:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Sociedade 2.0: Novas formas de significa��o e representa��o a partir do ciberespa�o</h3>
                                            </header>
                                            <p>Ministrada por Taiane Volcan - Urcamp Campus Bag�.</p>
                                            <p>Dia 1 - 14:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Qu�o longe voc� pode chegar</h3>
                                            </header>
                                            <p>Ministrada por Maria Eduarda Rocha- Unipampa Campus Bag�.</p><br /><br />
                                            <p>Dia 2 - 08:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <!--<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>-->
                                            <header>
                                                <h3>Se a internet existe, gra�as a Deus porque ela existe</h3>
                                            </header>
                                            <p>Ministrada por Hiago Faria - UFPel Campus Pelotas.</p><br />
                                            <p>Dia 2 - 09:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Vamos conversar sobre Docker?</h3>
                                            </header>
                                            <p>Ministrada por Mateus Moreira - Urcamp Campus Bag�.</p><br />
                                            <p>Dia 2 - 10:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Dando os primeiros passos com SCRUM</h3>
                                            </header>
                                            <p>Ministrada por Rodrigo Ferro - POSSiBLE Pelotas.</p><br /><br />
                                            <p>Dia 2 - 11:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>� poss�vel criar aplica��es atraentes com Java e JSF? Vamos testar</h3>
                                            </header>
                                            <p>Ministrada por Rodrigo Freitas - IFSul Bag�.</p><br /><br />
                                            <p>Dia 2 - 14:00</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Lida de Suporte. Uma vis�o pr�tica sobre o suporte t�cnico de TI</h3>
                                            </header>
                                            <p>Ministrada por Pablo de Andrades Lima - Emater-Ascar.</p><br />
                                            <p>Dia 3 - 08:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Intelig�nica Artificial (Aprendizado de M�quina)</h3>
                                            </header>
                                            <p>Ministrada por Lorenzo Antunes - UFPel Campus Pelotas.</p><br />
                                            <p>Dia 3 - 09:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Como Se Tornar Um Programador Melhor</h3>
                                            </header>
                                            <p>Ministrada por Jer�nimo Medina Madruga - UFPel Campus Pelotas.</p><br />
                                            <p>Dia 3 - 10:30</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Verifica��o e valida��o de modelos</h3>
                                            </header>
                                            <p>Misnistrada por Gilleanes Thorwald Araujo Guedes - Unipampa Campus Alegrete.</p><br />			
                                            <p>Dia 3 - 14:00</p>
                                        </section>
                                    </div>
                                    <div class="4u 12u(mobile)">
                                        <section class="box">
                                            <header>
                                                <h3>Hello, user! Projetando interfaces com foco no usu�rio</h3>
                                            </header>
                                            <p>Ministrada por J�ssica Esteves - IFSul Campus Pelotas.</p><br />
                                            <p>Dia 3 - 15:00</p>
                                        </section>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@include file="rodape.jsp" %>