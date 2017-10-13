<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<jsp:include page="header.jsp"></jsp:include>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="4">
                <thead><tr>
                <th>CategoryID</th>
                <th>CategoryName</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="Category" items="${list}">
                    <tr>
                   <td>${Category.cid}</td>
                    <td>${Category.cname}</td>
                    </tr>
                    
                    </c:forEach>   
                </tbody>          
            </table>

</body>
 <br/>
      <br/>
   <jsp:include page="footer.jsp"></jsp:include>
</html>