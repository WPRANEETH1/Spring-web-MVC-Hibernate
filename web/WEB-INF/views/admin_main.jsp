<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String val = (String) session.getAttribute("userole"); %>
<% if (val == null) { %>
<% response.sendRedirect("login"); %>
<% }%>
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
        <link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet" type="text/css" media="screen"/>    
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
                    <li class="active"><a href="#" style="color: white">Home</a></li>                                     
                    <li>
                        <a href="#" data-toggle="dropdown" class="toggle">
                            <img src="<c:url value="/resources/img/rec.png"/>" width="20px;" alt="user-image" class="img-circle img-inline">
                            <span style="color: white"> : <%=session.getAttribute("name")%> <i class="fa fa-angle-down"></i></span>
                        </a>
                        <ul class="dropdown-menu profile animated fadeIn">
                            <li class="last">
                                <a href="profile">
                                    <i class="fa fa-lock"></i>
                                    Profile
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="logout" style="color: white">Logout</a></li>   
                </ul>
            </nav>
        </div>          
    </nav>     


    <section id="login" class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12">                    
                    <div class="col-md-3">
                        <div style="margin: 0px;padding: 0px;">
                            <img src="<c:url value="/resources/img/rec.png"/>" width="120px;" alt="user-image" class="img-circle img-inline">
                        </div>
                    </div>
                    <div class="col-md-9" style="text-align: left">
                        <h2>Welcome Admin : <%=session.getAttribute("username")%></h2>
                        <h4 style="color: black">There are currently ${expcount} experts.</h4>
                        <h4 style="color: black">There are currently ${usrcount} users.</h4>
                        <input type="button" value="View Gallery" class="btn btn-success"/>
                    </div>
                </div>
                <span style="text-align: left;padding-bottom: 0px;">
                    <h3 style="margin-left:7%;">Member Since : <fmt:formatDate value="${useData.createDate}" pattern="yyyy-MM-dd" /></h3>
                </span>                
            </div>
        </div>
    </section>

    <section class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12"> 
                    <div class="col-md-4" style="padding-top: 3%;">
                        <table class="table table-condensed">
                            <tbody style="background-color: #0d95e8;" >
                            <p id="nifo" style="font-size: 15px;"></p>
                            <tr>
                                <td colspan="2">Profile Information</td>
                            </tr>
                            <tr>
                                <td id="highlight-data">Full Name :</td>
                                <td id="view-name"><input type="text" id="firstName" disabled="" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr>
                            <tr>
                                <td id="highlight-data">Age :</td>
                                <td id="view-nic"><input type="text" id="lastName" disabled="disabled" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr>                               
                            <tr>
                                <td id="highlight-data">User Name :</td>
                                <td id="view-date"><input type="text" id="birthday" disabled="disabled" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr> 
                            <tr>
                                <td id="highlight-data">Password :</td>
                                <td id="view-laddress"><input type="text" id="department" disabled="disabled" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr>
                            <tr>
                                <td id="highlight-data">Email :</td>
                                <td id="view-paddress"><input type="text" id="contactnumber" disabled="disabled" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr>
                            <tr>
                                <td id="highlight-data">Allow Email Notification  :</td>
                                <td id="view-email"><input type="text" id="email" disabled="disabled" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr>
                            <tr>
                                <td id="highlight-data">Account Type  :</td>
                                <td id="view-email"><input type="text" id="email" disabled="disabled" style="background-color: #656868;border: 2px;width: 100%" value="xxxxxxxxxx"/></td>
                            </tr>
                            <tr>
                                <td id="highlight-data"></td>
                                <td id="view-contactno"></br>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-8"></div>
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