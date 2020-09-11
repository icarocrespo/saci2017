<%@page import="java.util.List"%>
<%@page import="modelo.Organizador"%>
<%@page import="util.CPF"%>
<%@page import="modelo.Participante"%>
<%@page import="dao.ParticipanteDAO"%>
<%
    Organizador org = (Organizador) session.getAttribute("organizador");
    ParticipanteDAO participanteDAO = new ParticipanteDAO();
    Participante participante = new Participante();

    try {
        if (request.getMethod().equals("POST") && request.getParameter("txtCpf") != null && request.getParameter("txtCpf").length() <= 11) {
            List<Participante> listaParticipante = participanteDAO.listar();
            //participante = participanteDAO.buscarCPF("txtCpf");
            for (Participante part : listaParticipante) {
                if (part.getCpf().equals(request.getParameter("txtCpf"))) {
                    participante = participanteDAO.buscarPorChavePrimaria(part.getId());
                }
            }
        }
    } catch (Exception e) {
        throw e;
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
        <title>SACI 2017 - Consultar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    </head>
    <body class="left-sidebar">
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
                            <li> <a href="index.jsp">Home</a></li>
                            <li class="current">
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
                    <div class="row">
                        <div class="4u 12u(mobile)">
                            <!-- Sidebar -->
                            <section class="box">
                                <a class="image featured"><img src="images/pic09var.jpg" alt=""/></a>
                                <form action="#" name="buscaCPF" method="post">                                    
                                    <input type="text" placeholder="Digite seu CPF" name="txtCpf" maxlenght="11"/>
                                    <br />
                                    <center>
                                        <button type="submit" name="submit">Pesquisar</button>
                                    </center>
                                </form>	
                            </section>
                        </div>
                        <%
                            if (participante.getNome() != null) {
                        %>
                        <div class="8u 12u(mobile) important(mobile)">
                            <!-- Content -->
                            <article class="box post">
                                <!--<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>-->
                                <header>
                                    <center><h2>Seus dados:</h2></center>
                                </header>
                                <p>Nome: <%=participante.getNome()%></p>
                                <p>E-mail: <%=participante.getEmail()%></p>
                                <p>CPF: <%=participante.getCpf()%></p>
                                <p>Instituição de ensino: <%=participante.getInstituicao()%></p>
                                <p>Participando como: <%=participante.getCategoria()%></p>	
                            </article>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>