<h1>Create a New Article</h1>
<cfset myaction = "create" />
<cfoutput>#includePartial("form")#</cfoutput>

<!---
<h1>Create a New Article</h1>

<cfoutput>

#errorMessagesFor("article")#

 #startFormTag(action="create")#


 #textField(objectName='article', property='title', label='Title')#

 #textField(objectName='article', property='body', label='Body')#


 #submitTag()#

 #endFormTag()#


 #linkTo(text="Return to the listing", action="index")#
</cfoutput>
--->