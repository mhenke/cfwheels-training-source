<cfoutput>
<div class="comment">
  <h5>Comment by #arguments.comment.authorname#</h5>
  <p>#arguments.comment.body#</p>
  <p>Posted #distanceOfTimeInWords(arguments.comment.createdat, now())# later</p>
</div>
</cfoutput>