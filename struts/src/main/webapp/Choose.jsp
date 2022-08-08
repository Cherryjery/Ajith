<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix = "a"%>
>  
<a:set var="income" scope="session" value="${4000*4}"/>  
<p>Your income is : <a:out value="${income}"/></p>  
<a:choose>  
    <a:when test="${income <= 1000}">  
       Income is not good.  
    </a:when>  
    <a:when test="${income > 10000}">  
    
        Income is very good.  
    </a:when>  
    <a:otherwise>  
       Income is undetermined...  
    </a:otherwise>  
</a:choose>  
