<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<br>
<br>

<div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
                <thead><tr>
                <th class="text-center">ProductID</th>
                <th class="text-center">ProductName</th>
               <th class="text-center">Description</th>
                 <th class="text-center">Image</th>
                
                  <th class="text-center">Stock</th>
                   <th class="text-center">Price</th>
                   <th class="text-center">Action</th>
                   
                </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${productlist}">
                    <tr>
                   <td>${product.productID}</td>
                    <td>${product.productName}</td>
                    <td>${product.description}</td>
                    <td><img src="${pageContext.request.contextPath}/resources/image/${product.productID}.png" height="50px" width="50px"></td>
                   
                    <td>${product.stock}</td>
                       <td>${product.price}</td>
                    <td class="actions"><a class='btn btn-info btn-xs' href="${pageContext.request.contextPath}/Admin/deleteP/${product.productID}">
                    <span class="glyphicon glyphicon-remove"></span>
Delete</a>
                   <a class='btn btn-danger btn-xs' href="${pageContext.request.contextPath}/Admin/updatep/${product.productID}"><span class="glyphicon glyphicon-edit"></span>Update</a>
                   </td>
                   </tr>
                    </c:forEach>   
                </tbody>          
            </table>
            </div>
            </div>
</body>
 <br/>
 <br/>
  <jsp:include page="footer.jsp"></jsp:include>
</html>


      
             
