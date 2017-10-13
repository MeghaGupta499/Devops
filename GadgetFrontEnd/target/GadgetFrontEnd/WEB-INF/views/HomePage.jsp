<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
  <div class="container">
  <h2>Best Deals</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="resources/image/flip1.jpg" alt="offer1" style="width:100%;">
        </div>

      <div class="item">
        <img src="resources/image/flip2.jpg" alt="offer2" style="width:100%;">
        </div>
        <div class="item">
        <img src="resources/image/microsoft.jpg" alt="offer3" style="width:100%;">
          </div>
        </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div>
  <br/>
  <br/>

</div>
<div class="container">
  <h3 class="style2"> <i><b>Todays Best Offer</b></i></h3>
<div class="row">
  <div class="col-lg-4"  >
    <img src="resources/image/grinder.jpeg" class="img-responsive img-thumbnail"width="304" height="236" >

  </div>
  <div class="col-lg-4" >
    <img src="resources/image/headphones.jpeg"  class="img-responsive img-thumbnail" width="304" height="236">
  </div>
  <div class="col-lg-4" >
    <img src="resources/image/category4.png" class="img-responsive img-thumbnail" width="304" height="236">

  </div>
  </div>
</div>

<div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>