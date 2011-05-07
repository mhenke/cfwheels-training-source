<cfcomponent extends="Controller" output="false">
	
	 <cffunction name="show">
		  <cfset tags = model("tag").findByKey(key=params.key,include="taggings") />
		  <cfset articles = tags.articles() />
	 </cffunction>

</cfcomponent>