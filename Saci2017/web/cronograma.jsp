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
        <title>SACI 2017 - Cronograma</title>
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
                                    <!--<li><a href="download.jsp">Download Certificado</a></li>-->
                                </ul>
                            </li>
                            <li><a href="palestras.jsp">Palestras</a></li>
                            <li><a href="oficinas.jsp">Oficinas</a></li>
                            <li class="current"><a href="cronograma.jsp">Cronograma</a></li>
                            <li><a href="contato.jsp">Fale Conosco</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Main -->
            <div id="main-wrapper">
                <div class="container">
                    <!-- Content -->
                    <!--<img class="image featured" src="images/pic01.jpg" alt="" />-->
                    <section id="intro" class="container">
                        <div class="row" >
                            <div class="4u 12u(mobile)">
                                <section class="first">
                                    <i class="icon featured alt "><h1 style="font-size:200%;"><font color="white">04 SET</font></h1><br><h1><font color="white">Dia 1</font></h1></i>
                                    <header>
                                        <h2>Manhã</h2>
                                    </header>
                                    <h1>08:00</h1>
                                    <p>Credenciamento</p><br>
                                    <h1>09:00</h1>
                                    <p>Abertura</p><br>
                                    <h1>09:30</h1>
                                    <p>Utilizando a entrada analógica do Arduino e sensores - Edson M. Kakuno/Unipampa - Bagé</p><br>
                                    <h1>10:30</h1>
                                    <p>Evolução das animações - Abner Guedes/IFSul - Bagé</p><br><br>
                                    <header>
                                        <h2>Tarde</h2>
                                    </header>
                                    <h1>13:30</h1>
                                    <p>Credenciamento</p><br>
                                    <h1>14:30</h1>
                                    <p>Sociedade 2.0: Novas formas de significação e representação a partir do ciberespaço - Taiane Volcan/Pelotas</p><br>
                                    <h1>15:30</h1>
                                    <p>Coffee Break</p><br>
                                    <h1>16:00</h1>
                                    <p>Oficinas</p><br>
                                </section>
                            </div>
                            <div class="4u 12u(mobile)">
                                <section class="middle">
                                    <i class="icon featured alt2 "><h1 style="font-size:200%;"><font color="white">05 SET</font></h1><br><h1><font color="white">Dia 2</font></h1></i>
                                    <header>
                                        <h2>Manhã</h2>
                                    </header>
                                    <h1>08:00</h1>
                                    <p>Credenciamento</p><br>
                                    <h1>08:30</h1>
                                    <p>Quão longe você pode chegar - Maria Rocha/Unipampa Bagé</p><br>
                                    <h1>09:30</h1>
                                    <p>Se a internet existe, graças a Deus porque ela existe - Hiago Faria/UFPel Pelotas</p><br>
                                    <h1>10:30</h1>
                                    <p>Vamos conversar sobre Docker? - Mateus Moreira/Urcamp - Bagé</p><br>
                                    <h1>11:30</h1>
                                    <p>Dando os primeiros passos com SCRUM - Rodrigo Ferro/POSSiBLE - Pelotas</p><br><br>
                                    <header>
                                        <h2>Tarde</h2>
                                    </header>
                                    <h1>13:30</h1>
                                    <p>Credenciamento</p><br>
                                    <h1>14:00</h1>
                                    <p>É possível criar aplicações atraentes com Java e JSF? Vamos testar - Rodrigo Freitas/IFSul - Bagé</p><br>
                                    <h1>15:00</h1>
                                    <p>Oficinas</p><br>
                                    <h1>16:00</h1>
                                    <p>Coffee break</p><br>
                                    <h1>16:30</h1>
                                    <p>Oficinas</p><br>
                                </section>
                            </div>
                            <div class="4u 12u(mobile)">
                                <section class="last">
                                    <i class="icon featured alt3 "><h1 style="font-size:200%;"><font color="white">06 SET</font></h1></br><h1><font color="white">Dia 3</font></h1></i>
                                    <header>
                                        <h2>Manhã</h2>
                                    </header>
                                    <h1>08:00</h1>
                                    <p>Credenciamento</p><br>
                                    <h1>08:30</h1>
                                    <p>Lida de Suporte. Uma visão prática sobre o suporte técnico de TI - Pablo de Andrades Lima/Emater-Ascar</p><br>
                                    <h1>09:30</h1>
                                    <p>Inteligência Artificial (aprendizado de máquina) - Lorenzo Antunes/UFPel Pelotas</p><br>
                                    <h1>10:30</h1>
                                    <p>Como Se Tornar Um Programador Melhor - Jerônimo Medina Madruga/Pelotas</p><br><br>
                                    <header>
                                        <h2>Tarde</h2>
                                    </header>
                                    <h1>13:30</h1>
                                    <p>Credenciamento</p><br>
                                    <h1>14:00</h1>
                                    <p>Verificação e validação de modelos - Gilleanes Guedes/Unipampa Alegrete</p><br>
                                    <h1>15:00</h1>
                                    <p>Hello, user! Projetando interfaces com foco no usuário - Jéssica Esteves/IFSul Pelotas</p><br>
                                    <h1>16:00</h1>
                                    <p>Coffee Break</p><br>
                                    <h1>16:30</h1>
                                    <p>Oficinas</p><br>
                                    <h1>18:30</h1>
                                    <p>Encerramento</p><br>
                                </section>
                            </div>
                        </div>
                        <footer>									
                        </footer>
                    </section>
                </div>
            </div>
            <!-- Footer -->
            <div id="footer-wrapper">
                <section id="footer" class="container">
                    <div class="row">
                        <div class="8u 12u(mobile)">
                            <section>
                                </br>
                                <img src="images/pic11.png" width="520">
                                </br>
                                </br>
                                </br>
                                <img src="images/logo_pebx.png"  width="520">
                            </section>
                        </div>
                        <div class="4u 12u(mobile)">
                            <section>
                                <header>
                                    <header>
                                        <h2>Continue conectado</h2><h4>Nos siga nas redes sociais</h4>
                                    </header>
                                    <ul class="social">
                                        <li><a class="icon fa-facebook" href="#"><span class="label">Facebook</span></a></li>
                                        <li><a class="icon fa-instagram" href="#"><span class="label">Instagram</span></a></li>
                                    </ul>
                                    <ul class="contact">
                                        <li>
                                            <h3>Local</h3>
                                            <p>
                                                IFSul - Campus Bagé<br />
                                                Av.  Leonel de Moura Brizola, 2501<br />
                                                Bairro Pedras Brancas, Bagé-RS
                                            </p>
                                        </li>
                                        <li>
                                            <h3>E-mail</h3>
                                            <p><a href="mailto:sacifsulbage@gmail.com">sacifsulbage@gmail.com</a></p>
                                        </li>
                                    </ul>
                            </section>
                        </div>
                    </div>
                    <div class="row">
                        <div class="12u">
                            <!-- Copyright -->
                            <div id="copyright">
                                <ul class="links">
                                    <li>&copy; SACI 2017.</li><li>Developed by: <a>Ícaro Crespo</a> Design: <a>Jorge Siqueira</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.dropotron.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/skel-viewport.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>
    </body>
</html>