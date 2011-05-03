<cfoutput>
#linkTo(text="<< Back to Articles List", action="index")#
	
<h2>#article.title#</h2>
<p>#article.body#</p>

<h3>Tags</h3>
<cfif article.hasTaggings() EQ "YES">
	<cfloop index = "i" from = "1" to = "#article.taggingcount()#">
	#article.tags().name[i]#<br>
	</cfloop>
<cfelse>
	None
</cfif>

#includePartial(article.comments)#
#includePartial(partial="/articles/comment_form")#
</cfoutput>

<!---<h1>Showing article</h1>

<cfoutput>

					<p><span>Id</span> <br />
						#article.id#</p>
				
					<p><span>Title</span> <br />
						#article.title#</p>
				
					<p><span>Body</span> <br />
						#article.body#</p>
				
					<p><span>Createdat</span> <br />
						#article.createdat#</p>
				
					<p><span>Updatedat</span> <br />
						#article.updatedat#</p>
				
					<p><span>Deletedat</span> <br />
						#article.deletedat#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this article", action="edit", key=article.id)#
</cfoutput>
--->