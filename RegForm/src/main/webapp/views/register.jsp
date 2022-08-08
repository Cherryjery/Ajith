<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Welcome to Register...</h1>
<form:form action="/map/clientreg" method="POST" modelAttribute="Client"><br>
	UserName:<form:input type="text" path="username" required="required"/><br>
	Email:<form:input path="emailid" required = "required"/><br>
	PassWord:<input type="password" name="password" required="required"/><br>
	Re-Enter PassWord:<input type="password" name="password2" required="required"/><br>
	
	Phone:<form:input path="phonenumber" required="required"/><br>

	City:<form:input type="text" path="city" required="required"/><br>
	image:<form:input type="file" path="image" required="required"/><br>
	<input type="submit" value="click...">
</form:form>