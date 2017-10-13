<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<table border="4">
                <thead><tr>
                <th>ProductID</th>
                <th>ProductName</th>
               <th>Description</th>
                 <th>Image</th>
                
                  <th>Stock</th>
                   <th>Price</th>
                   <th>Action</th>
                   
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
                    <td><a href="deleteP/${product.productID}">Delete</a>
                   <a href="updatep/${product.productID}">Update</a></td>
                    </c:forEach>   
                </tbody>          
            </table>
</body>
</html>


      
             
