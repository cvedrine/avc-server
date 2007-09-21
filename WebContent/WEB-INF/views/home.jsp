<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dt" uri="http://jakarta.apache.org/taglibs/datetime-1.0" %>
<jsp:directive.page import="org.ulpmm.language.Messages"/>
<jsp:directive.page import="java.util.Locale"/>

<%
	Locale l = request.getLocale();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title><%=Messages._("Univ-R AV Audiovid&eacute;cours", l)%></title>

	<link rel="stylesheet" type="text/css" href="../files/styles/style1/css/styles.css">
	<link rel="stylesheet" type="text/css" href="../files/styles/style1/css/home.css">
	
	<!--[if IE]>
   		<link rel="stylesheet" type="text/css" href="../files/styles/style1/css/styles_ie.css" media="screen" />
	<![endif]-->
	<!--[if lte IE 6]>
		<link rel="stylesheet" type="text/css" href="../files/styles/style1/css/home_ie6.css" media="screen" />
		<script defer type="text/javascript" src="../files/js/pngfix.js"></script>
	<![endif]-->

	<script type="text/javascript" src="../files/js/details.js"></script>

  </head>
  
  <body>
    <div class="main">
	    <div class="banner">
	    	<a class="bannerPageZone" href="."></a>
	    	<a class="ulpmmZone" href="http://ulpmultimedia.u-strasbg.fr/" target="external"></a>
	    	<a class="ulpZone" href="http://www-ulp.u-strasbg.fr/" target="external"></a>
	    	<div class="live">
	    		<a class="liveZone" href="./live/index.jsp"><%=Messages._("Direct", l)%></a>
	    	</div>
	    	<div class="recorded">
	    		<a class="recordedZone" href="./recorded/index.jsp"><%=Messages._("Enregistr&eacute;", l)%></a>
	    	</div>
	    </div>
	    <div class="contents">
	    	<div class="search">
	    		<div class="searchImage">
	    			<span class="searchText"><%=Messages._("Recherche", l)%></span>
	    		</div>
	    		<form method="post" action=".">
		    		<div class="criteria">
		    			<fieldset>
			    			<legend><%=Messages._("Type de cours", l)%></legend>
			    			<input type="checkbox" name="type" checked><%=Messages._("Audio", l)%>
			    			&nbsp;&nbsp;&nbsp;
			    			<input type="checkbox" name="type"><%=Messages._("Video", l)%>
		    			</fieldset>
		    			<!-- <br>
		    			<input type="checkbox" class="cb" name="tous">Tous les cours-->
		    			<br><br>
		    			<img src="../files/img/arrowsearch.png" alt="arrowsearch"><input type="submit" name="valider" class="submit" value=<%= "\"" + Messages._("Lancez la recherche", l) + "\""%>>
		    		</div>
		    		<div class="criteria">
		    			<label><%=Messages._("Enseignant", l)%></label>
		    			<select class="field"></select>
		    			<br>
		    			<label><%=Messages._("Formation", l)%></label>
		    			<select class="field"></select>
		    			<br>
		    			<label><%=Messages._("Code ETAP", l)%></label>
		    			<input type="text" class="field">
		    			<br>
		    		</div>
		    		<hr>
	    		</form>
	    	</div>
	    	
			<div class="links">
		    	<div class="downloadImage">
		    		<span class="linkText"><a href="."><%=Messages._("T&eacute;l&eacute;chargements", l)%></a></span>
		    		<span class="linkDescription"><%=Messages._("Acc&eacute;dez aux T&eacute;l&eacute;chargements du site", l)%></span>
		    	</div>
		    	<div class="rssImage">
		    		<span class="linkText"><a href="."><%=Messages._("Fil d'abonnement", l)%></a></span>
		    		<span class="linkDescription"><%=Messages._("Abonnez-vous au fil d'abonnement", l)%></span>
		    	</div>
		    	<div class="helpImage">
		    		<span class="linkText"><a href="./help/index.jsp"><%=Messages._("Aide", l)%></a></span>
		    		<span class="linkDescription"><%=Messages._("Utilisation d'Univ-R AV", l)%></span>
		    	</div>
	    	</div>
	    	
	    	<div class="course">
	    		<table cellspacing="0">
	    			<tr>
	    				<th colspan="3" id="courses"><%=Messages._("Les cours", l)%></th>
	    				<th colspan="2"><%=Messages._("Visualisez", l)%></th>
	    				<th colspan="4"><%=Messages._("T&eacute;l&eacute;chargez", l)%></th>
	    			</tr>
	    			<tr class="row2">
	    				<td colspan="3">&nbsp;</td>
	    				<td class="tdalign">
		    				<img src="../files/img/smile.png" alt="smile"><br>
		    				smil
	    				</td>
	    				<td class="tdalign">
		    				<img src="../files/img/real_v2.png" alt="real"><br>
		    				realplayer
	    				</td>
	    				<td class="tdalign">
		    				<img src="../files/img/ogg_v2.png" alt="ogg"><br>
		    				ogg
	    				</td>
	    				<td class="tdalign">
		    				<img src="../files/img/mp3_v2.png" alt="mp3"><br>
		    				mp3
	    				</td>
	    				<td class="tdalign">
		    				<img src="../files/img/winzip3.png" alt="zip"><br>
		    				zip
	    				</td>
	    				<td class="tdalign">
		    				<img src="../files/img/acrobat.png" alt="pdf"><br>
		    				pdf
	    				</td>
	    			</tr>
	    			
	    			<!-- Displays the courses of the list in the table -->
	    			<c:set var="class" value="row1" />
	    			<c:forEach var="course" varStatus="status" items="${courses}">
		    			<tr class="${class}">
		    				<!-- Defines the image file which represents the course type -->
		    				<c:choose>
		    				<c:when test="${course.type == 'audio' && course.genre == null}">
								<c:set var="typeImg" value="sound" />
							</c:when>
							<c:when test="${course.type == 'audio'}">
								<c:set var="typeImg" value="sound_locked" />
							</c:when>
							<c:when test="${course.type == 'video' && course.genre == null}">
								<c:set var="typeImg" value="video" />
							</c:when>
							<c:when test="${course.type == 'video'}">
								<c:set var="typeImg" value="video_locked" />
							</c:when>
		    			</c:choose> 
		    				<td><img src="../files/img/${typeImg}.png" alt="video"></td>
		    				<td>	    				
			    				<b><%=Messages._("Titre :", l)%> </b> <c:out value="${course.title}" /> <br>
			    				<b><%=Messages._("Enseignant :", l)%> </b> <c:out value="${course.name}" /> <br>
			    				<div id="row${status.count}col1link">
			    					<a href="javascript:switchDetails('row${status.count}')"><%=Messages._("[+] plus de détails", l)%></a>
			    				</div>	    				
			    				<div id="row${status.count}col1details" class="hidden">
				    				<b><%=Messages._("Formation :", l)%> </b> <c:out value="${course.formation}" /> <br>
				    				<b><%=Messages._("Sujet :", l)%> </b> <c:out value="${course.description}" /> <br>
				    				<a href="javascript:switchDetails('row${status.count}')"><%=Messages._("[-] moins de détails", l)%></a>
			    				</div>	    				
		    				</td>
		    				<td>
			    				<b><%=Messages._("Date :", l)%> </b> <dt:format pattern="dd/MM/yyyy">${course.date.time}</dt:format> <br>
			    				<b><%=Messages._("Consultations :", l)%> </b> <c:out value="${course.consultations}" /> <br>
			    				<div id="row${status.count}col2link">
			    					<a href="javascript:switchDetails('row${status.count}')"><%=Messages._("[+] plus de détails", l)%></a>
			    				</div>
			    				<div id="row${status.count}col2details" class="hidden">
				    				<b><%=Messages._("Dur&eacute;e :", l)%> </b> <c:out value="${course.durationString}" /> <br>
				    				<b><%=Messages._("Type :", l)%> </b> <c:out value="${course.type}" /> <br>
				    				<a href="javascript:switchDetails('row${status.count}')"><%=Messages._("[-] moins de détails", l)%></a>
			    				</div>
		    				</td>
		    				<td class="tdalign">
		    					<a href="."><img src="../files/img/chip.png" alt="chip"></a>
		    				</td>
		    				<td class="tdalign">
		    					<a href="."><img src="../files/img/chip.png" alt="chip"></a>
		    				</td>
		    				<td class="tdalign">
		    					<a href="."><img src="../files/img/chip.png" alt="chip"></a>
		    				</td>
		    				<td class="tdalign">
		    					<a href="."><img src="../files/img/chip.png" alt="chip"></a>
		    				</td>
		    				<td class="tdalign">
		    					<a href="."><img src="../files/img/chip.png" alt="chip"></a>
		    				</td>
		    				<td class="tdalign">
		    					<a href="."><img src="../files/img/chip.png" alt="chip"></a>
		    				</td>
		    			</tr>
		    			<!-- Defines the class of the next row of the table -->
		    			<c:choose>
		    				<c:when test="${status.count % 2 == 0}">
								<c:set var="class" value="row1" />
							</c:when>
							<c:otherwise>
								<c:set var="class" value="row2" />
							</c:otherwise>
		    			</c:choose> 
	    			</c:forEach>
	    			
	    		</table>
	    		
	    	</div>
    	</div>
	    	
	    <div class="footer">
	    	<p>
		    	<%=Messages._("R&eacute;alisation du site par ULP Multim&eacute;dia - 2007", l)%> <br>
		    	<a href="."><%=Messages._("Contact", l)%></a> - <a href="."><%=Messages._("Informations l&eacute;gales", l)%></a> - <a href="."><%=Messages._("Liens", l)%></a>
	    	</p>
	    </div>
    </div>
  </body>
</html>