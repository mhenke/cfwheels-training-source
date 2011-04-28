<cfcomponent extends="plugins.dbmigrate.Migration" hint="creates tags tables">
  <cffunction name="up">
    <cfscript>
    t = createTable('tags');
    t.string('name');
    t.timestamps();
    t.create();
    
    addRecord(table='tags',id=1,name='ColdFusion');
    addRecord(table='tags',id=2,name='Wheels');
    addRecord(table='tags',id=3,name='Glee');
    addRecord(table='tags',id=4,name='Cheerios');
    addRecord(table='tags',id=5,name='New Directions');
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
    dropTable('tags');
    </cfscript>
  </cffunction>
</cfcomponent>
