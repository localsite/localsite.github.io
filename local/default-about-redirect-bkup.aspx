<%@ LANGUAGE = "VBSCRIPT"%><%
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
if InStr(serverName,"adams") > 0 then
	'adamsrealtors.com, adamscre.com, wtadams.com
	pageURL = "/go/adams/index.html"
	response.redirect("/go/adams/") ' Since paths in page are not setup for root.
elseif InStr(serverName,"areamarket") > 0 then
    frameURL = "http://local.yahoo.com"
    ' /dreamstudio/photos/2004/loft/
	' pageURL = "/heyns/building/"
elseif InStr(serverName,"componentcore") > 0 then
	' pageURL = "/net/go/core.aspx?s=0.0.1.1"
	pageURL = "/park-hosts/index.html"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"debcars") > 0 then
	pageURL = "/about/models/default.aspx?s=0.0.0.12"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"meddin") > 0 then
	'pageURL = "/go/meddin/default.aspx?s=0.0.0.7465"
	pageURL = "/core/item/info.aspx?s=58333.0.0.7465"
	server.transfer(pageURL,true)
elseif InStr(serverName,"rethinkatlanta") > 0 then
	pageURL = "/local/index.html"
	server.transfer(pageURL,true)
elseif InStr(serverName,"seaside") > 0 then
	'pageURL = "/go/seaside/default.aspx?s=0.0.0.7801"
    response.redirect("http://seasideinstitute.org")
	pageURL = "/core/item/page.aspx?s=8629.0.0.7801"
	server.transfer(pageURL)
elseif InStr(serverName,"speakman") > 0 then
	pageURL = "/core/item/info.aspx?s=1966.0.0.1966"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"smartglenwood") > 0 then
	response.redirect("http://smartgrowthatlanta.org")
	'pageURL = "/local/glenwood/index.html"
	'Server.transfer(pageURL,true)
elseif InStr(serverName,"smartwidget") > 0 then
	response.redirect("/base/")
elseif InStr(serverName,"glenwood") > 0 then
	pageURL = "/glenwood/default.aspx?s=0.0.0.6078&mode=" & request("mode")
	if InStr(serverName,"localhost") > 0 then
		pageURL = "/glenwood/default.aspx?s=0.0.0.6078&db=system&mode=" & request("mode")
	end if
	Server.transfer(pageURL,true)
elseif InStr(serverName,"greenstreet") > 0 or InStr(serverName,"gsprop.com") > 0 then
	pageURL = "/go/greenstreet/default.aspx?s=0.0.0.450"
	Server.transfer(pageURL)
elseif InStr(serverName,"fitability") > 0 then
	pageURL = "/core/item/page.aspx?s=17618.0.44.24"
	Server.Transfer(pageURL)
elseif InStr(serverName,"sandatlanta") > 0 or InStr(serverName,"sand.neighborhood") > 0 then
	'pageURL = "/net/content/default.aspx?s=0.0.111.37651"
	pageURL = "/neighborhood/default.aspx"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"sclc") > 0 then
	'pageURL = "/core/item/page.aspx?s=82205"
    pageURL = "/net/content/default.aspx"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"tossthetaser") > 0 then
	pageURL = "/core/item/page.aspx?s=82205"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"grahamarthur") > 0 then
	'pageURL = "/core/item/page.aspx?s=53225.0.0.7153"
	pageURL = "/go/graham/default.aspx?s=0.0.0.7153"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"handson.neighborhood.org") > 0 then
	'pageURL = "/core/item/topic.aspx?tid=20220&s=0.0.4.4"
	pageURL = "/go/handson/default.aspx?s=0.0.0.3"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"imaginewesley") > 0 then
	Response.Redirect("http://wesleyacademy.org")
elseif InStr(serverName,"wesleyacademy") > 0 then
	Response.Redirect("/news")

	' Wasn't working
	pageURL = "/core/news.aspx?s=78047.0.0.967"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"admin.laughingloon.com") > 0 then
	pageURL = "/core/admin/deploy.aspx?s=0.0.0.89982"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"laughingloon.com") > 0 then
	pageURL = "/core/item/info.aspx?s=89982.0.0.89982"
	Server.transfer(pageURL,true)
'elseif InStr(serverName,"green-law") > 0 and InStr(serverName,"review.green-law") = 0 then
'	Response.Redirect("http://greenlaw.org")
elseif InStr(serverName,"green-law") > 0 or InStr(serverName,"greenlaw") > 0 then
	pageURL = "/go/greenlaw/default.aspx?s=0.0.101.19069&mode=" & request("mode")
	if InStr(serverName,"localhost") > 0 then
		pageURL = "/go/greenlaw/default.aspx?db=system&s=0.0.101.19069&mode=" & request("mode")
	end if
	Server.transfer(pageURL,true)
elseif InStr(serverName,"walker") > 0 then
	pageURL = "/walker/default.aspx"
	Server.Transfer(pageURL,true)
elseif InStr(serverName,"securitypatrol.org") > 0 then
	pageURL = "/net/member/register.aspx?s=8795.0.35.20"
	Response.Redirect("http://grantpark.org/net/member/register.aspx?s=8795.0.35.20")
	Server.transfer(pageURL,true)
elseif InStr(serverName,"nubuilders") > 0 then
	pageURL = "http://www.newurbanbuilders.com/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"208.52.167.18") > 0 or InStr(serverName,"kingcommercialflorida") > 0 or InStr(serverName,"kingindustrialflorida") > 0 or InStr(serverName,"kingflorida") > 0 then
	pageURL = "/core/item/page.aspx?s=27044.0.105.27035"
	Server.transfer(pageURL,true) 
elseif InStr(serverName,"kingindustrial") > 0 or InStr(serverName,"kingrealty") > 0 then
	pageURL = "/net/go/kingrealty.aspx?s=11772.0.89.11771"
	pageURL = "/net/go/kingrealtymap.aspx?s=0.0.89.11771" ' temp
	pageURL = "/go/king/default.aspx?s=0.0.89.11771"
	Server.transfer(pageURL,true)
	'pageURL = "/content/king/default.htm"
	'Response.Redirect(pageURL)
elseif InStr(serverName,"tomlinson-graham") > 0 then
	pageURL = "/tg2/default.aspx"
	Response.Redirect(pageURL)
elseif InStr(serverName,"holidaynews") > 0 then
	pageURL = "/net/content/item.aspx?s=24806.0.102.15046"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"gpcp") > 0 then
	'pageURL = "/core/item/page.aspx?s=23637.0.104.23634"
	'pageURL = "/core/item/page.aspx?s=87489.0.104.23634" ' Auction
	pageURL = "/go/gpcp/default.aspx?s=0.0.104.23634"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"grantparktour") > 0 then
	Response.Redirect("http://grantpark.org/tour")
	'pageURL = "/core/item/page.aspx?s=83457.83259.35.20"
	'Server.Transfer(pageURL,true)
elseif InStr(serverName,"scouts.grantpark") > 0 then
	pageURL = "/core/item/info.aspx?s=84674.0.0.10495"
	Server.Transfer(pageURL,true)
elseif InStr(serverName,"grantparkparent") > 0 or InStr(serverName,"parents.grantpark.org") > 0  then
	pageURL = "/net/content/news.aspx"
	Server.Transfer(pageURL,true)
elseif InStr(serverName,"grantpark.dreamtv.net") > 0 then
	pageURL = "http://grantpark.org"
	Response.Redirect(pageURL)
elseif InStr(serverName,"neighborhood.org") > 0 then
	pageURL = "/local/grantpark/index.html"
	Server.Transfer(pageURL,true)
elseif InStr(serverName,"gpconservancy") > 0 or InStr(serverName,"grantpark.parktools.org") > 0 then
	' This is pulling siteid 1, wrapid 1 for some reason
	'pageURL = "/net/content/community.aspx?s=0.0.0.113"
	
	pageURL = "/net/content/community.aspx?s=0.0.0.113&siteid=113"
	Server.transfer(pageURL, true)
elseif InStr(serverName,"healthbrochures") > 0 then
	pageURL = "/core/item/info.aspx?s=30.0.60.30"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"familytrees") > 0 then
	pageURL = "/familytrees/default.aspx"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"atm.net") > 0 or InStr(serverName,"neighborhood.org") > 0 or InStr(serverName,"parkdynamics.com") > 0 or InStr(serverName,"patroldynamics.com") > 0 then
	'title = "ATM.net - Account Transfers / Online Payments / Online Billing"
	'pageURL = "atm/"
	'keywords = "ATM, bank transfer, online banking, PayPal, Automated Teller Machine"
	'description = "Transfer money between bank accounts.  Send payments by email.  Bill individuals or groups."
	pageURL = "/core/item/info.aspx?s=41125.0.17.8"
	Response.Redirect(pageURL)
elseif InStr(serverName,"midtowntourofhomes.com") > 0 then
	'pageURL = "/content/midtownatlanta/tour/2005/"
	pageURL = "/core/item/page.aspx?s=26834.26834.53.35"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"midtownatlanta.org") > 0 then
	'pageURL = "/net/content/news.aspx"
    'pageURL = "/go/midtown/default.aspx"
    pageURL = "/neighborhood/default.aspx?siteid=35"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"grantpark") > 0 or InStr(serverName,"gpna") > 0 then
	pageURL = "/core/news.aspx"
	Server.Transfer(pageURL,true)
elseif InStr(serverName,"district1atlanta") > 0 then
    ' ?s=21508.0.103.21210
	pageURL = "/go/district1atlanta/default.aspx"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"465oakland") > 0 then
	pageURL = "/core/item/page.aspx?s=84912.0.0.9247"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"meta-leader") > 0 or InStr(serverName,"metaleader") > 0 then
    if InStr(serverName,"meta-leadershipsummit.org") then
	    pageURL = "/meta/default.aspx?s=0.0.0.78"
	    Server.transfer(pageURL,true)
    else
        pageURL = "http://meta-leadershipsummit.org"
	    Response.Redirect(pageURL)
    end if
elseif InStr(serverName,"oakland") > 0 then
	pageURL = "/core/item/page.aspx?s=3394.0.0.20"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"atlanta.neighborhood.org") > 0 then
	'pageURL = "/neighborhood/default.aspx?siteid=35&mode=" & request("mode") & "&admin=" & request("admin")
	'pageURL = "/net/member/register.aspx?siteid=35&mode=" & request("mode") & "&admin=" & request("admin")
	'pageURL = "/core/item/info.aspx?s=105798.0.0.35"
	pageURL = "/core/news/default.aspx?siteid=35"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"southeastatlanta.org") > 0 then
	pageURL = "/core/news.aspx?siteid=40&mode=" & request("mode") & "&admin=" & request("admin")
	Server.transfer(pageURL,true)
elseif InStr(serverName,"secra.") > 0 then
    ' Page needs to be converted to MS.
	'pageURL = "/go/secra/default.aspx?s=0.0.24.55"
	pageURL = "/core/item/page.aspx?s=23852.0.24.55"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"woodruff.nonprofit.info") > 0 then
	pageURL = "/news/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"enteraction.") > 0 then
	'pageURL = "home.asp?siteid=2655"
	pageURL = "/net/content/default.aspx?s=0.0.13.2655"
	Response.Redirect(pageURL)
elseif InStr(serverName,"contractrecruiters") > 0 or InStr(serverName,"recruitopoly") > 0 or InStr(serverName,"freeagentrecruiters") > 0 then
	'pageURL = "cr/"
	pageURL = "http://talentconnections.net/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"heyns") > 0 then
	pageURL = "/core/item/info.aspx?s=29926.0.102.15046"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"serveathon") > 0 or InStr(serverName,"serve-a-thon") or InStr(serverName,"dayofservice") or InStr(serverName,"day-of-service") then
	pageURL = "serveathon/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"hands-on-network") > 0 or InStr(serverName,"citycares") > 0 or InStr(serverName,"cares.org") > 0 then
	pageURL = "http://HandsOnNetwork.org/national/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"ny.cares") > 0 or InStr(serverName,"nycares") > 0 then
	pageURL = "http://209.73.239.165/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"jobs") > 0 then
	pageURL = "system/jobs/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"swiftfox.") > 0 then
	pageURL = "page.asp?itemid=2426&siteid=23"
	Response.Redirect(pageURL)
elseif InStr(LCase(Request.ServerVariables("SERVER_NAME")),"seniorjobs") > 0 then
	pageURL = "seniorjobs/"
	Response.Redirect(pageURL)
	'title = "SeniorJobs.com - Welcome to our senior employment search site!"
	'keywords = "senior,senior,senior,jobs,jobs,jobs,retiree,employment,employment,employment,opportunities,search,staffing,work,work,work, volunteer,volunteer,volunteer,job,job,job,franchise,franchises,franchises,seach,search"
	'description = "SeniorJobs.com provides free job search tools, resume posting, volunteer positions small business opportunities and timely information for individuals over the age of 50."
elseif InStr(serverName,"points.") > 0 then
	pageURL = "points/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"wrede") > 0 then
	pageURL = "wrededesign/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"outdoorresource") > 0 or InStr(serverName,"teachwild") > 0 then
	pageURL = "http://outdoorresource.org/resources/default.aspx?s=0.0.0.7"
	Response.Redirect(pageURL)
elseif InStr(serverName,"managementsuite") > 0 then
	pageURL = "/core/about/"
	Response.Redirect(pageURL)
elseif InStr(serverName,"sidewalki") > 0 or InStr(serverName,"sidewalkwiki") > 0 then
	pageURL = "/core/item/page.aspx?s=19406.0.0.8&mode=e"
	Server.transfer(pageURL,true)
elseif InStr(serverName,"dailyspoon") > 0 then
	pageURL = "/local/news"
	Response.Redirect(pageURL)
	Server.transfer(pageURL,true)
elseif InStr(serverName,"208.52.167.17") > 0 then
	pageURL = "https://neighborhood.org"
	Response.Redirect(pageURL,true)
elseif InStr(serverName,"ncs.neighborhood.org") > 0 then
	pageURL = "/core/item/page.aspx?s=87859.0.0.19&mode=" & request("mode")
	Server.transfer(pageURL,true)
elseif InStr(serverName,"georgia.projectflow.info") > 0 then
	pageURL = "/facts/default.aspx?s=0.0.0.3013&mode=" & request("mode")
	Response.Redirect(pageURL,true)
elseif InStr(serverName,"neighborhood.org") > 0 then
	pageURL = "/core/item/info.aspx?s=87866.0.0.12&mode=" & request("mode")
	Server.transfer(pageURL,true)
elseif InStr(serverName,"localhost") > 0 then
    'pageURL = "/core/news.aspx?s=" & request("s") & "&db=" & request("db")
    pageURL = "/Admin/?s=" & request("s") & "&db=" & request("db")
    'Response.Redirect(pageURL)

	'Response.Redirect("https://www.cnn.com/")
	server.transfer("storms/earth/index.html")

	'if InStr(LCase(request("db")),"georgia") > 0 then
	'    pageURL = "/parks/virtual/rootredirect.aspx"
	'    Server.transfer(pageURL,true)
	'else
	'    'pageURL = "/net/admin/tools.aspx?s=" & request("s") & "&db=" & request("db")
	'    pageURL = "/core/news.aspx?s=" & request("s") & "&db=" & request("db")
	'    Response.Redirect(pageURL)
	'end if
elseif InStr(serverName,"dev.dream") > 0 or InStr(serverName,"studio.dream") > 0 or InStr(serverName,"dsweb.dream") > 0 then
	'pageURL = "/dev.aspx?s=0.0.0.8&db=" & request("db")
	'pageURL = "/dev.aspx?s=0.0.1.1&db=" & request("db")
	pageURL = "/net/admin/tools.aspx?s=0.0.27.3011"
	Response.Redirect(pageURL,true) ' Server.Transfer does not work on some local machines.
elseif InStr(serverName,"p.dreamstudio") > 0 then
	pageURL = "/system/admin/tools.asp?siteid=5"
	Response.Redirect(pageURL)
elseif InStr(serverName,"dreamstudio") > 0 or InStr(serverName,"dreammakerstudios") > 0 then
	' Was 94009
	pageURL = "/core/item/info.aspx?s=103982.0.0.8"
	pageURL = "/dreamstudio/index.html"
	server.transfer(pageURL,true)
elseif frameURL = "" then

	'Response.Redirect("http://dreamstudio.com/live/domains/")
	server.transfer("storms/earth/index.html")
	'pageURL = "/local/index.html"
	'server.transfer(pageURL)
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