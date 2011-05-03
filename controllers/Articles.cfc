<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		<cfset articles = model("Article").findAll()>
	</cffunction>
	
	<cffunction name="show">
	 <cfset article = model("Article").findByKey(key=params.key,include="comments,taggings") />
	 <cfset tags = article.tags(order="name") />
	 <cfset comment = article.newComment() />
	</cffunction>
	
	<cffunction name="new">
		<cfset var newTagging = arrayNew(1) />
		<cfset tags = model("tags").findAll() />
		
		<cfset newTagging[1]=model("tagging").new() />
		<cfset article=model("article").new(taggings=newTagging) />
	</cffunction>
	
	<cffunction name="edit">
    	<cfset article = model("Article").findByKey(key=params.key,include="taggings") />
		<cfset tags =  model("Tag").findAll(order="name") />
	</cffunction>
	
	 <cffunction name="create">
	  <cfset var i = "" />
	  <cfset article=model("article").create(params.article) />
	  
	  <cfset flashInsert(message="Article '#article.title#' was created.") />
	  <cfset redirectTo(action="index")>
	 </cffunction>
	 
  <cffunction name="update">
   <cfset article = model("Article").findByKey(params.article.id) />
   <cfset article.update(params.article) />
   <cfset redirectTo(action="index") />
  </cffunction>
	 
<cffunction name="delete">
 <cfset article = model("Article").findByKey(params.key) />
 <cfset article.delete() />
 <cfset flashInsert(message="Article '#article.title#' was deleted.") />
 <cfset redirectTo(action="index") />
</cffunction>
	
</cfcomponent>
