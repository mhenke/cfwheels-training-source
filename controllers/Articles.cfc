<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		<cfset articles = model("Article").findAll()>
	</cffunction>

</cfcomponent>