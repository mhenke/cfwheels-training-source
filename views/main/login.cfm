<cfoutput>

<h1>Login</h1>
<cfif isdefined("error")>
<cfdump var="#error#">
</cfif>
#flash("error")#
#errorMessagesFor("user")#
	
#startFormTag(controller="main", action="signin")#

	#textField(label="Email", objectName="user", property="email")#
	#passwordField(label="Password", objectName="user", property="password")#
	
	<div>
		#submitTag(value="Sign In")#
	</div>

#endFormTag()#

</cfoutput>