<cfoutput>
<div class="comment" style="border-bottom-style: dashed; border-bottom-color: grey; border-bottom-width: 5px; width: 25%;">
  <h4>Comment by #arguments.comment.authorname#</h4>
  <p>#arguments.comment.body#</p>
  <p>Posted #distanceOfTimeInWords(arguments.comment.createdat, now())# later</p>
</div>
</cfoutput>