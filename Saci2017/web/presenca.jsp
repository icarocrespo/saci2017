<%@page import="org.postgresql.util.PSQLException"%>
<%@page import="java.util.List"%>
<%@page import="dao.ParticipanteDAO"%>
<%@page import="modelo.Participante"%>
<%@page import="modelo.Dia3"%>
<%@page import="dao.Dia3DAO"%>
<%@page import="modelo.Dia2"%>
<%@page import="dao.Dia2DAO"%>
<%@page import="modelo.Dia1"%>
<%@page import="dao.Dia1DAO"%>
<%@page import="modelo.Organizador"%>
<%
    Organizador org;
    if (session.getAttribute("organizador") == null) {
        response.sendRedirect("erro.jsp");
        return;
    } else {
        org = (Organizador) session.getAttribute("organizador");
    }

    ParticipanteDAO participanteDAO = new ParticipanteDAO();
    Participante participante = new Participante();
    String mensagem1 = null;
    String mensagem2 = null;
    String mensagem3 = null;
    boolean tentativa1 = false;
    boolean tentativa2 = false;
    boolean tentativa3 = false;
    boolean incluir = false;

    try {
        if (request.getMethod().equals("POST") && request.getParameter("txtCodigo1") != null && incluir == false) {

            Dia1DAO dia1DAO = new Dia1DAO();
            Dia1 dia1 = new Dia1();
            List<Dia1> dia1Lista = dia1DAO.listar();

            for (Dia1 dia1a : dia1Lista) {
                if (dia1a.getIdParticipante().getId().toString().equals(request.getParameter("txtCodigo1"))) {

                    dia1.setId(dia1a.getId());
                    participante.setId(Integer.parseInt(request.getParameter("txtCodigo1")));
                    dia1.setIdParticipante(participante);

                    if (request.getParameter("txtCoffee1") != null) {
                        if (request.getParameter("txtCoffee1").equals("S")) {
                            dia1.setCoffeeBreak(true);
                        }
                        if (request.getParameter("txtCoffee1").equals("N")) {
                            dia1.setCoffeeBreak(false);
                        }
                    } else {
                        if (dia1a.getCoffeeBreak()) {
                            dia1.setCoffeeBreak(true);
                        } else {
                            dia1.setCoffeeBreak(false);
                        }
                    }
                    if (request.getParameter("txtManha1") != null) {
                        if (request.getParameter("txtManha1").equals("S")) {
                            dia1.setPresencaManha(true);
                        }
                        if (request.getParameter("txtManha1").equals("N")) {
                            dia1.setPresencaManha(false);
                        }
                    } else {
                        if (dia1a.getPresencaManha()) {
                            dia1.setPresencaManha(true);
                        } else {
                            dia1.setPresencaManha(false);
                        }
                    }
                    if (request.getParameter("txtTarde1") != null) {
                        if (request.getParameter("txtTarde1").equals("S")) {
                            dia1.setPresencaTarde(true);
                        }
                        if (request.getParameter("txtTarde1").equals("N")) {
                            dia1.setPresencaTarde(false);
                        }
                    } else {
                        if (dia1a.getPresencaTarde()) {
                            dia1.setPresencaTarde(true);
                        } else {
                            dia1.setPresencaTarde(false);
                        }
                    }
                    tentativa1 = dia1DAO.alterar(dia1);
                }
            }
            if (tentativa1) {
                mensagem1 = "Alteração efetuada com sucesso";
            } else {
                mensagem1 = "Alteração não pôde ser efetuada";
                incluir = true;
            }

            if (incluir) {
                List<Participante> participanteLista = participanteDAO.listar();
                boolean id = false;
                for (Participante part : participanteLista) {
                    if (Integer.parseInt(request.getParameter("txtCodigo1")) == part.getId()) {
                        id = true;
                    }
                }
                if (id) {
                    participante.setId(Integer.parseInt(request.getParameter("txtCodigo1")));
                } else {
                    response.sendRedirect("presenca.jsp");
                    return;
                }
                dia1.setIdParticipante(participante);

                if (request.getParameter("txtCoffee1") != null) {
                    if (request.getParameter("txtCoffee1").equals("S")) {
                        dia1.setCoffeeBreak(true);
                    }
                    if (request.getParameter("txtCoffee1").equals("N")) {
                        dia1.setCoffeeBreak(false);
                    }
                }
                if (request.getParameter("txtManha1") != null) {
                    if (request.getParameter("txtManha1").equals("S")) {
                        dia1.setPresencaManha(true);
                    }
                    if (request.getParameter("txtManha1").equals("N")) {
                        dia1.setPresencaManha(false);
                    }
                }
                if (request.getParameter("txtTarde1") != null) {
                    if (request.getParameter("txtTarde1").equals("S")) {
                        dia1.setPresencaTarde(true);
                    }
                    if (request.getParameter("txtTarde1").equals("N")) {
                        dia1.setPresencaTarde(false);
                    }
                }

                tentativa1 = dia1DAO.incluir(dia1);
                if (tentativa1) {
                    mensagem1 = "Presença efetuada com sucesso";
                } else {
                    mensagem1 = "Presença não pôde ser efetuada";
                }
            }
        }
        if (request.getMethod().equals("POST") && request.getParameter("txtCodigo2") != null) {

            Dia2DAO dia2DAO = new Dia2DAO();
            Dia2 dia2 = new Dia2();
            List<Dia2> dia2Lista = dia2DAO.listar();

            for (Dia2 dia2a : dia2Lista) {
                if (dia2a.getIdParticipante().getId().toString().equals(request.getParameter("txtCodigo2"))) {

                    dia2.setId(dia2a.getId());
                    participante.setId(Integer.parseInt(request.getParameter("txtCodigo2")));
                    dia2.setIdParticipante(participante);

                    if (request.getParameter("txtCoffee2") != null) {
                        if (request.getParameter("txtCoffee2").equals("S")) {
                            dia2.setCoffeeBreak(true);
                        }
                        if (request.getParameter("txtCoffee2").equals("N")) {
                            dia2.setCoffeeBreak(false);
                        }
                    } else {
                        if (dia2a.getCoffeeBreak()) {
                            dia2.setCoffeeBreak(true);
                        } else {
                            dia2.setCoffeeBreak(false);
                        }
                    }
                    if (request.getParameter("txtManha2") != null) {
                        if (request.getParameter("txtManha2").equals("S")) {
                            dia2.setPresencaManha(true);
                        }
                        if (request.getParameter("txtManha2").equals("N")) {
                            dia2.setPresencaManha(false);
                        }
                    } else {
                        if (dia2a.getPresencaManha()) {
                            dia2.setPresencaManha(true);
                        } else {
                            dia2.setPresencaManha(false);
                        }
                    }
                    if (request.getParameter("txtTarde2") != null) {
                        if (request.getParameter("txtTarde2").equals("S")) {
                            dia2.setPresencaTarde(true);
                        }
                        if (request.getParameter("txtTarde2").equals("N")) {
                            dia2.setPresencaTarde(false);
                        } else {
                            if (dia2a.getPresencaTarde()) {
                                dia2.setPresencaTarde(true);
                            } else {
                                dia2.setPresencaTarde(false);
                            }
                        }
                    }
                    tentativa2 = dia2DAO.alterar(dia2);
                }
            }
            if (tentativa2) {
                mensagem2 = "Alteração efetuada com sucesso";
            } else {
                mensagem2 = "Alteração não pôde ser efetuada";
                incluir = true;
            }
            if (incluir) {
                List<Participante> participanteLista = participanteDAO.listar();
                boolean id = false;
                for (Participante part : participanteLista) {
                    if (Integer.parseInt(request.getParameter("txtCodigo2")) == part.getId()) {
                        id = true;
                    }
                }
                if (id) {
                    participante.setId(Integer.parseInt(request.getParameter("txtCodigo2")));
                } else {
                    response.sendRedirect("presenca.jsp");
                    return;
                }
                dia2.setIdParticipante(participante);

                if (request.getParameter("txtCoffee2") != null) {
                    if (request.getParameter("txtCoffee2").equals("S")) {
                        dia2.setCoffeeBreak(true);
                    }
                    if (request.getParameter("txtCoffee2").equals("N")) {
                        dia2.setCoffeeBreak(false);
                    }
                }
                if (request.getParameter("txtManha2") != null) {
                    if (request.getParameter("txtManha2").equals("S")) {
                        dia2.setPresencaManha(true);
                    }
                    if (request.getParameter("txtManha2").equals("N")) {
                        dia2.setPresencaManha(false);
                    }
                }
                if (request.getParameter("txtTarde2") != null) {
                    if (request.getParameter("txtTarde2").equals("S")) {
                        dia2.setPresencaTarde(true);
                    }
                    if (request.getParameter("txtTarde2").equals("N")) {
                        dia2.setPresencaTarde(false);
                    }
                }

                tentativa2 = dia2DAO.incluir(dia2);
                if (tentativa2) {
                    mensagem2 = "Presença efetuada com sucesso";
                } else {
                    mensagem2 = "Presença não pôde ser efetuada";
                }
            }
        }
        if (request.getMethod().equals("POST") && request.getParameter("txtCodigo3") != null) {

            Dia3DAO dia3DAO = new Dia3DAO();
            Dia3 dia3 = new Dia3();
            List<Dia3> dia3Lista = dia3DAO.listar();

            for (Dia3 dia3a : dia3Lista) {
                if (dia3a.getIdParticipante().getId().toString().equals(request.getParameter("txtCodigo3"))) {

                    dia3.setId(dia3a.getId());
                    participante.setId(Integer.parseInt(request.getParameter("txtCodigo3")));
                    dia3.setIdParticipante(participante);

                    if (request.getParameter("txtCoffee3") != null) {
                        if (request.getParameter("txtCoffee3").equals("S")) {
                            dia3.setCoffeeBreak(true);
                        }
                        if (request.getParameter("txtCoffee3").equals("N")) {
                            dia3.setCoffeeBreak(false);
                        }
                    } else {
                        if (dia3a.getCoffeeBreak()) {
                            dia3.setCoffeeBreak(true);
                        } else {
                            dia3.setCoffeeBreak(false);
                        }
                    }
                    if (request.getParameter("txtManha3") != null) {
                        if (request.getParameter("txtManha3").equals("S")) {
                            dia3.setPresencaManha(true);
                        }
                        if (request.getParameter("txtManha3").equals("N")) {
                            dia3.setPresencaManha(false);
                        }
                    } else {
                        if (dia3a.getPresencaManha()) {
                            dia3.setPresencaManha(true);
                        } else {
                            dia3.setPresencaManha(false);
                        }
                    }
                    if (request.getParameter("txtTarde3") != null) {
                        if (request.getParameter("txtTarde3").equals("S")) {
                            dia3.setPresencaTarde(true);
                        }
                        if (request.getParameter("txtTarde3").equals("N")) {
                            dia3.setPresencaTarde(false);
                        }
                    } else {
                        if (dia3a.getPresencaTarde()) {
                            dia3.setPresencaTarde(true);
                        } else {
                            dia3.setPresencaTarde(false);
                        }
                    }
                    tentativa3 = dia3DAO.alterar(dia3);
                }
            }
            if (tentativa3) {
                mensagem3 = "Alteração efetuada com sucesso";
            } else {
                mensagem3 = "Alteração não pôde ser efetuada";
                incluir = true;
            }

            if (incluir) {
                List<Participante> participanteLista = participanteDAO.listar();
                boolean id = false;
                for (Participante part : participanteLista) {
                    if (Integer.parseInt(request.getParameter("txtCodigo3")) == part.getId()) {
                        id = true;
                    }
                }
                if (id) {
                    participante.setId(Integer.parseInt(request.getParameter("txtCodigo3")));
                } else {
                    response.sendRedirect("presenca.jsp");
                    return;
                }
                dia3.setIdParticipante(participante);

                if (request.getParameter("txtCoffee3") != null) {
                    if (request.getParameter("txtCoffee3").equals("S")) {
                        dia3.setCoffeeBreak(true);
                    }
                    if (request.getParameter("txtCoffee3").equals("N")) {
                        dia3.setCoffeeBreak(false);
                    }
                }
                if (request.getParameter("txtManha3") != null) {
                    if (request.getParameter("txtManha3").equals("S")) {
                        dia3.setPresencaManha(true);
                    }
                    if (request.getParameter("txtManha3").equals("N")) {
                        dia3.setPresencaManha(false);
                    }
                }
                if (request.getParameter("txtTarde3") != null) {
                    if (request.getParameter("txtTarde3").equals("S")) {
                        dia3.setPresencaTarde(true);
                    }
                    if (request.getParameter("txtTarde3").equals("N")) {
                        dia3.setPresencaTarde(false);
                    }
                }

                tentativa3 = dia3DAO.incluir(dia3);
                if (tentativa3) {
                    mensagem3 = "Presença efetuada com sucesso";
                } else {
                    mensagem3 = "Presença não pôde ser efetuada";
                }
            }
        }
    } catch (Exception e) {
        response.sendRedirect("presenca.jsp");
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
        <title>SACI 2017 - Presença</title>
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
                        <div class="12u">		
                        </div>
                    </div>
                    <div class="row">
                        <div class="12u">
                            <!-- Cards de Presença -->
                            <!-- Portfolio -->
                            <section>
                                <header class="major">
                                    <h2>Presença</h2>
                                </header>
                                <div class="row">
                                    <div class="4u 12u(mobile)">				
                                        <section class="box">
                                            <header>
                                                <h3>Dia 1</h3>
                                            </header>
                                            <form action="presenca.jsp" name="Dia1" method="post">
                                                <div class="row control-group">
                                                    <div>
                                                        <input type="text" class="form-control" placeholder="Código" name="txtCodigo1" id="name" required data-validation-required-message="Por favor insira o código.">
                                                        <p class="help-block text-danger"></p>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div>
                                                        <h4>Presente em:</h4>
                                                        &nbsp;&nbsp;<b>Manhã:</b>
                                                        Sim<input type="radio" class="form-control" name="txtManha1" id="categoria1" value="S">
                                                        Não<input type="radio" class="form-control" name="txtManha1" id="categoria1" value="N"><br />
                                                        &nbsp;&nbsp;<b>Tarde:</b>
                                                        Sim<input type="radio" class="form-control" name="txtTarde1" id="categoria2" value="S">
                                                        Não<input type="radio" class="form-control" name="txtTarde1" id="categoria2" value="N"><br />
                                                        &nbsp;&nbsp;<b>Coffee Break:</b>
                                                        Sim<input type="radio" class="form-control" name="txtCoffee1" id="codigo" value="S">
                                                        Não<input type="radio" class="form-control" name="txtCoffee1" id="codigo" value="N">
                                                        <p class="help-block text-danger"></p>
                                                    </div>
                                                </div>
                                                <br>
                                                <div id="success"></div>
                                                <div class="row">
                                                    <div class="form-group col-xs-12">
                                                        <button type="submit" class="btn btn-default">Enviar</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <%
                                                if (mensagem1 != null) {
                                            %>
                                            <p><%=mensagem1%></p>
                                            <%
                                                }
                                            %>
                                        </section>								
                                    </div>			
                                    <div class="4u 12u(mobile)">		
                                        <section class="box">
                                            <header>
                                                <h3>Dia 2</h3>
                                            </header>
                                            <form action="presenca.jsp" name="Dia2" method="post">
                                                <div class="row control-group">
                                                    <div>
                                                        <input type="text" class="form-control" placeholder="Código" name="txtCodigo2" id="name" required data-validation-required-message="Por favor insira o código.">
                                                        <p class="help-block text-danger"></p>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div>
                                                        <h4>Presente em:</h4>
                                                        &nbsp;&nbsp;<b>Manhã:</b>
                                                        Sim<input type="radio" class="form-control" name="txtManha2" id="categoria1" value="S">
                                                        Não<input type="radio" class="form-control" name="txtManha2" id="categoria1" value="N"><br />
                                                        &nbsp;&nbsp;<b>Tarde:</b>
                                                        Sim<input type="radio" class="form-control" name="txtTarde2" id="categoria2" value="S">
                                                        Não<input type="radio" class="form-control" name="txtTarde2" id="categoria2" value="N"><br />
                                                        &nbsp;&nbsp;<b>Coffee Break:</b>
                                                        Sim<input type="radio" class="form-control" name="txtCoffee2" id="codigo" value="S">
                                                        Não<input type="radio" class="form-control" name="txtCoffee2" id="codigo" value="N">
                                                        <p class="help-block text-danger"></p>
                                                    </div>
                                                </div>
                                                <br>
                                                <div id="success"></div>
                                                <div class="row">
                                                    <div class="form-group col-xs-12">
                                                        <button type="submit" class="btn btn-default" name="submit">Enviar</button>
                                                    </div>
                                                </div>
                                            </form>	
                                            <%
                                                if (mensagem2 != null) {
                                            %>
                                            <p><%=mensagem2%></p>
                                            <%
                                                }
                                            %>
                                        </section>	
                                    </div>
                                    <div class="4u 12u(mobile)">		
                                        <section class="box">
                                            <header>
                                                <h3>Dia 3</h3>
                                            </header>
                                            <form action="presenca.jsp" name="Dia3" method="post">
                                                <div class="row control-group">
                                                    <div>
                                                        <input type="text" class="form-control" placeholder="Código" name="txtCodigo3" id="name" required data-validation-required-message="Por favor insira o código.">
                                                        <p class="help-block text-danger"></p>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div>
                                                        <h4>Presente em:</h4>
                                                        &nbsp;&nbsp;<b>Manhã:</b>
                                                        Sim<input type="radio" class="form-control" name="txtManha3" id="categoria1" value="S">
                                                        Não<input type="radio" class="form-control" name="txtManha3" id="categoria1" value="N"><br />
                                                        &nbsp;&nbsp;<b>Tarde:</b>
                                                        Sim<input type="radio" class="form-control" name="txtTarde3" id="categoria2" value="S">
                                                        Não<input type="radio" class="form-control" name="txtTarde3" id="categoria2" value="N"><br />
                                                        &nbsp;&nbsp;<b>Coffee Break:</b>
                                                        Sim<input type="radio" class="form-control" name="txtCoffee3" id="codigo" value="S">
                                                        Não<input type="radio" class="form-control" name="txtCoffee3" id="codigo" value="N">
                                                        <p class="help-block text-danger"></p>
                                                    </div>
                                                </div>
                                                <br>
                                                <div id="success"></div>
                                                <div class="row">
                                                    <div class="form-group col-xs-12">
                                                        <button type="submit" class="btn btn-default" name="submit">Enviar</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <%
                                                if (mensagem3 != null) {
                                            %>
                                            <p><%=mensagem3%></p>
                                            <%
                                                }
                                            %>
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