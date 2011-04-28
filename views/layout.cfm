<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script> 
	</head>
	<body>
		<cfoutput>
			<div class="flash"><p><cfoutput>#flash("message")#</cfoutput></p></div>
			<cfif StructKeyExists(session, "user")>
				<div id="logout">
				#linkTo(text="Logout", controller="main", action="logout")#
				</div>
			</cfif>
			<div id="body">
			#includeContent()#
			</div>
		</cfoutput>
		<script type="text/javascript">
			$(window).load(function(){
  <cfoutput query="tagsChecked">$('###tagsChecked.name#').attr('checked','checked');</cfoutput>
});

</script>
	</body>
</html>