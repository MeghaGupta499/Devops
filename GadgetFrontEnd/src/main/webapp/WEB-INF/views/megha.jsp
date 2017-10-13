<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<%@ page isELIgnored="false" %>
 
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
      <ul class="nav nav-tabs  nav-justified" >
          <li class="active"><a data-toggle="tab" href="#sectionA">Category</a></li>
          <li><a data-toggle="tab" href="#sectionB">Supplier</a></li>
          <li><a data-toggle="tab" href="#sectionc">Product</a></li>
      </ul>
      <div class="tab-content">
          <div id="sectionA" class="tab-pane fade in active">
          <div class="innter-form">
            <fieldset>
 <form:form method="post" action="/GadgetFrontEnd/CategorySave" modelAttribute="cmd">    
<table>
<div class="row">
<div class="form-group">
<label class="col-md-4 control-label" >CATEGORY NAME</label>
<div class="col-md-4">
    <form:input path="cname" /> </div>

</div>

<div class="form-group">
<label class="col-md-4 control-label" for=""></label>
<div class="col-md-4">
<button class="btn btn-primary" >Submit</button>
</div>
</div>
</div>
</table>
</form:form>
</fieldset>
</div>
</div>



<!-- SectionB starts here -->
          <div id="sectionB" >
          <div class="innter-form">
            <fieldset>
 <form:form method="post" action="/GadgetFrontEnd/SupplierSave" modelAttribute="command">    
<table>
<div class="row">
<div class="form-group">
<label class="col-md-4 control-label" >Supplier Name</label>
<div class="col-md-4">
    <form:input path="sname" /> </div>

</div>

<div class="form-group">
<label class="col-md-4 control-label" for=""></label>
<div class="col-md-4">
<button class="btn btn-primary" >Submit</button>
</div>
</div>
</div>
</table>
</form:form>
</fieldset>
</div>
</div>

<!-- 3rd starts here -->
<div id="sectionc" class="tab-pane fade">
  <div class="innter-form">
        <fieldset>
           <!-- Text input-->
           
       <form:form method="post" action="/GadgetFrontEnd/ProductSave" modelAttribute="product" enctype="multipart/form-data">    
          
         <table> 
         <div class="row">
              <div class="form-group">
              <label class="col-md-4 control-label" > Product Name:</label>
            
             <form:input path="ProductName" /> 
              </div> 
                <div class="form-group">
              <label class="col-md-4 control-label" > Description:</label>
          
             <form:input path="Description" /> 
              </div>     
            <div class="form-group">
              <label class="col-md-4 control-label" > Stock:</label>
             
             <form:input path="Stock" />
              </div>     
             <div class="form-group">
              <label class="col-md-4 control-label" >Price:</label>
              <form:input path="Price" />
              </div> 
               <div class="form-group">
           <label class="col-md-4 control-label" for="file">Images & Videos</label>
           <form:input type="file" id="file" path="image" class="form-control" />
           </div>  
      
       <div class="form-group">
        <label class="col-md-4 control-label"></label>
        <div class="col-md-4">
        <button class="btn btn-primary" >Submit</button>
        </div>
        </div> 
        </div> 
        </table>    
       </form:form>    

                </fieldset>
                
      </div>
</div>
</div>

<!-- tab-content ends here -->




      
   </div><!-- form body ends here -->
 </div><!--colmn ends here -->
  </div><!-- row ends here-->
</div><!-- container ends -->

</body>
</html>