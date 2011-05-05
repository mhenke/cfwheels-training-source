<cfcomponent extends="plugins.dbmigrate.Migration" hint="creates taggings table">
  <cffunction name="up">
    <cfscript>
	t = createTable(name='taggings',id=false);
    t.integer('tagid');
    t.integer('articleid');
    t.create();
    
    addRecord(table='taggings',tagid=1,articleid=1);
    addRecord(table='taggings',tagid=4,articleid=1);
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
    dropTable('taggings');
    </cfscript>
  </cffunction>
</cfcomponent>
