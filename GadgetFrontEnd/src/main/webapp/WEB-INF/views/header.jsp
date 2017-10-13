<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 -->
<!-- Latest compiled JavaScript 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  -->
    
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script> --> 
  <link rel="stylesheet" href="<c:url value='/resources/css/customstylesheet.css'/>">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
 <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />"> 
 <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.1/css/font-awesome.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resources/css/description.css' />">
 

</head>
<body>
  <nav class="nav navbar-inverse">
    <div class="container">
     <div class="navbar-header">
     <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     </button> -->
  <li class="active">  <a class="navbar-brand" href="/GadgetFrontEnd/"><B>Anonymous</b></a>
  </li>
      </div>
      <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="nav navbar-nav">
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Appliances<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <c:forEach var="cat" items="${categorylist}">
            <li class="dropdown-header" value="${cat.cid}"><a href="${pageContext.request.contextPath}/viewProducts/${cat.cid}">${cat.cname}</a></li>
            
            <li class="divider"></li>
            </c:forEach>
          
          

        </ul>
        </li>
      
     <!--            
<li>
  <a href="${pageContext.request.contextPath}/Admin/addProduct"  class="data-toggle">Admin</a>
</li>  -->

<security:authorize access="hasAuthority('ADMIN')">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/"><span
					class="glyphicon glyphicon-user"></span> ADMIN<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${pageContext.request.contextPath}/Admin/addProduct"><span
							class="glyphicon glyphicon-list"></span>Product Management</a></li>
							<li> <a href="<c:url value="/logout"/>">Logout</a> </li>
				</ul></li>
				</security:authorize>
				
				
<security:authorize access="hasAuthority('User')">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/"><span
			class="glyphicon glyphicon-user"></span>Welcome :${pageContext.request.userPrincipal.name}<span class="caret"></span></a>
				<ul class="dropdown-menu">
				<li> <a href="<c:url value="/logout"/>">Logout</a> </li>
				</ul></li>
				</security:authorize>
				
				

</ul>

      <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-gift"></span>Track Your Order</a></li>
        <li><a href="${pageContext.request.contextPath}/Admin/addProduct"><span class="glyphicon glyphicon-user"></span> Login/Sign Up</a></li>
        
          <li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>cart</a></li>
      </ul>
    </div>
  </div>
  </nav>
</body>
</html>