<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>

     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Welcome</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/css/iedit.css" rel="stylesheet">
    
    
</head>

<body id="page-top">
    <nav class="navbar navbar-default navbar-fixed-top">
      <!--    <c:if test="${pageContext.request.userPrincipal.name != null}"></c:if> -->
        <div class="container">
            <div class="navbar-header">
				<a class="navbar-brand page-scroll" href="#page-top">Welcome ${pageContext.request.userPrincipal.name}</a>
            </div>
                <ul class="nav navbar-nav navbar-right">
					<li>
                        <a class="page-scroll" href="#login">iEdit App</a>
                    </li>
					<li>
                        <a class="page-scroll" href="#manual">Manual</a>
                    </li>
	                <li>
	                 <form id="logoutForm" method="POST" action="${contextPath}/logout">
			            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			        </form>

          <a class="page-scroll" onclick="document.forms['logoutForm'].submit()">Logout</a>
	                
	                
                     <!--    <a class="page-scroll" href="#register">Logout</a> -->
                    </li>
                </ul>
        </div>
    </nav>
	
    <header class="uContainer">
		<div class="container">
            <div class="tContent">
                <div class="col-sm-7">
                    <div class="header-content">
                        <div class="header-content-inner">
                            <h1>Gain 1000s of followers instantly, by trying our insta photo editing app that will transform your images into a high quality brand. </h1>
                            <a href="${contextPath}/paint" class="btn btn-lg btn-default page-scroll">Enter Application</a>
                            <a href="${contextPath}/n" class="btn btn-lg btn-default page-scroll">Enter Application</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="img-container">
						<img src="${contextPath}/resources/img/placeholder.jpg" class="img-responsive" alt="">
					</div>
                </div>
            </div>
        </div>
    </header>
	

    <section id="manual" class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
					<h2>How it works?</h2>
					<p> At IEdit we have a group of experts, including popular Insta account owners of various areas that directly coach you to increase your following. <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
										<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, <br> 
					sed do exercitation ullamco laboris nisi ut aliquip </p>
				</div>
            </div>
        </div>
    </section>


    <footer>
        <div class="container">
            <p>&copy; iEdit App</p>
            <ul class="list-inline">
                <li>
                    <a href="#">Privacy</a>
                </li>
                <li>
                    <a href="#">Terms</a>
                </li>
                <li>
                    <a href="#">FAQ</a>
                </li>
            </ul>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/new-age.min.js"></script>
	
</body>

</html>
