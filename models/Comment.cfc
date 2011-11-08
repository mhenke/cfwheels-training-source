<cfcomponent extends="Model" output="false">

 <cffunction name="init">  
  	<cfset belongsTo("article") /> 
  	<cfset validatesPresenceOf(
            properties="authorname,body"
        )>
	<cfset validatesFormatOf(property="authorurl",type="url",allowBlank="true")>
	<cfset validatesFormatOf(property="authoremail",type="email",allowBlank="true")>
 </cffunction>

</cfcomponent>