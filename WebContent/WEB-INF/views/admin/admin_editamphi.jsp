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
	    	<div class="links">
		    	<c:import url="./links.jsp" />
	    	</div>
	    	
	    	<div class="editform">
		    	<form method="POST" action="<c:url value="./admin_validateamphi" />">
			    	<table>
			    		<tr class="odd">
				    		<td>AmphiId</td>
				    		<td><input type="hidden" name="amphiid" value="${amphi.amphiid}">${amphi.amphiid}</td>
			    		</tr>
			    		<tr class="even">
				    		<td>Building</td>
				    		<td><input type="text" name="buildingid" value="${buildingId}"></td>
			    		</tr>
			    		<tr class="odd">
				    		<td>Name</td>
				    		<td><input type="text" name="name" value="${amphi.name}" class="field"></td>
			    		</tr>
			    		<tr class="even">
				    		<td>IpAddress</td>
				    		<td><input type="text" name="ipaddress" value="${amphi.ipAddress}" class="field"></td>
			    		</tr>
			    		<tr class="odd">
				    		<td>Status</td>
				    		<td><input type="hidden" name="status" value="${amphi.status}">${amphi.status}</td>
			    		</tr>
			    		<tr class="even">
				    		<td>Google Map</td>
				    		<td><input type="text" name="gmapurl" value="${amphi.gmapurl}" class="field"></td>
			    		</tr>
			    		<tr class="odd">
				    		<td>Version</td>
				    		<td><input type="hidden" name="version" value="${amphi.version}">${amphi.version}</td>
			    		</tr>
			    		<tr class="even">
				    		<td><fmt:message key="restrictionuds"/> ${univAcronym}</td>
				    		<td><input type="checkbox" name="restrictionuds" ${amphi.restrictionuds == true ? 'checked' : ''} ><font class="littleFont"><fmt:message key="uploadmessage6"/> ${univAcronym}</font></td>
			    		</tr>
			    	</table>
			    	<br>
			    	<input type="hidden" name="oldAmphiip" value="${amphi.ipAddress}">
			    	<input type="hidden" name="action" value="${action}">
			    	<input type="submit" value="Validate">
			    	<br><br>
			    	<a href="<c:url value="./admin_amphis?buildingId=${buildingId}" />">Go back</a>
		    	</form>
		    </div>
	    </div>
	    	
	    <div class="footer">
	    	<c:import url="../include/footer.jsp" />
	    </div>
    </div>
  </body>
</html>
