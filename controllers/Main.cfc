<cfcomponent extends="Controller" output="false">
	
	<cffunction name="login">
		<cfset user = model("person").new()>
	</cffunction>
	
	<cffunction name="logout">
		<cfset StructDelete(session, "user")>
		<cfset redirectTo(controller="main", action="login")>
	</cffunction>
	
	<cffunction name="signin">
		<cfset user = model("person").findOne(where="email='#params.user.email#' AND password='#hash(params.user.password)#'")>
	
		<cfif IsObject(user)>
			<cfset session.user.id = user.id>
			<cfset redirectTo(controller="articles", action="index")>
		<cfelse>
			<cfset user = model("person").new(email=params.user.email)>
			<cfset flashInsert(error="The email and password that you entered is not valid.")>
			<cfset renderPage(action="login")>
		</cfif>
	</cffunction>
	
</cfcomponent>