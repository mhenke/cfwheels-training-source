<cfcomponent extends="controller">
 <cffunction name="one">
  <cfset time = now() />
  <cfdump var="#now()#">
  <cfset myArticles = model("article").findAll() />
  <cfdump var="#myArticles#">
  <cfset article = model("article").new() />
  <cfdump var="#article#">
  <cfabort>
 </cffunction>
 <cffunction name="two">
  <cfset a.title = "Sample Article Title" />
  <cfset a.body = "This is the text for my article, woo hoo!" />
  <cfset article = model("article").new(a) />
  <cfset article.save() />
  <cfset articles = model("article").findAll() />
  <cfdump var="#articles#">
  <cfabort>
 </cffunction>
</cfcomponent>