<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo("article")>
		<cfset validatesPresenceOf("authorname,body")>
	</cffunction>

</cfcomponent>