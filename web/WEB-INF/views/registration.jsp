<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Log in with your account</title>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<c:url value="/resources/css/common.css"/>" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<c:url value="/resources/css/iedit.css"/>" rel="stylesheet" type="text/css" media="screen"/>    
        <style> 
            .main{
                width: 230px;
                margin-top: 4px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 16px;
                background-color: black;
                background-image: url('https://cdn1.iconfinder.com/data/icons/hawcons/32/698627-icon-111-search-128.png');
                background-size: 30px;
                background-position: 10px 5px; 
                background-repeat: no-repeat;
                padding: 8px 20px 6px 40px;
                -webkit-transition: width 0.4s ease-in-out;
                transition: width 0.4s ease-in-out;
            }
            .navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus, .navbar-default .navbar-nav>.active>a:hover {
                background-color: slategrey;
            }
            .navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:focus, .navbar-default .navbar-nav>.open>a:hover {
                background-color: slategrey;
            }
        </style>
    </style>
</head>
<body id="page-top" style="padding-top: 0px;">


    <nav class="navbar navbar-default" style="margin-bottom: 0px;background-color: black">   
        <div class="navbar-header navbar-left">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <form style="padding-left: 15%">
                <input class="main" type="text" name="search" placeholder="Search..">
            </form>
        </div>        
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
            <nav class="link-effect-2" id="link-effect-2">
                <ul class="nav navbar-nav">                   
                    <li><a href="login" style="color: white">Home</span></a></li>
                    <li class="active"><a href="registration" style="color: white">Register</a></li>
                    <li><a href="#" style="color: white">Services</a></li>
                </ul>
            </nav>
        </div>          
    </nav>     


    <section id="register" class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">                    
                    <h2 class="form-heading">Register Page</h2>  <br>                      
                    <div style="height: 50px;color: red">                        
                        <% if (request.getAttribute("error") != null) {%>
                        <h3><%=request.getAttribute("error")%></h3>
                        <% }%>
                    </div>
                    <form:form  method="POST" action="" modelAttribute="regObj" class="form-signin">
                        <div class="form-group">

                            <p>
                                <label for="user_login">First Name</label>
                                <form:input path="firstName" id="firstName" class="form-control" required="true"/>                                
                            </p>

                            <p>
                                <label for="user_login">Last Name</label>
                                <form:input path="lastName" id="lastName" class="form-control" required="true"/>
                            </p>                            

                            <p>
                                <label for="user_login">UserName</label>
                                <form:input path="userName" id="userName" class="form-control" required="true"/>                               
                            </p>

                            <p>
                                <label for="user_login">E-mail</label>
                                <form:input path="email" id="email" class="form-control" required="true"/>                               
                            </p>

                            <p>
                                <label for="user_login">Select Type</label>
                                <select class="form-control" style="color: black" id="setuserrole" name="setuserrole" >
                                    <c:forEach var="userrole" items="${regObj.userrole}">
                                        <option value="${userrole}">${userrole}</option>
                                    </c:forEach>
                                </select>                                
                            </p>

                            <p class="submit"><br><br>
                                <input type="submit" name="wp-submit" id="wp-submit" class="btn btn-primary btn-block" value="Submit" />
                            </p>
                        </div>
                    </form:form >
                </div>
            </div>
        </div>
    </section>



    <footer>
        <div class="container" style="text-align: center;margin-top: 1%;">
            <p style="color: black">&copy; iEdit App</p>
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

    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>" type="text/javascript"></script> 
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="<c:url value="/resources/js/new-age.min.js"/>" type="text/javascript"></script> 
</body>
</html>