<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo("article")>
		<cfset belongsTo("tag")>
	</cffunction>

</cfcomponent>
