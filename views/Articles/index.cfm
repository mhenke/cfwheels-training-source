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
<cfoutput>
<cfif StructKeyExists(session, "user")>
	<p>#linkTo(text="Create a New Article", action="new")#</p>
<cfelse>
	#linkTo(text="Login", controller="main", action="login")#
</cfif>
</cfoutput>
<!---<h1>Listing articles</h1>

<cftable query="articles" colHeaders="true" HTMLTable="true">
	
					<cfcol header="Id" text="#id#" />
				
					<cfcol header="Title" text="#title#" />
				
					<cfcol header="Body" text="#body#" />
				
					<cfcol header="Createdat" text="#createdat#" />
				
					<cfcol header="Updatedat" text="#updatedat#" />
				
					<cfcol header="Deletedat" text="#deletedat#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New article", action="new")#</p>
</cfoutput>
--->