<%@ page import="java.net.URLDecoder" %>
<html>

<head>

</head>


<body>
<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
	// the default ... if there aro no cookies
	String favLang = "Java";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	// find our favorite language cookies
	if(theCookies != null ){
		for(Cookie tempCookie : theCookies){
			if("myApp.favoriteLanguage".equals(tempCookie.getName())){
				favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
				break;
			}
		}
	}
%>

<!-- now show a personalized page ... use the "favLan" variable -->
<h4>New Books fro <%=favLang %> </h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%=favLang %> </h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%=favLang %> </h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>

</html>