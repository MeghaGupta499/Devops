<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br/>
<br/>
<br/>
<br/>
<div class="container">
    <div class="row">
    
    
    
        <c:forEach var="product" items="${ProductList}">
        <div class="col-md-3">
       <a href="${pageContext.request.contextPath}/des/${product.productID}"> <img src="${pageContext.request.contextPath}/resources/image/${product.productID}.png" height="200px" width="200px"></a>
     </div> </c:forEach>  
      
      
      <!--   <div class="col-md-4">
            
      <a  class="img-thumbnail">
      <p>Sony Bravia 72.4cm (29) HD Ready LED TV </p>
      <img src="resources/image/sony-klv.jpeg" class="img-thumbnail img-responsive" />
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#betaModal"><i class="fa fa-search"></i> Quick View</button>
     </a>
      </div>             
             <div class="col-md-4">
              2nd strts from here 

      <a data-toggle="modal" href="modelimage1" data-target="#modal2" class="img-thumbnail">
      <p>Sony 108cm (43) Ultra HD (4K) Smart LED TV  </p>
      <img src="resources/image/sony-kd.jpeg" class="img-thumbnail img-responsive" />
      </a>
      </div>
            
            <div class="col-md-4">
            3rd strts from here 

        <a data-toggle="modal" href="modelimage2" data-target="#modal3" class="img-thumbnail">
        <p>Sony Bravia 108cm (43) Full HD Smart LED TV</p>
        <img src="resources/image/sony-kdl.jpeg" class="img-thumbnail img-responsive" />
        </a>
        </div> -->
    </div>
</div>



 <div class="modal fade product_view" id="betaModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button class="close" data-dismiss="modal">&times;</button>
              <h4> Sony Bravia 72.4cm (29) HD Ready LED TV  (KLV-29P423D, 2 x HDMI, 1 x USB)</h4>
</div>
<!-- Description  starts here-->
      <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <div class="mag">
            <img  data-toggle="magnify" src="resources/image/sony-klv.jpeg" class="img-responsive"/>
          </div>
        </div>
          <div class="col-lg-6">
            <H1><i class="fa fa-rupee">20000</i></h1><BR>
              <p><h4>Product Description</h4>
With the Sony BRAVIA LED TV at home, you can experience better TV-viewing as it offers a
better picture clarity with a glitch-free audio.</p>
<br>
<p><h6>Clear Resolution Enhancer</h6>Every scene will look extravagant on this TV’s 72.4 cm (29) screen,thanks to its Clear Resolution Enhancer
    which upscales low-resolution images and reduces noise. The 1366x768 resolution along with 178-degree viewing angle gives you an immersive entertainment experience.</p>

            <p><h6>Multi-format USB</h6>Have some interesting movies, old and new, stored on your pen drive? Then plug it in and enjoy your favorite digital content. Play music, video clips and view
              photo collections all through your TV with super multi-format USB play</p>
            <p> <h2> Specifications</h2>
              <h4>General</h4>
              Sales Package: 1 TV Unit, 1 Warranty Card, 1 AC Adapter, 1 AC Power Cord, 1 Remote Control: RMT-TX111P, 2 R03 Batteries, 1 Table Top Stand, Instruction Manual
              Model Name: KLV-29P423D
              Display Size: 72.4 cm (29)
              Screen Type: LED
              HD Technology & Resolution: HD Ready, 1366 x 768
              Smart TV: No</p>
             </div>




          </div>
      </div>
      <div class="modal-footer">

      </div>



</div>
</div>
</div>
<!-- 1stendshere -->

</body>
</html>