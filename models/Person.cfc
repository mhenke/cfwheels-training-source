<cfcomponent extends="Model" output="false">

	<cffunction name="init">
	
		<!--- Validations --->
		<cfset validatesPresenceOf("firstName,lastName,email")>
		<cfset validatesFormatOf(property="email", type="email")>
		<cfset validatesLengthOf(property="firstName", maximum=30)>
		<cfset validatesLengthOf(property="lastName", maximum=50)>
		<cfset validatesConfirmationOf("password")>
	
	</cffunction>

</cfcomponent>