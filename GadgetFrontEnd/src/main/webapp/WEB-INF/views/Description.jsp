<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<br>
<br>

<div class="container">
<div class="card">

<div class="row">
<div class="col-md-6">
  
  <img src="${pageContext.request.contextPath}/resources/image/${product.productID}.png" height="200px" width="200px">
  </div>
 
 
  <div class="col-md-6">
  <h2>${product.productName}</h2>
 <h4>Price: $ ${product.price}</h4>
 <form  action="${pageContext.request.contextPath}/addToCart/${product.productID}"  method="post" modelAttribute="cmd">
 
 
 <%--  <label class="col-md-4 control-label" for="textinput">Quantity</label>
            <select name=quantity id="quantity">
            <option label="--Select--" /> 
           <c:forEach var="pro" items="${product}">
            <option value="${pro.productID}">${pro.stock}</option>
            </c:forEach>
            
            <c:forEach var="pro" begin="1" end="${product.stock}" >
            Item <option value="${pro}" > ${pro}</option></c:forEach>
            </select> --%>
 
   <h4>Quantity</h4> 
   
   
                     <!--    <div class="col-lg-2">
                                        <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="text" id="quantity" name="quantity" style="width:50px" class="form-control input-number" value="10" min="10" max="12">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>
                        </div> -->
  
  	       <div class="section" style="padding-bottom:20px;">
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1"  name="quantity"/>
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>  
<br>
<br>


<input class="btn btn-success" type="submit" value="ADD to Cart">
</form>

  </div>
 </div>
</div>
</div>
<script>
$(document).ready(function(){
  /*   //-- Click on detail
    $("ul.menu-items > li").on("click",function(){
        $("ul.menu-items > li").removeClass("active");
        $(this).addClass("active");
    })

    $(".attr,.attr2").on("click",function(){
        var clase = $(this).attr("class");

        $("." + clase).removeClass("active");
        $(this).addClass("active");
    })
 */
    //-- Click on QUANTITY
    $(".btn-minus").on("click",function(){
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)){
            if (parseInt(now) -1 > 0){ now--;}
            $(".section > div > input").val(now);
        }else{
            $(".section > div > input").val("1");
        }
    })            
    $(".btn-plus").on("click",function(){
        var now = $(".section > div > input").val();
        var limit=${product.stock}
        if ($.isNumeric(now) && now<limit){
            $(".section > div > input").val(parseInt(now)+1);
        }else{
        	alert("out of Stock")
            $(".section > div > input").val("1");
        }
    })                        
}) 
</script>
</body>
 <br/>
 <br/>
   <jsp:include page="footer.jsp"></jsp:include>
</html>