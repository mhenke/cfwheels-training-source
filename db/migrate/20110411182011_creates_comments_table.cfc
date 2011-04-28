<cfcomponent extends="plugins.dbmigrate.Migration" hint="creates comments table">
  <cffunction name="up">
    <cfscript>
    t = createTable('comments');
	t.integer('articleid');
	t.string('authorname');
	t.string('authoremail');
	t.string('authorurl');
	t.text('body');
    t.timestamps();
    t.create();
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
    dropTable('comments');
    </cfscript>
  </cffunction>
</cfcomponent>
