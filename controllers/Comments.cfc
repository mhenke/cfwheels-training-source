<cfcomponent extends="Controller" output="false">
	
	 <cffunction name="create">
      <cfset comment = model("comment").new(params.comment) />	
	  <cfif comment.save()>
	  	<cfset flashInsert(message="Comment was created.") />
		<cfset redirectTo(back=true)>
	  <cfelse>
	  	<cfset flashInsert(message="Comment was not created.") />
		<cfset tags = model("tag").findAll() />
 		<cfset article = model("article").findByKey(key=comment.articleid,include="comments,taggings") />
		<cfset renderPage(controller="articles",action="show",key=comment.articleid)>
	  </cfif>
	 </cffunction>

</cfcomponent>
