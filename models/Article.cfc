<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset hasMany(name="comments", dependent="deleteAll")/>
		<cfset hasMany(name="taggings", shortcut="tags", dependent="deleteAll")/>
		<cfset nestedProperties(associations="comments,taggings", allowDelete=true)>
	</cffunction>

</cfcomponent>