<cfoutput>
<h1>Articles Tagged with #tags.name#</h1>
<ul>
	<cfloop query="articles" >
		<li>#linkTo(text=articles.title, controller="articles", action="show", key=articles.articleid)#<br></li>
	</cfloop>
</ul>
</cfoutput>