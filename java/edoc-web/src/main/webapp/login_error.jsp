<!DOCTYPE html>
<html class="login-bg">
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
<body>

    <form action="<c:url value='/j_security_check'/>" method="post">
        <div class="row-fluid login-wrapper">
            <img class="logo" src="<c:url value='/img/logo-white.png'/>">

            <div class="span4 box">
                <div class="content-wrap">
                    <h6>Log in</h6>

                    <div class="alert alert-error">Login ou senha inválidos</div>

                    <input class="span12" type="text" name="j_username" placeholder="E-mail">
                    <input class="span12" type="password" name="j_password" placeholder="Senha">
                    <a href="<c:url value="/login/recuperar"/>" class="forgot">Forgot password?</a>
                    <input class="btn-glow primary login" type="submit" value="Log in"/>
                </div>
            </div>
        </div>
    </form>

	<!-- scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/js/theme.js'/>"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
            // bg switcher
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");

                $("html").css("background-image", "url('img/bgs/" + bg + "')");
            });

        });
    </script>
</body>
</html>