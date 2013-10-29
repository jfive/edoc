<!DOCTYPE html>
<html class="login-bg" ng-app>
<head>
    <title>Detail Admin - Sign in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap -->
    <link href="<c:url value='/css/bootstrap/bootstrap.css'/>" rel="stylesheet">
    <link href="<c:url value='/css/bootstrap/bootstrap-responsive.css'/>" rel="stylesheet">
    <link href="<c:url value='/css/bootstrap/bootstrap-overrides.css'/>" type="text/css" rel="stylesheet">

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/layout.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/elements.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/icons.css'/>">
    <link href="<c:url value='/css/lib/select2.css'/>" type="text/css" rel="stylesheet">

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/lib/font-awesome.css'/>">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="<c:url value='/css/compiled/signin.css'/>" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<body ng-controller="trocarSenhaController">


    <form id="formTrocarSenha" name="form">
        <div class="row-fluid login-wrapper">
            <img class="logo" src="<c:url value='/img/logo-white.png'/>">

            <div class="span4 box">
                <div class="content-wrap">
                    <h6>Trocar Senha</h6>
                    <div id="errorMessage"></div>

                    <input class="span12" type="text"
                       name="senhaAtual"
                       placeholder="Senha atual"
                       ng-model="usuario.senha"/>

                    <input class="span12" type="text"
                           name="novaSenha"
                           placeholder="Nova atual"
                           ng-model="usuario.novaSenha"/>

                    <input class="span12" type="text"
                           name="confirmarSenha"
                           placeholder="Confirmar senha"
                           ng-model="usuario.confirmarSenha"/>

                    <div class="row ctrls">
                        <input class="btn-glow primary login" type="button" value="alterar senha" id="btnSubmit"  ng-click="trocarSenha(form)"/>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- scripts -->
    <script src="<c:url value='/js/jquery-1.10.2.min.js'/>"></script>
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/js/theme.js'/>"></script>
    <script src="<c:url value='/js/angular.min.js'/>"></script>
    <script src="<c:url value='/js/select2.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.validate.min.js'/>"></script>
    <script src="<c:url value='/js/global.js'/>"></script>
    <script src="<c:url value='/js/login/trocarSenha/controller.js'/>"></script>

</body>
</html>