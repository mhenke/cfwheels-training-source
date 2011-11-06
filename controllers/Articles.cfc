<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		<cfset articles = model("Article").findAll()>
	</cffunction>

	<cffunction name="new">
		<cfset article = model("Article").new() />
		<cfset myaction="create" />
	</cffunction>

	<cffunction name="create">  
		 <cfset article = model("Article").new(params.article) />  
		 <cfset article.save() />
		 <cfset flashInsert(message="Article "#article.title#" was created.") />
		 <cfset redirectTo(action="index") /> 
	</cffunction>

	<cffunction name="show">
		<cfset article = model("Article").findByKey(params.key) />
	</cffunction>

	<cffunction name="edit">  
 		<cfset article = model("Article").findByKey(params.key) /> 
 		<cfset myaction="update" />
	</cffunction>

	<cffunction name="update">  
		<cfset article = model("Article").findByKey(params.key) />  
		<cfset article.update(params.article) /> 
		<cfset flashInsert(message="Article "#article.title#" was deleted.") />
	 	<cfset redirectTo(action="show",key=params.key) />  
	</cffunction>

	<cffunction name="delete">  
		<cfset article = model("Article").findByKey(params.key) />  
	 	<cfset article.delete() /> 
	 	<cfset flashInsert(message="Article "#article.title#" was deleted.") />
	 	<cfset redirectTo(action="index") />  
	</cffunction>

</cfcomponent>