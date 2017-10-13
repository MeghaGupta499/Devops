<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

  <h1>Add Product</h1> 
   
       
       <form:form method="post" action="/GadgetFrontEnd/ProductSave" modelAttribute="cmd">    
          
         <table> 
       <tr>    
          <td>Product Name:</td>    
          <td><form:input path="ProductName" /></td>  
         </tr>         
         <tr>    
          <td>Category Name :</td>    
          <td><form:input path="CategoryName" /></td>  
         </tr>   
          <tr>    
          <td>Description :</td>    
          <td><form:input path="Description" /></td>  
         </tr>  
          <tr>    
          <td>Stock:</td>    
          <td><form:input path="Stock" /></td>  
         </tr>  
            <tr>    
          <td>Price:</td>    
          <td><form:input path="Price" /></td>  
         </tr>  
           
         <tr>    
           
          <td><input type="submit" value="signup" /></td>    
         </tr>    
        </table>    
       </form:form>    

</body>
</html>