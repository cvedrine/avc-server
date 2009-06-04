<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="${sessionScope.language}"/>
<fmt:setBundle basename="org.ulpmm.univrav.language.messages"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title><fmt:message key="Univ-R AV Audiovid&eacute;cours"/></title>

	<link rel="stylesheet" type="text/css" href="../files/thickbox/thickbox.css" media="screen">
	<link rel="stylesheet" type="text/css" href="../files/styles/${sessionScope.style}/css/styles.css">
	<link rel="stylesheet" type="text/css" href="../files/styles/${sessionScope.style}/css/admin.css">
	
	<!--[if IE]>
   		<link rel="stylesheet" type="text/css" href="../files/styles/${sessionScope.style}/css/styles_ie.css" media="screen" />
	<![endif]-->
	<!--[if lte IE 6]>
		<link rel="stylesheet" type="text/css" href="../files/styles/${sessionScope.style}/css/styles_ie6.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="../files/styles/${sessionScope.style}/css/menus_off_ie6.css" media="screen" />
		<script defer type="text/javascript" src="../files/js/pngfix.js"></script>
	<![endif]-->

	<script type="text/javascript" src="../files/thickbox/jquery.js"></script>
	<script type="text/javascript" src="../files/thickbox/thickbox.js"></script>

  </head>
  
  <body>
    <div class="main">
	    <div class="contents">
	    	<div class="banner">
	    		<c:import url="../include/banner.jsp" />
	    	</div>
	    		    	
	    	<div class="editform">
		    	<form method="POST" action="<c:url value="${posturl}" />">
		    	
		    		<input type="hidden" name="ipaddress" value="${course.ipaddress}">
			    	<input type="hidden" name="duration" value="${course.duration}">
			    	<input type="hidden" name="type" value="${course.type}">
			    	<input type="hidden" name="consultations" value="${course.consultations}">
			    	<input type="hidden" name="timing" value="${course.timing}">
			    	<input type="hidden" name="mediaFolder" value="${course.mediaFolder}">
			    	<input type="hidden" name="highquality" value="${course.highquality}">
			    	<input type="hidden" name="userid" value="${course.userid}">
			    		
			    		
			    	<table>
			    		<tr class="odd">
				    		<td>N°</td>
				    		<td><input type="hidden" name="courseid" value="${course.courseid}">${course.courseid}</td>
			    		</tr>
			    		<tr class="even">
				    		<td>Date</td>
				    		<td><input type="hidden" name="date" value="${course.date.time}">${course.date}</td>
			    		</tr>
			    		<tr class="odd">
				    		<td><fmt:message key="title"/></td>
				    		<td><input type="text" name="title" value="${course.title}" class="field"></td>
			    		</tr>
			    		<tr class="even">
				    		<td><fmt:message key="description"/></td>
				    		<td><input type="text" name="description" value="${course.description}" class="field"></td>
			    		</tr>
			    		<tr class="odd">
				    		<td><fmt:message key="ue"/></td>
				    		<td><input type="text" name="formation" value="${course.formation}" class="field"></td>
			    		</tr>
			    		<tr class="even">
				    		<td><fmt:message key="name"/></td>
				    		<td><input type="text" name="name" value="${course.name}" class="field"></td>
			    		</tr>
			    		<tr class="odd">
				    		<td><fmt:message key="firstname"/></td>
				    		<td><input type="text" name="firstname" value="${course.firstname}" class="field"></td>
			    		</tr>			    		
			    		<tr class="even">
				    		<td><fmt:message key="Code d'acc&egrave;s"/></td>
				    		<td><input type="text" name="genre" value="${course.genre}" class="field"></td>
			    		</tr>
			    		<tr class="odd">
				    		<td>Visible</td>
				    		<td><input type="checkbox" name="visible" ${course.visible == true ? 'checked' : ''} ></td>
			    		</tr>			    		
			    		<tr class="even">
				    		<td>Tags</td>
				    		<td><input type="text" name="tags" value="${tags}" class="field"></td>
			    		</tr>
			    				    	
			    	</table>
			    	<br>
			    	<input type="submit" value="<fmt:message key="Valider"/> ">
			    	<br><br>
			    	<a href="<c:url value="${gobackurl}" />"><fmt:message key="Retour"/></a>
		    	</form>
	    	</div>
	    </div>
	    	
	    <div class="footer">
	    	<c:import url="../include/footer.jsp" />
	    </div>
    </div>
  </body>
</html>
