<cfoutput>  
<cfloop array=#article.comments# index="comment">
<div class="comment">
 <h4>Comment by #comment.authorname#</h4> 
 <p>#comment.body#</p>
</div>
</cfloop>
</cfoutput>