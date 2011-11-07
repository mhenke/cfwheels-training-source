<cfcomponent extends="plugins.dbmigrate.Migration" hint="creates articles table">
 <cffunction name="up">
   <cfscript>
   t = createTable('articles');
   t.string('title');
   t.text('body');
   t.timestamps();
   t.create();
   </cfscript>
 </cffunction>
  <cffunction name="down">
    <cfscript>
    dropTable('articles');
    </cfscript>
  </cffunction>
</cfcomponent>
