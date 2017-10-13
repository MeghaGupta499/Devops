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
 <form:form method="post" action="<c:url value='/j_spring_security_check'/>" >    
          
         <table> 
       <tr>    
          <td>Name :</td>    
          <td><input type="text" name="username" id="username"/></td>  
         </tr>         
         <tr>    
          <td>Password</td>    
          <td><input type="text" name="password" id="password"/></td>  
         </tr>   
          <tr>    
        
          <td><input type="submit" value="click me"/></td>  
         </tr> 
         </table>
         <a href="${pageContext.request.contextPath}/Registerpage">Register</a>
         
         </form:form>
         

</body>
</html>