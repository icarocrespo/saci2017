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
                        <%
                            if(request.getParameter("T") != null){
                        %>
                        <i aria-hidden="true"><a href="">Inscrição efetuada com sucesso!</a></i><br/><br/>
                        <%
                            }
                        %>
                        <i class="fa fa-car fa fa-2x" aria-hidden="true"><a href="consultar.jsp">Consultar inscrição</a></i><br /><br />
                         <i class="fa fa-car fa fa-2x" aria-hidden="true"> <a href="index.jsp">Voltar para o início</a></i>
                         </center>
                    </article>
                </div>
            </div>
            <!-- Footer -->
            <%@include file="rodape.jsp" %>