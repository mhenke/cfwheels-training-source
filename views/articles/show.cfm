<div class="flash">
<p><cfoutput>#flash("message")#</cfoutput></p>
</div>

<cfoutput> 
<h2>#article.title#</h2>

<p>#article.body#</p>

#linkTo (text="<< Back to Articles List", controller="articles", action="index")#  
</cfoutput>