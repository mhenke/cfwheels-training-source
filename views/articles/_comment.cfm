<cfoutput>
<div class="comment">
  <h4>Comment by #arguments.comment.authorname#</h4>
  <p>#arguments.comment.body#</p>
  <p>Posted #distanceOfTimeInWords(arguments.comment.createdat, now())# later</p>
</div>
</cfoutput>