<cfcomponent extends="Model" output="false">

 <cffunction name="init">  
  <cfset hasMany("comments") />  
 </cffunction>

</cfcomponent>