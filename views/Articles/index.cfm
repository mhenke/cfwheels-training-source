<h1>Listing articles</h1>

<cftable query="articles" colHeaders="true" HTMLTable="true">
 <cfcol header="Title" text="#title#" />
 <cfcol header="Body" text="#body#" />
</cftable>

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