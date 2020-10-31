<%@ page import="bean.Funcionario" %>
<%@ page import="dao.FuncionarioDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f" %>

<%
    List<Funcionario> list= FuncionarioDAO.listar();
    request.setAttribute("list",list);
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitação</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- jQuery and JS bundle w/ Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body>

<div class="wrapper"> <!-- div necessária para que o footer fique sempre fixo na parte de baixo -->

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="index.jsp"><img src="img/logoB2W.png" class="logo"  alt="Imagem do logo da B2w"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/_9sys-1.0-SNAPSHOT/index.jsp">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/_9sys-1.0-SNAPSHOT/solicitacao.jsp">Solicitações</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/_9sys-1.0-SNAPSHOT/cronograma.jsp">Cronograma</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/_9sys-1.0-SNAPSHOT/login.jsp"><img src="img/iconePerfil.png" class="iconePerfil mr-1" alt="imagem de icone do perfil">Perfil</a>
                    </li>
                </ul>
            </form>
        </div>
    </nav>

    <!-- FORMULÁRIO DE SOLICITAÇÃO -->
    <div class="container login">
        <div class="rowjustify-content-center align-items-center">
            <div class="col-md-12 loginFormulario">
                <center>
                    <img src="img/imgSolicitacao.png" class="iconeLogin" alt="imagem de usuário">
                    <h3>FORMULÁRIO DE SOLICITAÇÃO</h3>
                </center>
                <form action="${pageContext.request.contextPath}/criar" method="post">
                    <div class="form-group">
                        <label for="nomeSolicitado">Protocolo</label>
                        <input type="text" class="form-control" name="id" id="nomeSolicitado" placeholder="protocolo" value="00001" readonly />
                    </div>
                    <div class="form-group">
                        <label for="tituloSolicitacao">Titulo</label>
                        <input type="text" class="form-control" id="tituloSolicitacao" placeholder="Nome do Solicitado" name="titulo" value="" />
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Departamento</label>
                        <select name="departamento" class="form-control" id="exampleFormControlSelect1">
                            <option>Administrativo</option>
                            <option>Tecnologia</option>
                            <option>RH</option>
                            <option>Contabilidade</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="descricaoSolicitacao">Descrição da solicitação</label>
                        <textarea class="form-control" name="descricao" id="descricaoSolicitacao" rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="anexo">Anexar Documento</label>
                        <input type="file" class="form-control-file" name="anexo" id="anexo">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-info" value="Solicitar" />
                        <a href="/_9sys-1.0-SNAPSHOT/solicitacoes.jsp"><input type="submit" class="btn btn-outline-info" value="Feed de Solicitacao" /></a>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <div class="push"></div> <!-- div necessária para que o footer fique sempre fixo na parte de baixo -->
</div>
<!-- FOOTER -->
<footer class="footer navbar-fixed-bottom">
    <ul class="navbar-nav mr-auto">
        <center>
            <h6>Desenvolvido por 9sys</h6>
        </center>
        <li class="nav-item">
            <center>
                <a><img src="img/footerFacebook.png" alt="imagem logo facebook" class="iconesFooter"></a>
                <a><img src="img/footerTwitter.png" alt="imagem logo twitter" class="iconesFooter mx-3"></a>
                <a><img src="img/footerInstagram.png" alt="imagem logo instagram" class="iconesFooter"></a>
            </center>
        </li>
    </ul>
</footer>

</body>
</html>
