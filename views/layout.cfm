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
			<div id="navbar">
				<ul>
					<cfif "show,edit,new,login" contains params.action >
						<li>#linkTo(text="<< Back to Articles List", controller="articles", action="index")#</li>
					</cfif>
					<cfif StructKeyExists(session, "user")>
						<cfif params.controller EQ "articles" and params.action EQ "show">
						<li>#linkTo(text='Edit Current Article', action='edit', key=params.key)#</li>
						</cfif>
						<li>#linkTo(text="Create a New Article", action="new")#</li>
						<li>#linkTo(text="Logout", controller="main", action="logout")#</li>
					<cfelseif params.action NEQ "login">
						<li>#linkTo(text="Login", controller="main", action="login")#</li>
					</cfif>
				</ul>
			</div>
			<div class="flash"><p><cfoutput>#flash("message")#</cfoutput></p></div>
			<div id="content">
			#includeContent()#
			</div>
			</div>
		</cfoutput>
	</body>
</html>