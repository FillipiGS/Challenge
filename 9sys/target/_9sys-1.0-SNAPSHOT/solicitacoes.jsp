<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feed de Solicitações</title>

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


    <!-- LOGIN -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />

    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-12 col-lg-8">
                <div class="card">
                    <div class="card-body bg-primary text-white mailbox-widget pb-0">
                        <h2 class="text-white pb-3">SOLICITAÇÕES</h2>
                        <ul class="nav nav-tabs custom-tab border-bottom-0 mt-4" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="inbox-tab" data-toggle="tab" aria-controls="inbox" href="#inbox" role="tab" aria-selected="true">
                                    <span class="d-block d-md-none"><i class="ti-email"></i></span>
                                    <span class="d-none d-md-block">CAIXA DE ENTRADA</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="sent-tab" data-toggle="tab" aria-controls="sent" href="#sent" role="tab" aria-selected="false">
                                    <span class="d-block d-md-none"><i class="ti-export"></i></span>
                                    <span class="d-none d-md-block">PRIORITÁRIOS</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="spam-tab" data-toggle="tab" aria-controls="spam" href="#spam" role="tab" aria-selected="false">
                                    <span class="d-block d-md-none"><i class="ti-panel"></i></span>
                                    <span class="d-none d-md-block">EM ANDAMENTO</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="delete-tab" data-toggle="tab" aria-controls="delete" href="#delete" role="tab" aria-selected="false">
                                    <span class="d-block d-md-none"><i class="ti-trash"></i></span>
                                    <span class="d-none d-md-block">CONCLUÍDOS</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade active show" id="inbox" aria-labelledby="inbox-tab" role="tabpanel">
                            <div>
                                <div class="row p-4 no-gutters align-items-center">
                                    <div class="col-sm-12 col-md-6">
                                        <h3 class="font-light mb-0"><i class="ti-email mr-2"></i>350 Solicitações não lidas</h3>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <ul class="list-inline dl mb-0 float-left float-md-right">
                                            <li class="list-inline-item text-info mr-3">
                                                <a href="#">
                                                    <button class="btn btn-circle btn-success text-white" href="javascript:void(0)">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                    <span class="ml-2 font-normal text-dark">Abrir um chamado</span>
                                                </a>
                                            </li>
                                            <li class="list-inline-item text-danger">
                                                <a href="#">
                                                    <button class="btn btn-circle btn-danger text-white" href="javascript:void(0)">
                                                        <i class="fa fa-trash"></i>
                                                    </button>
                                                    <span class="ml-2 font-normal text-dark">Deletar</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- LISTA DE SOLICITAÇÕES -->
                                <div class="table-responsive">
                                    <table class="table email-table no-wrap table-hover v-middle mb-0 font-14">
                                        <tbody>
                                        <tr>
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst1" />
                                                    <label class="custom-control-label" for="cst1">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star text-warning"></i></td>
                                            <td>
                                                <span class="mb-0 text-muted">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-danger mr-2">ADM</span>
                                                    <span class="text-dark">Preciso de ajuda nessa solicitação</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted">Nov 13</td>
                                        </tr>
                                        <!-- row -->
                                        <tr>
                                            <!-- label -->
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst2" />
                                                    <label class="custom-control-label" for="cst2">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star"></i></td>
                                            <!-- User -->
                                            <td>
                                                <span class="mb-0 text-muted">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-info mr-2">Contabilidade</span>
                                                    <span class="text-dark">Preciso de ajuda nessa solicitação</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted">Dez 01</td>
                                        </tr>
                                        <!-- row -->
                                        <tr>
                                            <!-- label -->
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst3" />
                                                    <label class="custom-control-label" for="cst3">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star text-warning"></i></td>
                                            <!-- User -->
                                            <td class="user-name max-texts">
                                                <span class="mb-0 text-muted font-light">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-warning mr-2">Gerencia</span>
                                                    <span class="font-light text-dark">Reuna a equipe para focarmos no projeto</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted font-light">Nov 11</td>
                                        </tr>
                                        <!-- row -->
                                        <tr class="">
                                            <!-- label -->
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst4" />
                                                    <label class="custom-control-label" for="cst4">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star"></i></td>
                                            <!-- User -->
                                            <td>
                                                <span class="mb-0 text-muted font-light">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-info mr-2">TI</span><span class="font-light text-dark">Perspiciatis unde omnis- iste Lorem ipsum</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted font-light">Out 30</td>
                                        </tr>
                                        <!-- row -->
                                        <tr class="">
                                            <!-- label -->
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst5" />
                                                    <label class="custom-control-label" for="cst5">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star"></i></td>
                                            <!-- User -->
                                            <td>
                                                <span class="mb-0 text-muted font-light">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-success mr-2">TI</span> <span class="font-light text-dark">Preciso de ajuda nessa solicitação</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted font-light">Mar 10</td>
                                        </tr>
                                        <!-- row -->
                                        <tr class="">
                                            <!-- label -->
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst6" />
                                                    <label class="custom-control-label" for="cst6">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star text-warning"></i></td>
                                            <!-- User -->
                                            <td>
                                                <span class="mb-0 text-muted font-light">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-success mr-2">Work</span> <span class="font-light text-dark">Pode me ajudar com essa solicitação?</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted font-light">Nov 12</td>
                                        </tr>
                                        <!-- row -->
                                        <tr class="">
                                            <!-- label -->
                                            <td class="pl-3">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="cst7" />
                                                    <label class="custom-control-label" for="cst7">&nbsp;</label>
                                                </div>
                                            </td>
                                            <!-- star -->
                                            <td><i class="fa fa-star text-warning"></i></td>
                                            <!-- User -->
                                            <td>
                                                <span class="mb-0 text-muted font-light">Nome do Solicitante</span>
                                            </td>
                                            <!-- Message -->
                                            <td>
                                                <a class="link" href="javascript: void(0)">
                                                    <span class="badge badge-pill text-white font-medium badge-danger mr-2">ADM</span><span class="font-light text-dark">Preciso de sua ajuda!</span>
                                                </a>
                                            </td>
                                            <!-- Attachment -->
                                            <td><i class="fa fa-paperclip text-muted"></i></td>
                                            <!-- Time -->
                                            <td class="text-muted font-light">Jan 09</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="sent" aria-labelledby="sent-tab" role="tabpanel">
                            <div class="row p-3 text-dark">
                                <div class="col-md-6">
                                    <h3 class="font-light">Lets check profile</h3>
                                    <h4 class="font-light">you can use it with the small code</h4>
                                </div>
                                <div class="col-md-6 text-right">
                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="spam" aria-labelledby="spam-tab" role="tabpanel">
                            <div class="row p-3 text-dark">
                                <div class="col-md-6">
                                    <h3 class="font-light">Come on you have a lot message</h3>
                                    <h4 class="font-light">you can use it with the small code</h4>
                                </div>
                                <div class="col-md-6 text-right">
                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="delete" aria-labelledby="delete-tab" role="tabpanel">
                            <div class="row p-3 text-dark">
                                <div class="col-md-6">
                                    <h3 class="font-light">Just do Settings</h3>
                                    <h4 class="font-light">you can use it with the small code</h4>
                                </div>
                                <div class="col-md-6 text-right">
                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
