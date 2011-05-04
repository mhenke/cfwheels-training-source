<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">

	<cffunction name="init">
		<cfset filters(through="checkLogin", except="index,login,show,create")>
	</cffunction>

    <cffunction name="checkLogin">
		<cfif StructKeyExists(session, "user")>
			<cfset loggedInUser = model("person").findByKey(session.user.id)>
		<cfelse>
			<cfset redirectTo(controller="main", action="login")>
		</cfif>
	</cffunction>

</cfcomponent>