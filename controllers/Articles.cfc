<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		<cfset articles = model("Article").findAll()>
	</cffunction>

	<cffunction name="new">
		<cfset article = model("Article").new() />
	</cffunction>

	<cffunction name="create">  
		 <cfset article = model("Article").new(params.article) />  
		 <cfset article.save() />  
		 <cfset redirectTo(action="index") />  
	</cffunction>

	<cffunction name="show">
		<cfset article = model("Article").findByKey(params.key) />
	</cffunction>

	<cffunction name="edit">  
 		<cfset article = model("Article").findByKey(params.key) />  
	</cffunction>

</cfcomponent>