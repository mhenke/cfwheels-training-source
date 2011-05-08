<h1>Listing articles</h1>

<ul>
<cfoutput query="articles">
<li>
<b>#linkTo(text=title, action="show", key=id)#</b><br/>
<cfif StructKeyExists(session, "user")>
	<i>Actions:
	#linkTo(text='edit', action='edit', key=id)#,
	#linkTo(text='remove', action='delete', key=id, confirm="Remove the article '#title#'?")# 
	</i>
</cfif>
</li>
</cfoutput>
</ul>