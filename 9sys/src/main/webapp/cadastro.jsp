<%@ page import="bean.Funcionario" %>
<%@ page import="dao.FuncionarioDAO" %><%--
  Created by IntelliJ IDEA.
  User: filli
  Date: 25/10/2020
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
String senha = "";
senha = request.getParameter("senha");
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>

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
                    <a class="nav-link" href="${pageContext.request.contextPath}/cronograma.jsp">Cronograma</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/login.jsp"><img src="img/iconePerfil.png" class="iconePerfil mr-1" alt="imagem de icone do perfil">Perfil</a>
                    </li>
                </ul>
            </form>
        </div>
    </nav>

    <!-- CADASTRO DE USUÁRIOS -->
    <div class="container cadastro">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6 cadastroFormulario">
                <center>
                    <img src="img/imgCadastro.png" class="iconeCadastro" alt="imagem de cadastro">
                    <h3>CADASTRO DE FUNCIONÁRIO</h3>
                </center>
                <form action="${pageContext.request.contextPath}/cadastrar" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" name="id" placeholder="Id" value="12345" readonly required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="nome" placeholder="Nome" value="" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="sobrenome" placeholder="Sobrenome" value="" required/>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="Email" value="" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="cpf" placeholder="CPF" onkeydown="fMasc( this, mCPF );" value="" required/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="senha" placeholder="Senha do Funcionário"  value="" required/>
                    </div>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">R$</div>
                        </div>
                        <input type="text" min=0 step=0,01 id="cifrao" name="salario" class="form-control" placeholder="Salário"  />
                    </div>
                    <label>Data de Nascimento</label>
                    <div class="form-group">
                        <input type="date" class="form-control" name="dataNascimento" placeholder="Data de Nascimento" pattern="dd/MM/yyyy" value="" />
                    </div>
                    <label>Data de Admissão</label>
                    <div class="form-group">
                        <input type="date" class="form-control" name="dataAdmissao" placeholder="Data de Admissão" pattern="dd/MM/yyyy" value="" />
                    </div>
                    <fieldset class="form-group">
                        <label>Permisão de Adiministrador</label>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="permissaoAdmin" id="simADM" value="s">
                            <label class="form-check-label" for="simADM">Sim</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="permissaoAdmin" id="naoADM" value="n">
                            <label class="form-check-label" for="naoADM">Não</label>
                        </div>
                    </fieldset>
                    <div class="form-group">
                        <label for="anexo">Anexar Documento</label>
                        <input type="file" class="form-control-file" id="anexo">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="botaoSubmitCadastro" value="Entrar" />
                    </div>
                    <div class="form-group">
                        <a href="perfil.jsp" class="esquecerSenhar">Esqueceu senha?</a>
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

<script type="text/javascript">
    function fMasc(objeto,mascara) {
        obj=objeto
        masc=mascara
        setTimeout("fMascEx()",1)
    }
    function fMascEx() {
        obj.value=masc(obj.value)
    }
    function mTel(tel) {
        tel=tel.replace(/\D/g,"")
        tel=tel.replace(/^(\d)/,"($1")
        tel=tel.replace(/(.{3})(\d)/,"$1)$2")
        if(tel.length == 9) {
            tel=tel.replace(/(.{1})$/,"-$1")
        } else if (tel.length == 10) {
            tel=tel.replace(/(.{2})$/,"-$1")
        } else if (tel.length == 11) {
            tel=tel.replace(/(.{3})$/,"-$1")
        } else if (tel.length == 12) {
            tel=tel.replace(/(.{4})$/,"-$1")
        } else if (tel.length > 12) {
            tel=tel.replace(/(.{4})$/,"-$1")
        }
        return tel;
    }
    function mCNPJ(cnpj){
        cnpj=cnpj.replace(/\D/g,"")
        cnpj=cnpj.replace(/^(\d{2})(\d)/,"$1.$2")
        cnpj=cnpj.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3")
        cnpj=cnpj.replace(/\.(\d{3})(\d)/,".$1/$2")
        cnpj=cnpj.replace(/(\d{4})(\d)/,"$1-$2")
        return cnpj
    }
    function mCPF(cpf){
        cpf=cpf.replace(/\D/g,"")
        cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
        cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
        cpf=cpf.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
        return cpf
    }
    function mCEP(cep){
        cep=cep.replace(/\D/g,"")
        cep=cep.replace(/^(\d{2})(\d)/,"$1.$2")
        cep=cep.replace(/\.(\d{3})(\d)/,".$1-$2")
        return cep
    }
    function mNum(num){
        num=num.replace(/(\d{4})[-.\/](\d{2})[-.\/](\d{2})/,"")
        return num
    }
</script>

</body>
</html>