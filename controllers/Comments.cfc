<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="checkLogin", except="create")>
	</cffunction>
	
	 <cffunction name="create">
      <cfset comment = model("comment").new(params.comment) />	
	  <cfif comment.save()>
	  	<cfset flashInsert(message="Comment was created.") />
		<cfset redirectTo(controller="articles",action="show",key=comment.articleid)>
	  <cfelse>
	  	<cfset flashInsert(message="Comment was not created.") />
		<cfset tags = model("tag").findAll() />
 		<cfset article = model("article").findByKey(key=comment.articleid,include="comments,taggings") />
		<cfset renderPage(controller="articles",action="show",key=comment.articleid)>
	  </cfif>
	 </cffunction>

</cfcomponent>
