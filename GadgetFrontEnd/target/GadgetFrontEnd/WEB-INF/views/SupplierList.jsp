<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="4">
                <thead><tr>
                <th>SupplierID</th>
                <th>SupplierName</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="Supplier" items="${list}">
                    <tr>
                   <td>${Supplier.sid}</td>
                    <td>${Supplier.sname}</td>
                    </tr>
                    
                    </c:forEach>   
                </tbody>          
            </table>


</body>
</html>