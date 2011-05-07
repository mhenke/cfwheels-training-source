<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset hasMany(name="taggings",shortcut="articles") />
	</cffunction>

</cfcomponent>
