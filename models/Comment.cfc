<cfcomponent extends="Model" output="false">

 <cffunction name="init">  
  	<cfset belongsTo("article") /> 
  	<cfset validatesPresenceOf(
            properties="authorname,body"
        )>
	<cfset validatesFormatOf(property="url",allowBlank="true")>
	<cfset validatesFormatOf(property="authoremail",allowBlank="true")>
 </cffunction>

</cfcomponent>