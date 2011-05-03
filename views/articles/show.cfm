<cfoutput>
#linkTo(text="<< Back to Articles List", action="index")#
	
<h2>#article.title#</h2>
<p>#article.body#</p>

<h3>Tags</h3>
<cfif article.hasTaggings() EQ "YES">
	<cfloop query="tags">
	#tags.name#<br>
	</cfloop>
<cfelse>
	None
</cfif>

#includePartial(article.comments)#
#includePartial(partial="/articles/comment_form")#
</cfoutput>