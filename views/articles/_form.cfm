<cfoutput>
 #errorMessagesFor("article")#
 #startFormTag(action="create")#
  #textField(objectName='article', property='title', label='Title')#
  #textArea(objectName='article', property='body', label='Body')#
  #submitTag(value="Save")#
 #endFormTag()#
</cfoutput>