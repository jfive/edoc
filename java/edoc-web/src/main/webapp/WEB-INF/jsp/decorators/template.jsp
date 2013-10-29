<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head>
    <title>E-Box - <decorator:title /></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap -->
    <link href="<c:url value='/css/bootstrap/bootstrap.css'/>" rel="stylesheet" />
    <link href="<c:url value='/css/bootstrap/bootstrap-responsive.css'/>" rel="stylesheet" />
    <link href="<c:url value='/css/bootstrap/bootstrap-overrides.css'/>" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="<c:url value='/css/lib/jquery-ui-1.10.2.custom.css'/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value='/css/lib/uniform.default.css'/>" type="text/css" rel="stylesheet">
    <link href="<c:url value='/css/lib/select2.css'/>" type="text/css" rel="stylesheet">
    <link href="<c:url value='/css/lib/font-awesome.css'/>" type="text/css" rel="stylesheet" />


    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/compiled/layout.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/elements.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/icons.css'/>">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="<c:url value='/css/compiled/index.css'/>" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- lato font -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

    <script src="<c:url value='/js/jquery-1.10.2.min.js'/>"></script>
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/js/jquery-ui-1.10.2.custom.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.uniform.min.js'/>"></script>
    <script src="<c:url value='/js/select2.min.js'/>"></script>

    <%@ include file="topo.jsp" %>
    <%@ include file="menu.jsp" %>

    <!-- main container -->
    <div class="content">

        <decorator:body/>
    </div>

    <!-- scripts -->

    <script>
        var menuActive = '#${menu}';
    </script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/application.js"></script>

  </body>
</html>
