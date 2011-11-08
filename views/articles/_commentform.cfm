<h3>Post a Comment</h3>
<cfoutput>  
 #errorMessagesFor("newcomment")# 
 #startFormTag(controller="comments",action="create")#  
 #hiddenField(objectName="newcomment", property="articleid")#  
 #textField(objectName="newcomment", property="authorname")#  
 #textField(objectName="newcomment", property="authoremail")#  
 #textField(objectName="newcomment", property="authorurl")#  
 #textArea(objectName="newcomment", property="body")#  
 #submitTag(value="Create Comment")#  
 #endFormTag()#  
</cfoutput>