<cfcomponent extends="Controller" output="false">
	
	<!--- articles/index --->
	<cffunction name="index">
		<cfset articles = model("Article").findAll()>
	</cffunction>
	
	<cffunction name="show">
	 <cfset article = model("Article").findByKey(params.key)>
	</cffunction>
	
	<!--- articles/show/key
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset article = model("Article").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(article)>
	        <cfset flashInsert(error="Article #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
	
	</cffunction>
	 --->
	
	<!--- articles/new --->
	<cffunction name="new">
		<cfset article = model("Article").new()>
	</cffunction>
	
	<cffunction name="edit">
    	<cfset article = model("Article").findByKey(params.key)>
	</cffunction>
	
	<!--- articles/edit/key 
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset article = model("Article").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(article)>
	        <cfset flashInsert(error="Article #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	--->
	
	 <cffunction name="create">
	  <cfset article = model("Article").new(params.article)>
	  <cfset article.save() />
	  
	  <cfset flashInsert(message="Article '#article.title#' was created.") />
	  <cfset redirectTo(action="index")>
	 </cffunction>
	
	<!--- articles/create
	<cffunction name="create">
		<cfset article = model("Article").new(params.article)>
		
		<!--- Verify that the article creates successfully --->
		<cfif article.save()>
			<cfset flashInsert(success="The article was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the article.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	--->
	 
  <cffunction name="update">
   <cfset article = model("Article").findByKey(params.key) />
   <cfset article.update(params.article) />
   <cfset redirectTo(action="index") />
  </cffunction>
  
	<!--- articles/update
	<cffunction name="update">
		<cfset article = model("Article").findByKey(params.key)>
		
		<!--- Verify that the article updates successfully --->
		<cfif article.update(params.article)>
			<cfset flashInsert(success="The article was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the article.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	 --->
	 
<cffunction name="delete">
 <cfset article = model("Article").findByKey(params.key) />
 <cfset article.delete() />
 <cfset flashInsert(message="Article '#article.title#' was deleted.") />
 <cfset redirectTo(action="index") />
</cffunction>
	
	<!--- articles/delete/key
	<cffunction name="delete">
		<cfset article = model("Article").findByKey(params.key)>
		
		<!--- Verify that the article deletes successfully --->
		<cfif article.delete()>
			<cfset flashInsert(success="The article was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the article.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	 --->
</cfcomponent>
