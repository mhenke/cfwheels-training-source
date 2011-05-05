<cfoutput>
 #linkTo(text="<< Back to Articles List", action="index")#
		
 #errorMessagesFor("article")#
 #startFormTag(action=myaction)#
  #textField(objectName='article', property='title', label='Title')#
  #textArea(objectName='article', property='body', label='Body')#
  	
  <cfif myaction EQ "update">
  #hiddenField(objectName='article', property='id')#
  </cfif>
  
	<h3>Tag this post under:</h3>
	<cfloop query="tags">
	    #hasManyCheckBox(
	        label=tags.name,
	        objectName="article",
	        association="taggings",
	        keys="#tags.id#,#article.key()#"
	    )#
	</cfloop>
	#textField(objectName='tag', property='name', label='New Tag')#
	<!--- #textField(name='newTag', label='New Tag')# --->
  <br>
  #submitTag(value=ucase(myaction))#
 #endFormTag()#
</cfoutput>