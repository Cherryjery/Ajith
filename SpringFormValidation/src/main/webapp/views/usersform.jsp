<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<form:form action = "/form2/regform" method = "POST" modelAttribute = "userObj">

Username :<form:input path="uname"/>
<form:errors path="uname"></form:errors>

Password : <form:input path="upass"/>
Email : <form:input path="email"/>
Phone : <form:input path="phone"/>
<input type ="submit" value = "click">
</form:form>