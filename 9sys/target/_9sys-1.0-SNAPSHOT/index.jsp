<%--
  Created by IntelliJ IDEA.
  User: filli
  Date: 29/10/2020
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- jQuery and JS bundle w/ Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body>

    <!--ASSISTENTE VIRTUAL-->
    <script id="watson">
        window.watsonAssistantChatOptions = {
            integrationID: "ccd9d4e7-0b4d-4ae2-8ff4-bc12d4f4c745", // The ID of this integration.
            region: "us-south", // The region your integration is hosted in.
            serviceInstanceID: "9f846d90-c82b-410e-b813-3e5b017e826e", // The ID of your service instance.
            onLoad: function(instance) { instance.render(); }
        };
        setTimeout(function(){
            const t=document.createElement('script');
            t.src="https://web-chat.global.assistant.watson.appdomain.cloud/loadWatsonAssistantChat.js";
            document.head.appendChild(t);
        });
    </script>
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

    <!-- TITULO -->
    <div class="container">
        <div class="row">
            <div class="col">
                <center>
                    <h3>Título Aqui</h3>
                </center>
            </div>
        </div>
    </div>

    <!-- CONTEÚDO CENTRAL -->
    <div class="container my-3">
        <div class="row">
            <div class="col-md-6">

                <!-- CARROSEL -->
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="img/imgCarrosel1.jpg" alt="Primeiro Slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/imgCarrosel2.jpg" alt="Segundo Slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/imgCarrosel3.jpg" alt="Terceiro Slide">
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-6">

                <!-- TEXTO -->
                <p class="text-center">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce diam tortor, vestibulum sed ante vitae, molestie condimentum lectus. Nunc at arcu in velit euismod aliquam. Mauris pharetra ornare massa at scelerisque. Nullam nisl velit, tristique non magna quis, laoreet porttitor quam. Pellentesque dapibus erat eu viverra efficitur. Ut accumsan sit amet velit non laoreet. Phasellus eget dapibus enim. Quisque efficitur tincidunt finibus.

                    Pellentesque suscipit risus lectus, et scelerisque lacus semper sed. Nam porta tellus quis massa vestibulum, sed sagittis ante porta. Proin fermentum dui a dui efficitur, at vestibulum eros molestie. Mauris at tristique ipsum. Duis ut sapien eget risus tincidunt pulvinar. Cras porta nunc ut sollicitudin hendrerit. Donec imperdiet risus non felis facilisis placerat. Curabitur libero mi, tempor vitae sagittis eu, pulvinar quis massa. Morbi consequat risus et metus luctus pharetra. Vivamus arcu mauris, tempus non dignissim ac, ultricies at tellus. Donec facilisis, magna id finibus vulputate, neque sapien facilisis nisi, eu lobortis tellus augue ac lacus. Cras ultrices magna consectetur quam porttitor, ac aliquet lacus consectetur. Vestibulum enim ante, convallis a leo a, sagittis accumsan eros.
                </p>

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