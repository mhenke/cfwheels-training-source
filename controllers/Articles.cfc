<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset provides("html,json,pdf,doc")>
		<cfset filters(through="checkLogin", only="new,create,edit,update,delete")>
		<!---<cfset filters(through="checkLogin", except="index,login,show")>--->
	</cffunction>

	<cffunction name="index">
		<cfset articles = model("Article").findAll()>
		<cfset renderWith(articles)>
	</cffunction>
	
	<cffunction name="show">
		<cfset article = model("Article").findByKey(key=params.key, include="comments,taggings")/>
		<cfset tags = article.tags(order="name")/>
		<cfset comment = article.newComment()/>
	</cffunction>
	
	<cffunction name="new">
		<cfset var newTagging = arrayNew(1)/>
		<cfset tag = model("tag").new()/>
		<cfset tags = model("Tag").findAll(order="name")/>
		<cfset newTagging[1] = model("tagging").new()/>
		<cfset article = model("article").new(taggings=newTagging)/>
	</cffunction>
	
	<cffunction name="edit">
		<cfset article = model("Article").findByKey(key=params.key, include="taggings")/>
		<cfset tags = model("Tag").findAll(order="name")/>
		<cfset tag = model("tag").new()/>
	</cffunction>
	
	<cffunction name="create">
		<cfset article = model("article").create(params.article)/>
		
		<cfset newTag()/>
		
		<cfset flashInsert(message="Article '#article.title#' was created.")/>
		<cfset redirectTo(action="index")>
	</cffunction>
	
	<cffunction name="update">
		<cfset article = model("Article").findByKey(params.article.id)/>
		<cfif article.update(params.article)>
			<cfset flashInsert(message="Article '#article.title#' was updated.")/>
			<cfset newTag()/>
		<cfelse>
			<cfset flashInsert(message="Article '#article.title#' was not updated.")/>
		</cfif>
		<cfset redirectTo(action="index")/>
	</cffunction>
	
	<cffunction name="delete">
		<cfset article = model("Article").findByKey(params.key)/>
		<cfset article.delete()/>
		<cfset flashInsert(message="Article '#article.title#' was deleted.")/>
		<cfset redirectTo(action="index")/>
	</cffunction>
	
	<cffunction name="newTag">
		<cfif len(params.tag.name) GT 0>
			<cfset Tag = model("Tag").findOneByName(params.tag.name)/>
	
			<cfif not isObject(Tag)>
				<cfset Tag = model("Tag").create(name=params.tag.name)/>
			</cfif>
			
			<cfset Tagging = model("Tagging").create(tagid=tag.id,articleid=article.id) />
		</cfif>
	</cffunction>
</cfcomponent>