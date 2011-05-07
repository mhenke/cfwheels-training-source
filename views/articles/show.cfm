<cfoutput>
#linkTo(text="<< Back to Articles List", action="index")#
	
<h2>#article.title#</h2>
<p>#article.body#</p>

<h3>Tags</h3>
<cfif article.hasTaggings() EQ "YES">
	<cfloop query="tags">
	#linkTo(text=tags.name, controller="tags", action="show", key=tags.id)#<br>
	</cfloop>
<cfelse>
	None
</cfif>

#includePartial(article.comments)#
#includePartial(partial="/articles/comment_form")#
</cfoutput>