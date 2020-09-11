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
        <title>ERRO 404 - Not Found</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body class="no-sidebar">
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
                                    <li><a href="inscricao.jsp">Inscrição</a></li>
                                    <li><a href="consultar.jsp">Consultar Inscrição</a></li>
                                    <!--<li class="current"><a href="download.jsp">Download Certificado</a></li>-->
                                </ul>
                            </li>
                            <li><a href="palestras.jsp">Palestras</a></li>
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
                    <center>
                        <h1> Ops! Parece que a página que você está procurando não existe</h1>
                        <i class="fa fa-car fa fa-2x" aria-hidden="true"> <a href="index.jsp">Me leve de volta para o início</a></i>
                    </center>
                    <!-- Content -->
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>