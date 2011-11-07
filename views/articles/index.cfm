<div class="flash">
<p><cfoutput>#flash("message")#</cfoutput></p>
</div>

<h1>Listing articles</h1>
<ul>
<cfoutput query="articles">  
<li>
<b>#linkTo(text=title, action="show", key=id)#</b><br/>  
 <i>Actions:  
 #linkTo(text="edit", action="edit", key=id)#,  
 #linkTo(text="remove", action="delete", key=id, confirm="Remove the article '#title#'?")#   
 </i>   
</i>
</cfoutput> 

<cfoutput>  
<p>
#linkTo (text="Create a New Article", action="new")#
</p>
</cfoutput>

</ul>