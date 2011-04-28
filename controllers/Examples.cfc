<cfcomponent extends="controller">

 <cffunction name="one">
  <cfset time = now() />
  <cfdump var="#now()#" />
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
	<cfset a = model("article").findByKey(key=3,include="comments") />
    <cfdump var="#a.comments#" />
	<cfdump var="#model("comment").new()#" />
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
 <cffunction name="five">
  <cfset a = model("article").findByKey(key=3,include="comments") />
  <cfdump var="#a.comments#" />
  <cfabort>
 </cffunction>
 
 <cffunction name="six">
 <!---
  <cfset a = model("article").findByKey(key=3,include="taggings") />
  <cfdump var="#a#" />
 
  <cfset data = model("tagging").findAll(include="article,tag",where="articleid=3") />
  <cfdump var="#data#">
  --->
  
 <!---
  tags = article.taggings.collect{|tagging| tagging.tag}
 --->
 
 <cfset article = model("article").findByKey(key=3,include="taggings") />
 <cfdump var="#article.tags()#">
 
 <cfset tag = model("tag").findByKey(key=1,include="taggings") />
 <cfdump var="#tag.articles()#">
 <cfabort>
 </cffunction>

 <cffunction name="seven">
 
   <cfset a = model("article").findByKey(key=3,include="taggings") />
   <cfdump var="#a.tags()#" />
   <cfabort>

<!---   
  <cfset t = model("tag").findByKey(key=3,include="articles") />
  <cfdump var="#t#">
  <cfabort>
--->
  
 </cffunction>

</cfcomponent>