
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<form:form action = "/map/register" method = "POST" modelAttribute="userObj">



Username:<form:input path="username"/><br>
<form:errors  path="username"  ></form:errors><br>
PassWord:<input type="password" name="pass1"/><br>
Re-Enter PassWord:<input type="password" name="pass2"/><br>
Email:<form:input path="email"/><br>
Phone:<form:input path="phonenumber"/><br>
City:<form:input path="city"/><br>

Image:<form:input type ="file" path="image"/><br>


<input type ="submit" value = "click">
</form:form>