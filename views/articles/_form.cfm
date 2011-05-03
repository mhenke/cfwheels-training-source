<cfoutput>
 #linkTo(text="<< Back to Articles List", action="index")#
		
 #errorMessagesFor("article")#
 #startFormTag(action=myaction)#
  #textField(objectName='article', property='title', label='Title')#
  #textArea(objectName='article', property='body', label='Body')#
  	
  <cfif myaction EQ "update">
  #hiddenField(objectName='article', property='id')#
  </cfif>
  
	<cfloop query="tags">
	    #hasManyCheckBox(
	        label=tags.name,
	        objectName="article",
	        association="taggings",
	        keys="#tags.id#,#article.key()#"
	    )#
	</cfloop>

  <br>
  #submitTag(value=ucase(myaction))#
 #endFormTag()#
</cfoutput>