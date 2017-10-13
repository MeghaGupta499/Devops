<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" action="/GadgetFrontEnd/editUpdate" modelAttribute="cmd" enctype="multipart/form-data">    
          
         <table> 
         <tr>
         <td><form:hidden  path="productID"/></td>
         </tr>
         
        
       <tr>    
          <td>Product Name:</td>    
          <td><form:input path="ProductName" /></td>  
         </tr>         
         
          <tr>    
          <td>Description :</td>    
          <td><form:input path="Description" /></td>  
         </tr>  
          <tr>    
          <td>Stock:</td>    
          <td><form:input path="Stock" /></td>  
         </tr>  
         <div class="form-group">
             <label class="col-md-4 control-label" for="textinput">Category</label>
            <select name="cid" id="cid">
            <option label="--Select--" /> 
           <c:forEach var="cat" items="${categorylist}">
            <option value="${cat.cid}">${cat.cname}</option>
            </c:forEach>
            </select>
           </div>            
           <div class="form-group">
             <label class="col-md-4 control-label" for="textinput">Supplier</label>
            <select name="sid" id="sid">
            <option label="--Select--" /> 
           <c:forEach var="sup" items="${slist}">
            <option value="${sup.sid}">${sup.sname}</option>
            </c:forEach>
            </select>
           </div>
              <div class="form-group">
           <label class="col-md-4 control-label" for="file">Images</label>
           <input id="image" name="image" class="input-file" type="file" required>
         </div>
           
            <tr>    
          <td>Price:</td>    
          <td><form:input path="Price" /></td>  
         </tr>  
           
         <tr>    
           
          <td><input type="submit" value="update" /></td>    
         </tr>    
        </table>    
       </form:form>    


</body>
</html>