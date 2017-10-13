<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="container">
	<div class="row">
		<h2> Login/Sign-up</h2>
	</div>
</div>
<br>
<br>
<div class="container" align="center" >
<div class="row">
<div class="col-md-4 col-md-offset-4">
<div class="form-body">
   
    
       
        <div class="innter-form">
          <form:form class="sa-innate-form" method="post" action="${pageContext.request.contextPath}/login" >  
            
          
     
            <label>Email Address</label>
            <input type="text" name="username">
            <br/>
            <label>Password</label>
            <input type="password" name="password">
            <br/>
            <button type="submit">LOGIN</button>
            <a href="Registerpage">REGISTER YOURSELF</a>
            </form:form>
            </div>
            
            </div>
      
     
    </div>
    </div>
    </div>

</body>
 <br/>
 <br/>
  <jsp:include page="footer.jsp"></jsp:include>
</html>