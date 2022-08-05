<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

  <c:set var="url" value="0" scope="request"/>  
  <c:if test="${url<1}">  
     <c:redirect url="https://equinox.qatarinsurance.com/MenuAction.do?FROM_LOGIN=Y&activeMenu="/>  
  </c:if>  
  <c:if test="${url>1}">  
     <c:redirect url="https://github.com/"/>  
  </c:if>  
