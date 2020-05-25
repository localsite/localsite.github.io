<%@ LANGUAGE = "VBSCRIPT"%><%
' This page is backed up to local/default-bkup.aspx
Response.Buffer = false
DIM serverName, pageURL, frameURL, framestyle, blankfill, framewidth, frameheight
DIM title,keywords,description
framestyle = "full"
blankfill = "/core/elements/bkgd/black.htm"
framewidth = "760"
frameheight = "535"

' Might not need > 0 with Instr

serverName = request("servername") + ""
if (serverName.length > 0) then
    servername = request("servername").ToLower()
else
    serverName = LCase(Request.ServerVariables("SERVER_NAME"))
end if
if InStr(serverName,"points.") > 0 then
	'pageURL = "api/"
	'Response.Redirect(pageURL)
	Response.Redirect("https://dreamstudio.com/live/domains/")
elseif InStr(serverName,"catchsail") > 0 then
	Response.Redirect("audioscape/")
elseif InStr(serverName,"recyclingisland") > 0 then
	Response.Redirect("https://eon.tech/projects/recycling-island/")
elseif InStr(serverName,"planet.live") > 0 then ' SpaceX Tesla
	'server.transfer("video/space/index.html")
        server.transfer("video/wind/index.html")
elseif InStr(serverName,"model.earth") > 0 then
	server.transfer("storms/earth/index.html")
elseif InStr(serverName,"acquire.media") > 0 then
	frameURL = "https://dreamstudio.com/live/domains/"
elseif InStr(serverName,"dailyspoon") > 0 then
	frameURL = "https://dreamstudio.com/live/domains/"
elseif frameURL = "" then
	Response.Redirect("https://dreamstudio.com/live/domains/")
end if

%><html><head>
<title><%=title%></title>
<meta name="keywords" content="<%=keywords%>">
<meta name="description" content="<%=description%>">
</head>

<% if framestyle = "full" then %>
<frameset rows="100%,*" framespacing=0 border=0 frameborder=no>
		<frame name="frame" src="<%=frameURL%>" marginwidth="5" marginheight="5" scrolling="auto"> 
		<frame marginwidth="0" marginheight="0" scrolling="no">
</frameset>
<% elseif framestyle = "center" then %>
<frameset rows="*,<%=frameheight%>,*" framespacing=0 border=0 frameborder=no>
<frame name="blank_top" noresize scrolling="no" marginwidth="0" marginheight="0" frameborder="no" src="<%=blankfill%>">
<frameset cols="*,<%=framewidth%>,*" framespacing=0 border=0 frameborder=no>
	<frame name="blank_left" noresize scrolling="no" marginwidth="0" marginheight="0" frameborder="no" src="<%=blankfill%>">
	<frame name="main" src="<%=frameURL%>" framespacing=0 border=0 frameborder=0 marginwidth=20 marginheight=20 scrolling="auto">
	<frame name="blank_right" noresize scrolling="no" marginwidth="0" marginheight="0" frameborder="no" src="<%=blankfill%>">
</frameset>
<frame name="blank_bottom" noresize scrolling="no" marginwidth="0" marginheight="0" frameborder="no" src="<%=blankfill%>">
<% end if %>

<noframes>
Users of non-frame browers may <A HREF="<%=pageURL%>">start here</A>. 
<BR><BR>
</noframes>
</html>