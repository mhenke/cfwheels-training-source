<cfcomponent extends="Controller">

 <cffunction name="one">
  <cfset time = now() />
  <cfdump var="#time#" />
  <cfset myArticles = model("article").findAll() />
  <cfdump var="#myArticles#" />
  <cfset article = model("article").new() />
  <cfdump var="#article#" />
  <cfabort>
 </cffunction>
 
 <cffunction name="two">
  <cfset a.title = "Sample Article Title" />
  <cfset a.body = "This is the text for my article, woo hoo!" />
  <cfset article = model("article").new(a) />
  <cfset article.save() />
  <cfset articles = model("article").findAll() />
  <cfdump var="#articles#" />
  <cfabort>
 </cffunction>

<cffunction name="three">  
 <cfset a = model("article").findByKey(key=3, include="comments") /> 
 <h2>Here are the article<h2>
 <cfdump var="#a#" />  
 <h2>Here are the comments<h2>
 <cfdump var="#a.comments#" />  
 <h2>Here is a new comment created from the Comment Model Object<h2>
 <cfdump var="#model("comment").new()#" /> 
 <h2>Here is a new comment created from the Articles Model Object<h2>
 <cfdump var="#a.newComment()#" />  
 <cfabort>  
</cffunction>

<cffunction name="four">  
 <cfset a = model("article").findByKey(key=3,include="comments") />

 <cfset c = a.newComment() />  
 <cfset c.authorname = "Daffy Duck" />  
 <cfset c.authorurl = "http://daffyduck.com" />  
 <cfset c.body = "I think this article is thhh-thhh-thupid!" />  
 <cfset c.save() />

 <cfset d = a.createComment(authorname = "Chewbacca", body = "RAWR!") />  
 <cfabort>  
</cffunction>
 
</cfcomponent>