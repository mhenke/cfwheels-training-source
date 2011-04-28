<cfcomponent extends="plugins.dbmigrate.Migration" hint="creates people table">
  <cffunction name="up">
    <cfscript>
    t = createTable('people');
    t.string('firstname');
    t.string('lastname');
    t.string('email');
    t.string('password');
    t.timestamps();
    t.create();
    
    addRecord(table='people',id=1,email='admin@gmail.com',password='#Hash("admin")#');
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
    dropTable('people');
    </cfscript>
  </cffunction>
</cfcomponent>
