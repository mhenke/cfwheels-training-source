<cfoutput>  
 #errorMessagesFor("article")#  
 #startFormTag(action=myaction)#  
 #textField(objectName="article", property="title", label="Title")#  
 #textArea(objectName="article", property="body", label="Body")# 

 <cfif not article.isNew()>  
 #hiddenFieldTag(name="key", value=article.id)#
</cfif>

 #submitTag(value="Save")#  
 #endFormTag()#  
</cfoutput>