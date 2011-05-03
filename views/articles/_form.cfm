<cfoutput>
 #linkTo(text="<< Back to Articles List", action="index")#
		
 #errorMessagesFor("article")#
 #startFormTag(action=myaction)#
  #textField(objectName='article', property='title', label='Title')#
  #textArea(objectName='article', property='body', label='Body')#
  	
  <cfif myaction EQ "update">
  #hiddenField(objectName='article', property='id')#
  </cfif>

	<cfloop index = "i" from = "1" to = "#article.taggingcount()#">
	    #hasManyCheckBox(
	        label=article.tags().name[i],
	        objectName="article",
	        association="taggings",
	        keys="#article.tags().id[i]#,#article.key()#"
	    )#
	</cfloop>

  <br>
  #submitTag(value=ucase(myaction))#
 #endFormTag()#
</cfoutput>