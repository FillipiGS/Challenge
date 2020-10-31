<%--
  Created by IntelliJ IDEA.
  User: filli
  Date: 30/10/2020
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>

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

    <!-- PERFIL -->
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-7 ">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="box box-info">
                            <div class="box-body">
                                <div class="col-sm-6">

                                    <!-- EDITAR FOTO -->
                                    <div class="justify-content-center align-items-center">
                                        <img alt="Imagem do Usuário" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="imagemPerfil" class="rounded img-responsive">
                                        <input id="carregarImagemPerfil" class="hidden" type="file">
                                        <div style="color:#999;">editar imagem</div>
                                    </div>
                                    <br>

                                    <!-- INFORMAÇÕES DO FUNCIONÁRIO -->
                                </div>
                                <div class="col">
                                    <h4 style="color:#00b1b1;">NOME DO FUNCIONÁRIO</h4></span>
                                    <span>
                                            <p>FUNCIONÁRIO DE TI</p>
                                        </span>
                                </div>
                                <div class="clearfix"></div>
                                <hr style="margin:5px 0 5px 0;">

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Nome:</div>
                                <div class="col-sm-7 col-xs-6 ">Fillipi</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Sobrenome:</div>
                                <div class="col-sm-7"> Silva</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Funcional:</div>
                                <div class="col-sm-7"> 09960490</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">CPF:</div>
                                <div class="col-sm-7">420.258.758-86</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Salário:</div>
                                <div class="col-sm-7">R$ 15.000,00</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Data de Nascimento:</div>
                                <div class="col-sm-7">23 Fevereiro 1994</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Data de Admissão:</div>
                                <div class="col-sm-7">15 Outubro 2020</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil ">Administrador:</div>
                                <div class="col-sm-7">Sim</div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                                <div class="col-sm-5 col-xs-6 tituloPerfil justify-content-center align-items-center">
                                    <button type="button" class="btn btn-outline-info">Atualizar</button>
                                </div>
                                <div class="clearfix"></div>
                                <div class="bordaBot"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- SCRIPT PARA FUNÇÃO DE UPLOAD DA FOTO -->
            <script>
                $(function () {
                    $('#imagemPerfil').on('click', function () {
                        $('#carregarImagemPerfil').click();
                    });
                });
            </script>

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