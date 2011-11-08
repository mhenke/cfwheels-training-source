<cfoutput> 
<cfloop array=#article.comments# index="comment">
<div class="comment">
 <h4>Comment by #comment.authorname#</h4> 
 <p>#comment.body#</p>
 <p>Posted #distanceOfTimeInWords(comment.createdat, now())# later</p>
</div>
</cfloop>
</cfoutput>