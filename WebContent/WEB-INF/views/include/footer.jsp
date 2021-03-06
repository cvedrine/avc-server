<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="${sessionScope.language}"/>
<fmt:setBundle basename="org.ulpmm.univrav.language.messages"/>

<p>
  	<fmt:message key="Footer"/> <br>
  	<c:url var="thick_legal" scope="page" value="./thick_legal">
		<c:param name="width" value="240"/>
		<c:param name="height" value="115"/>
	</c:url>
  	<a href="mailto:support@unistra.fr"><fmt:message key="Assistance"/></a> - <a href="mailto:cvedrine@unistra.fr"><fmt:message key="Contact"/></a> - <a href="<c:out value="${thick_legal}" />" title="<fmt:message key="Informations l&eacute;gales"/>" class="thickbox"><fmt:message key="Informations l&eacute;gales"/></a>
</p>