<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
	</head>
	<body>
		<cfoutput>
			<div class="flash"><p><cfoutput>#flash("message")#</cfoutput></p></div>
			<div id="body">
			#includeContent()#
			</div>
			<cfif StructKeyExists(session, "user")>
				<div id="logout">
				#linkTo(text="Logout", controller="main", action="logout")#
				</div>
			</cfif>
		</cfoutput>
	</body>
</html>