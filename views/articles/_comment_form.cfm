<h3>Post a Comment</h3>
<cfoutput>
 #errorMessagesFor("comment")#
 #startFormTag(controller="comments",action="create")#
  #hiddenField(objectName='comment', property='articleid')#
  #textField(objectName='comment', property='authorname')#
  #textField(objectName='comment', property='authoremail')#
  #textField(objectName='comment', property='authorurl')#
  #textArea(objectName='comment', property='body')#
  #submitTag()#
 #endFormTag()#
</cfoutput>