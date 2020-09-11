<%@page import="java.util.List"%>
<%@page import="modelo.Organizador"%>
<%@page import="dao.OrganizadorDAO"%>
<%
    Organizador org = (Organizador) session.getAttribute("organizador");
    try{
    if (request.getMethod().equals("POST")) {
        if (request.getParameter("submit") != null && org != null) {
                session.removeAttribute("organizador");
                response.sendRedirect("index.jsp");
        } else if (request.getParameter("txtLogin") != null && request.getParameter("txtSenha") != null && request.getParameter("login") != null) {
                OrganizadorDAO dao = new OrganizadorDAO();
                List<Organizador> orgL = dao.listar();
                for (Organizador o : orgL) {
                    if (request.getParameter("txtLogin").equals(o.getLogin()) && request.getParameter("txtSenha").equals(o.getSenha())) {
                        session.setAttribute("organizador", o);
                        response.sendRedirect("index.jsp");
                    }
                }
            }
        }
    }catch(Exception e){
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE HTML>
<!--
        SACI 2017 - Todos Direitos Reservados 
        Back-end: (Nosso querido presidente) Ícaro Crespo
        Front-end: Jorge Siqueira / Template: HTML5UP 
-->
<html>
    <head>
        <title>SACI 2017 - Login do Organizador</title>
        <style>
            #e{
                display: inline-block;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
                            if(org != null){
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
                                    <!--<li><a href="download.jsp">Download Certificado</a></li>-->
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
                    <!-- Content -->
                    <article class="box post">
                        <center>
                            <div id="e">
                                <form class="login-form" method="POST">
                                    <input type="text" placeholder="Login" maxlength="50" name="txtLogin"/>
                                    </br>
                                    <input type="password" placeholder="Senha" maxlength="32" name="txtSenha"/>
                                    </br>
                                    <button type="submit" name="login">Entrar</button>
                                    <br />
                                    <br />

                                </form>
                            </div>
                            <form class="login-form" method="POST">
                                <button type="submit" name="submit">Sair</button><br><br>
                                <p class="message">Não é um organizador? <a href="index.jsp">Voltar ao início</a></p>
                            </form>		
                        </center>								
                    </article>
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>