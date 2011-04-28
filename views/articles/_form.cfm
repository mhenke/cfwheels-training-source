<cfoutput>
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
	keys="#tags.id#,#article.key()#",
	id=tags.name)#
  </cfloop>
 
<!---
	<cfloop from="1" to="#ArrayLen(tags)#" index="i">
	<div>
	<h3>#tags[i].name#:</h3>
	<div>
	#checkBox(objectName="article", 
		association="taggings", 
		position=tags[i].id, 
		property="name")#
	</div>
	</div>
	</cfloop>
--->
  <br>
  #submitTag(value="Save")#
 #endFormTag()#
</cfoutput>