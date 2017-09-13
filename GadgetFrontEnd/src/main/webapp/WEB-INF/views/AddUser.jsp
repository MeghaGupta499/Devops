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

  <h1>SignUp</h1> 
   
       
       <form:form method="post" action="/GadgetFrontEnd/add" modelAttribute="cmd">    
          
         <table> 
       <tr>    
          <td>Name :</td>    
          <td><form:input path="uname" /></td>  
         </tr>         
         <tr>    
          <td>Email :</td>    
          <td><form:input path="uemail" /></td>  
         </tr>   
          <tr>    
          <td>Password :</td>    
          <td><form:input path="upassword" /></td>  
         </tr>  
          <tr>    
          <td> Phone no.:</td>    
          <td><form:input path="ucontact" /></td>  
         </tr>  
           
         <tr>    
           
          <td><input type="submit" value="signup" /></td>    
         </tr>    
        </table>    
       </form:form>    

</body>
</html>