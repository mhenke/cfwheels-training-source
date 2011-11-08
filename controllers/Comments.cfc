<cfcomponent extends="Controller" output="false">

 <cffunction name="index">  
 </cffunction>

	<cffunction name="create">  
		 <cfset newcomment = model("Comment").new(params.newcomment) />  
		 <cfif newcomment.save()>
		 	<cfset flashInsert(message="Comment by '#newcomment.authorname#' was created.") />
		 	<cfset redirectTo(controller="Articles",action="show",key="#newcomment.articleid#") />
		 <cfelse>
		 	<cfset article = model("Article").findByKey(key=params.newcomment.articleid, include="comments") />
		 	<cfset renderPage(controller="Articles",action="show",key="#params.newcomment.articleid#") />
		 </cfif>
	</cffunction>

 <cffunction name="delete">  
 </cffunction>

</cfcomponent>