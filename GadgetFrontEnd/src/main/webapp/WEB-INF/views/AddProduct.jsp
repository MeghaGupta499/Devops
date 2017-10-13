<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ page isELIgnored="false" %>
<head>
 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<br/>
<br/>
<br/>
<br/>
 <div class="container">
  <div class="row">
  <div class="col-md-6">
  <div class="form-body">
      <ul class="nav nav-pills  nav-justified"final-login>
          <li class="active"><a data-toggle="pill" href="#sectionA">Category</a></li>
          <li><a data-toggle="pill" href="#sectionB">Supplier</a></li>
          <li><a data-toggle="pill" href="#sectionC">Product</a></li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lists<span class="caret"></span></a>
             
              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath}/Admin/ProductList">Product List</a></li>
                <li><a href="${pageContext.request.contextPath}/Admin/CategoryList">Category List</a></li>
                <li><a href="${pageContext.request.contextPath}/Admin/SupplierList">Supplier List</a></li>
               </ul>
               </li>
      </ul>
      
        <div class="tab-content">
        
        <!-- section strts here -->
          <div id="sectionA" class="tab-pane fade in active">
          <div class="innter-form ">
           <form:form method="post" action="/GadgetFrontEnd/Admin/CategorySave" modelAttribute="cmd">  
           


<fieldset>
      <br/>
      <br/>
     
<!-- Select Basic -->

<div class="form-group">
<label class="col-md-4 control-label" for="category_name">Category Name</label>
  <input id="cname" name="cname" class="form-control" />
</div>

<!-- Button -->
<div class="form-group">
<label class="col-md-4 control-label" for="button"></label>
  <button id="" name="" class="btn btn-primary">Submit</button>
</div>
</fieldset>
</form:form>
</div>
</div>
      
      <!-- SectionB starts here -->
<div id="sectionB" class="tab-pane fade">
<div class="innter-form">
<form:form method="post" action="/GadgetFrontEnd/Admin/SupplierSave" modelAttribute="command">  
     <fieldset>
     <br/>
      <br/>

         <!-- Text input-->
         <div class="form-group">
           <label class="col-md-4 control-label" for="textinput">Supplier Name</label>
           <input id="sname" name="sname" type="text" class="form-control ">
         </div>
        
        
   <!-- Button -->
                     <div class="form-group">
                       <label class="col-md-4 control-label" for="singlebutton"></label>
                      
                         <button id="singlebutton" name="singlebutton" class="btn btn-primary">ADD</button>
                     
                     </div>
              </fieldset>
        </form:form>
    </div>
</div>
      

<div id="sectionC" class="tab-pane fade">
  <div class="innter-form">
   
      <form:form method="post" action="/GadgetFrontEnd/Admin/ProductSave" modelAttribute="product" enctype="multipart/form-data">    
          
      <fieldset>
      <br/>
      <br/>
     
           <!-- Text input-->
           <div class="form-group">
             <label class="col-md-4 control-label" for="textinput">Product Name</label>
             <input id="textinput" name="productName" type="text"  class="form-control" required>
           </div>
          
           <div class="form-group">
             <label class="col-md-4 control-label" for="textinput">Description</label>
             <input id="textinput" name="description" type="text" class="form-control" required>
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
             <label class="col-md-4 control-label" for="textinput">Stock</label>
             <input id="textinput" name="stock" type="text"  class="form-control" required>
           </div>
            <div class="form-group">
             <label class="col-md-4 control-label" for="textinput">Price</label>
             <input id="textinput" name="price" type="text" class="form-control" required>
             </div>
 <!-- File Button -->
         <div class="form-group">
           <label class="col-md-4 control-label" for="file">Images</label>
           <input id="image" name="image" class="input-file" type="file" required>
         </div>


     <!-- Button -->
                       <div class="form-group">
                         <label class="col-md-4 control-label" for="singlebutton"></label>
                         <div class="col-md-4">
                           <button id="button" name="button" class="btn btn-primary">ADD</button>
                         </div>
                       </div>
                </fieldset>
         </form:form>
      </div>
</div>




<!-- tab-content ends here -->
 </div>
     </div>   <!-- form body ends here -->
   </div> <!--colmn ends here -->
 </div><!-- row ends here-->
  </div><!-- container ends ehere-->
  <br/>
      <br/>
      <br/><br/>
      <br/>
      <br/><br/>
     

</body>
 <br/>
      <br/>
   <jsp:include page="footer.jsp"></jsp:include>
</html>