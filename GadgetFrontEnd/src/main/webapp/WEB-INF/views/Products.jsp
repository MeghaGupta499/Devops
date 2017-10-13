<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<br/>
<br/>
<br/>
<br/>
<div class="container">
    <div class="row">
    
    
    
        <c:forEach var="product" items="${ProductList}">
        <div class="col-md-3"><p>${product.productName}</p>
       <a href="${pageContext.request.contextPath}/des/${product.productID}"> <img src="${pageContext.request.contextPath}/resources/image/${product.productID}.png" height="200px" width="200px"></a>
     </div> </c:forEach>  
      
      
    </div>
    </div>
   

</body>
 <br/>
 <br/>
  <jsp:include page="footer.jsp"></jsp:include>
</html>