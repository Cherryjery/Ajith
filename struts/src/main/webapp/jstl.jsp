 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:out value="${\"hello world..hello..hello world...\"}"></c:out>
	<c:set var="num" scope="session" value="10000"/>
		
	<%
		request.setAttribute("myname", "anound technologies...");
	
		String str="hello world";
		
	%>
	
	<h1>
		<c:out value="The value is...${myname}"/>
	</h1>
	
	<h1>
		<c:out value="The value is...${num}"/>
	</h1> 
	<p>Before Remove Value is: <c:out value="${num}"/></p>  
<c:remove var="num"/>  
<p>After Remove Value is: <c:out value="${num}"/></p>  