<%@page import="modelo.Organizador"%>
<%@page import="util.CPF"%>
<%@page import="modelo.Participante"%>
<%@page import="dao.ParticipanteDAO"%>
<%@page import="java.util.List"%>
<%
    Organizador org = (Organizador) session.getAttribute("organizador");
    ParticipanteDAO participanteDAO = new ParticipanteDAO();
    Participante participante = new Participante();

    String mensagem = null;
    boolean tentativa = false;
    boolean cpf = false;
    try {
        if (request.getMethod().equals("POST") && request.getParameter("checkCampos") != null) {
            if (request.getParameter("nome").length() >= 100 || request.getParameter("email").length() >= 100 || request.getParameter("instituicao").length() >= 100) {
                mensagem = "Campos com dados muito grande";
                response.sendRedirect("inscricao.jsp");
                return;
            }
            List<Participante> listaParticipante = participanteDAO.listar();
            for (Participante part : listaParticipante) {
                if (part.getCpf().equals(request.getParameter("cpf"))) {
                    cpf = true;
                } else {
                    cpf = false;
                }
            }
            participante.setNome(request.getParameter("nome"));
            if (CPF.isCPF(request.getParameter("cpf")) && cpf == false) {
                participante.setCpf(request.getParameter("cpf"));
            }
            participante.setEmail(request.getParameter("email"));

            if (!request.getParameter("instituicao").isEmpty() && !request.getParameter("txtInstituicao").isEmpty()) {
                mensagem = "Por favor, selecione apenas uma instituição de ensino.";
            } else {
                if (request.getParameter("instituicao").equals("0")) {
                    participante.setInstituicao("IFSul - Campus Bagé");
                } else if (request.getParameter("instituicao").equals("1")) {
                    participante.setInstituicao("IFSul - Campus Pelotas");
                } else if (request.getParameter("instituicao").equals("2")) {
                    participante.setInstituicao("Unipampa - Campus Alegrete");
                } else if (request.getParameter("instituicao").equals("3")) {
                    participante.setInstituicao("Unipampa - Campus Bagé");
                } else if (request.getParameter("instituicao").equals("4")) {
                    participante.setInstituicao("UFPel - Campus Pelotas");
                } else if (request.getParameter("instituicao").equals("5")) {
                    participante.setInstituicao("URCAMP - Campus Bagé");
                } else if (request.getParameter("instituicao").equals("6")) {
                    participante.setInstituicao("URCAMP - Campus Dom Pedrito");
                } else {
                    if (request.getParameter("txtInstituicao") != null) {
                        participante.setInstituicao(request.getParameter("txtInstituicao"));
                    } else {
                        response.sendRedirect("inscricao.jsp");
                        return;
                    }
                }
                if (request.getParameter("instituicao").equals("0")) {
                    if (request.getParameter("turno").equals("M")) {
                        participante.setTurno("Manhã");
                    } else if (request.getParameter("turno").equals("T")) {
                        participante.setTurno("Tarde");
                    } else if (request.getParameter("turno").equals("N")) {
                        participante.setTurno("Noite");
                    } else {
                        response.sendRedirect("inscricao.jsp");
                        mensagem = "Por favor indique o turno em que estudas.";
                        return;
                    }
                }
                if (Integer.parseInt(request.getParameter("categoria")) == 0) {
                    participante.setCategoria("Palestrante");
                } else if (Integer.parseInt(request.getParameter("categoria")) == 1) {
                    participante.setCategoria("Organizador");
                } else if (Integer.parseInt(request.getParameter("categoria")) == 2) {
                    participante.setCategoria("Ouvinte");
                } else {
                    response.sendRedirect("inscricao.jsp?T=1");
                    return;
                }
                tentativa = participanteDAO.incluir(participante);
                //response.sendRedirect("index.jsp");
                if (tentativa) {
                    response.sendRedirect("inscricaoSucesso.jsp?T=1");
                } else {
                    mensagem = "Sua inscrição não pôde ser efetuada";
                }
            }
        }
    } catch (Exception e) {
        //response.sendRedirect("index.jsp");
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
        <title>SACI 2017 - Inscrição</title>
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
                            if (org != null) {
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
                        <form action="inscricao.jsp" method="post">
                            <label>
                                <input type="text" placeholder="Seu Nome Completo" maxlenght="100" name="nome" required/><br>
                            </label>
                            <input type="text" placeholder="Seu CPF" maxlength="11" name="cpf" required/>
                            <b>* Por favor digite seu CPF sem pontuações e traços</b>
                            <input type="text" placeholder="Seu E-mail" maxlength="100" name="email" required/><br />
                            <fieldset class="grupo">
                                <div class="campo">
                                    <select name="instituicao" id="instituicao">
                                        <option value="">Selecione sua instituição</option>
                                        <option value="0">IFSul - Campus Bagé</option>
                                        <option value="1">IFSul - Campus Pelotas</option>
                                        <option value="2">Unipampa - Campus Alegrete</option>
                                        <option value="3">Unipampa - Campus Bagé</option>
                                        <option value="4">UFPel - Campus Pelotas</option>
                                        <option value="5">URCAMP - Campus Bagé</option>
                                        <option value="6">URCAMP - Campus Dom Pedrito</option>
                                    </select>
                                </div>
                            </fieldset><br />
                            <input type="text" placeholder="Não achou sua instituição? Escreva-a aqui" maxlenght="100" name="txtInstituicao"/><br />
                            <h5>Estuda no IFSul - Campus Bagé? Indique o turno em que estuda:</h5><br />
                            Manhã<input type="radio" name="turno" value="M"/>
                            Tarde:<input type="radio" name="turno" value="T"/>
                            Noite:<input type="radio" name="turno" value="N"/><br /><br />
                            <fieldset class="grupo">
                                <div class="campo">
                                    <select name="categoria" id="participacao" required>
                                        <option value="">Selecione o tipo de partipação</option>
                                        <option value="0">Palestrante</option>
                                        <option value="1">Organizador</option>
                                        <option value="2">Ouvinte</option>									
                                    </select>
                                </div>
                            </fieldset>		
                            <br />
                            <label>
                                <input type="checkbox" name="checkCampos" required value="1">Eu li e declaro que as informações acima estão corretas.
                            </label>
                            <p>Obs.: Os dados que você inserir serão os dados que aparecerá em seu certificado.</p>
                            <div class="campo">
                            </div>
                            <center>
                                <button type="submit" name="submit">Inscrever</button>
                            </center>
                        </form>						
                    </article>
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>