<h1>
Create a New Article
</h1>
<cfoutput>  
 #errorMessagesFor ("article")#  
 #startFormTag (action="create")#  
 #textField (objectName="article", property="title", label="Title")#  
 #textArea (objectName="article", property="body", label="Body")#  
 #submitTag ()#  
 #endFormTag ()#  
</cfoutput>