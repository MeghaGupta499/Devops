<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<div class="container">
  <div class="row">
  <div class="col-md-6 col-md-offset-2">
<form:form method="post" action="/GadgetFrontEnd/Admin/editUpdate" modelAttribute="cmd" enctype="multipart/form-data">    
          
         
         <form:hidden  path="productID"/>
        
         
     <div class="form-group">
        <label class="col-md-4 control-label" for="textinput">Product Name</label>   
         <form:input path="ProductName"  class="form-control" />
         </div> 
                
         
           <div class="form-group">
        <label class="col-md-4 control-label" for="textinput">Description</label>     
          <form:input path="Description"   class="form-control"/>
          </div>
           <div class="form-group">
        <label class="col-md-4 control-label" for="textinput">Stock</label>    
          <form:input path="Stock"  class="form-control" /> 
          </div>
         
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
           <input id="image" name="image" class="input-file" type="file"   class="form-control">
         </div>
           
            <div class="form-group">
        <label class="col-md-4 control-label" for="textinput">Price</label>   
         <form:input path="Price"   class="form-control"/>
       </div>
      <div class="form-group">
           <label class="col-md-4 control-label" for="singlebutton"></label>
             <div class="col-md-4">
              <button id="button" name="button" class="btn btn-primary">Update</button>
                </div>
                 </div>
       </form:form>    

</div></div>
</div>
</body>
 <br/>
 <br/>
  <jsp:include page="footer.jsp"></jsp:include>
</html>