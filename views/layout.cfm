<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
		<cfoutput>
		#styleSheetLinkTag("screen,ie,style")#
		#styleSheetLinkTag(source="print", media="print")#
		</cfoutput>
	</head>
	<body>
		<cfoutput>
			<div id="container">
			<div class="flash"><p><cfoutput>#flash("message")#</cfoutput></p></div>
			<div id="content">
			#includeContent()#
			</div>
			<cfif StructKeyExists(session, "user")>
				<div id="navbar">
				#linkTo(text="Logout", controller="main", action="logout")#
				</div>
			</cfif>
			</div>
		</cfoutput>
	</body>
</html>