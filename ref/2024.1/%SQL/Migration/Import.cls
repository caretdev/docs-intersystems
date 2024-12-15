/// Imports Objects from Relational Databases
Class %SQL.Migration.Import Extends (%RegisteredObject, Util) [ Not ProcedureBlock, System = 3 ]
{

/// Connect to the client system via an SQL Gateway Connection (ODBC or JDBC), and initializes some structures<br>
/// <br>
/// Arguments:<br>
/// <li><i>dsn</i> - is the name of the SQL Gateway Connection to connect to<br>
/// <li><i>localuser</i> - obsolete<br>
/// <li><i>isJDBC</i> - 1/0 flag.  If this SQL Gateway connection is via JDBC use 1, otherwise use 0.  0 (ODBC) is the default parameter value<br>
Method Connect(dsn As %String, localuser As %String = "", isJDBC As %Boolean = 0) As %Status
{
}

/// CopyData (for ODBC connection) - Copies the data from the source system to this system<br>
/// <li>1 - get list of fields on source table (through gateway)<br>
/// <li>2 - construct select list for source<br>
/// <li>3 - construct update list for dest<br>
/// <li>4 - select loop on source<br>
/// <dd>    * for each, insert into destination<br>
/// <dd>    * for each Blob on source:<br>
/// <dd>  	* while whole blob not fetched<br>
/// <dd>  		* fetch blob block from source<br>
/// <dd> 		* add blob to destination blob<br>
/// <li>5 - create indices, ....or anything<br>
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the target table<br>
/// <li><i>TbName</i> - Name of the target table<br>
/// <li><i>ScrubRoutine</i> - Name of a routine to call to scrub/modify the incoming data<br>
/// <br>
/// DATA SCRUBBING:<br>
/// For each data import process, a Routine can be speficied to modify field values prior to inserting them into InterSystems IRIS. This also allows to skip specific rows of data, preventing their insertion into InterSystems IRIS. The user-written Data scrubbing routine must provide 2 entry points.
/// <li>Metadata(TbOwner,TbName,colNums,colSqlTypes,colStreamTypes)
/// <li>Data(colData)
/// <br><br>
/// <b>Metadata</b> is called once for each table to copy, to pass information about the TableOwner, TableName, ColumnNames and Datatypes. It is a good place to perform the processing that needs to be done once per table.
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - The SQL Schema in the origin datasource
/// <li><i>TbName</i> - The SQL Table name
/// <li><i>colNums</i>-  An array 1..N. One element per column in the table. colNum(i)="Column_Name"
/// <li><i>colSqlTypes</i> - An array 1..N  One element per column in the table. The value is the SQL Datatype in the source Database. Values are ODBC Values as defined in %SQLMigration.inc:
/// <dd>	   #define SQLCHAR 1
/// <dd>	   #define SQLBIGINT -5
/// <dd>	   #define SQLBINARY -2
/// <dd>	   #define SQLBIT -7
/// <dd>	   #define SQLDATE 9
/// <dd>	   #define SQLDECIMAL 3
/// <dd>	   #define SQLDOUBLE 8
/// <dd>	   #define SQLFLOAT 6
/// <dd>	   #define SQLGUID -11
/// <dd>	   #define SQLINTEGER 4
/// <dd>	   #define SQLLONGVARCHAR -1
/// <dd>	   #define SQLLONGVARBINARY -4
/// <dd>	   #define SQLNUMERIC 2
/// <dd>	   #define SQLREAL 7
/// <dd>	   #define SQLSMALLINT 5
/// <dd>	   #define SQLTINYINT -6
/// <dd>	   #define SQLTIME 10
/// <dd>	   #define SQLTIMESTAMP 11
/// <dd>	   #define SQLVARBINARY -3
/// <dd>	   #define SQLVARCHAR 12
/// <li><i>colStreamTypes</i> - An array 1..N. One element per column in the table. The value is
/// <dd> 	  0: if the column data is not a stream
/// <dd> 	  1: if the column data is contained in a %CharacterStream
/// <dd> 	  2: if the column data is contained in a %BinaryStream<br>
/// Return value: none (Quit with no argument)<br>
/// <br>
/// <b>Data</b> is called once for each row fetched from the origin datasource. This function must return 1 to insert this Row, and 0 if the Row should not be inserted into InterSystems IRIS.
/// <br>
/// Arguments:<br>
/// <li><i>colData()</i> - Is an array 1..N of values. colData(i) is the column Data in ODBC format if the column is not a Stream (a Date is represented in the YYYY-MM-DD Format. An empty String is represented by a $c(0) character, and a NULL value is represented as  ""). For BLOB columns, represented in InterSystems IRIS as Streams, it is an ID to an Open %CharacterStream or %BinaryStream as specified in the colStreamTypes array that was passed to the Metadata function. To change the value of a column 'i', the Data function can simply modify the value in        colData(i). To change the value of a Blob column, the Data function can modify the Stream, or modify the Stream reference. It must return in colData(i) a $zobjint() of an oref to a Stream.
/// <br>
Method CopyData(TbOwner As %String, TbName As %String, ScrubRoutine As %String) As %Status
{
}

/// CopyDataJ (for JDBC connection) - Copies the data from the source system to this system<br>
/// <li>1 - get list of fields on source table (through gateway)<br>
/// <li>2 - construct select list for source<br>
/// <li>3 - construct update list for dest<br>
/// <li>4 - select loop on source<br>
/// <dd>    * for each, insert into destination<br>
/// <dd>    * for each Blob on source:<br>
/// <dd>  	* while whole blob not fetched<br>
/// <dd>  		* fetch blob block from source<br>
/// <dd> 		* add blob to destination blob<br>
/// <li>5 - create indices, ....or anything<br>
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the target table<br>
/// <li><i>TbName</i> - Name of the target table<br>
/// <li><i>ScrubRoutine</i> - Name of a routine to call to scrub/modify the incoming data<br>
/// <br>
/// DATA SCRUBBING:<br>
/// For each data import process, a Routine can be speficied to modify field values prior to inserting them into InterSystems IRIS. This also allows to skip specific rows of data, preventing their insertion into InterSystems IRIS. The user-written Data scrubbing routine must provide 2 entry points.
/// <li>Metadata(TbOwner,TbName,colNums,colSqlTypes,colStreamTypes)
/// <li>Data(colData)
/// <br><br>
/// <b>Metadata</b> is called once for each table to copy, to pass information about the TableOwner, TableName, ColumnNames and Datatypes. It is a good place to perform the processing that needs to be done once per table.
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - The SQL Schema in the origin datasource
/// <li><i>TbName</i> - The SQL Table name
/// <li><i>colNums</i>-  An array 1..N. One element per column in the table. colNum(i)="Column_Name"
/// <li><i>colSqlTypes</i> - An array 1..N  One element per column in the table. The value is the SQL Datatype in the source Database. Values are ODBC Values as defined in %SQLMigration.inc:
/// <dd>	   #define SQLCHAR 1
/// <dd>	   #define SQLBIGINT -5
/// <dd>	   #define SQLBINARY -2
/// <dd>	   #define SQLBIT -7
/// <dd>	   #define SQLDATE 9
/// <dd>	   #define SQLDECIMAL 3
/// <dd>	   #define SQLDOUBLE 8
/// <dd>	   #define SQLFLOAT 6
/// <dd>	   #define SQLGUID -11
/// <dd>	   #define SQLINTEGER 4
/// <dd>	   #define SQLLONGVARCHAR -1
/// <dd>	   #define SQLLONGVARBINARY -4
/// <dd>	   #define SQLNUMERIC 2
/// <dd>	   #define SQLREAL 7
/// <dd>	   #define SQLSMALLINT 5
/// <dd>	   #define SQLTINYINT -6
/// <dd>	   #define SQLTIME 10
/// <dd>	   #define SQLTIMESTAMP 11
/// <dd>	   #define SQLVARBINARY -3
/// <dd>	   #define SQLVARCHAR 12
/// <li><i>colStreamTypes</i> - An array 1..N. One element per column in the table. The value is
/// <dd> 	  0: if the column data is not a stream
/// <dd> 	  1: if the column data is contained in a %CharacterStream
/// <dd> 	  2: if the column data is contained in a %BinaryStream<br>
/// Return value: none (Quit with no argument)<br>
/// <br>
/// <b>Data</b> is called once for each row fetched from the origin datasource. This function must return 1 to insert this Row, and 0 if the Row should not be inserted into InterSystems IRIS.
/// <br>
/// Arguments:<br>
/// <li><i>colData()</i> - Is an array 1..N of values. colData(i) is the column Data in ODBC format if the column is not a Stream (a Date is represented in the YYYY-MM-DD Format. An empty String is represented by a $c(0) character, and a NULL value is represented as  ""). For BLOB columns, represented in InterSystems IRIS as Streams, it is an ID to an Open %CharacterStream or %BinaryStream as specified in the colStreamTypes array that was passed to the Metadata function. To change the value of a column 'i', the Data function can simply modify the value in        colData(i). To change the value of a Blob column, the Data function can modify the Stream, or modify the Stream reference. It must return in colData(i) a $zobjint() of an oref to a Stream.
/// <br>
Method CopyDataJ(TbOwner As %String, TbName As %String, ScrubRoutine As %String) As %Status [ ProcedureBlock = 1, PublicList = comperr ]
{
}

/// Copy Foreign Keys from remote DB via ODBC to InterSystems IRIS for the given FK Table.
/// <br>
/// Arguments:<br>
/// <li><i>FkTbOwner</i> - Name of the owner/schema of the foreign key table<br>
/// <li><i>FkTbName</i> - Name of the target table to get Foreign Keys from<br>
Method CopyTableFKeys(FkTbOwner As %Library.String, FkTbName As %Library.String) As %Status
{
}

/// Copy Foreign Keys from remote DB via JDBC to InterSystems IRIS for the given FK Table.
/// <br>
/// Arguments:<br>
/// <li><i>FkTbOwner</i> - Name of the owner/schema of the foreign key table<br>
/// <li><i>FkTbName</i> - Name of the target table to get Foreign Keys from<br>
Method CopyTableFKeysJ(FkTbOwner As %Library.String, FkTbName As %Library.String, verbose As %Library.Boolean = 0) As %Status [ ProcedureBlock = 1 ]
{
}

/// Cleanup previous version of table (Table,Index,Foreign Keys), re-create
/// table with Fields, Unique and Primary Key constraints, and Index Definitions
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the table<br>
/// <li><i>TbName</i> - Name of the target table<br>
/// <li><i>verbose</i> - 1/0 flag.  If 1 display output to screen.  Default os 0.
Method CopyTableStruct(TbOwner As %String, TbName As %String, verbose As %Boolean = 0) As %Status [ ProcedureBlock = 1 ]
{
}

/// Copied Indices from remote DB via ODBC to InterSystems IRIS for the specified table.
/// Note: currently, all Indices, be they user or system defined, are copied as normal indices.
/// Oracle Bitmap Indices and Sql Server Clustered Indices are copied as normal Indices.
/// Indices on Primary Keys are not created, as those are automatically generated.
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the table<br>
/// <li><i>TbName</i> - Name of the target table<br>
Method CpTableIndex(TbOwner As %Library.String, TbName As %Library.String) As %Status [ Private ]
{
}

/// Copied Indices from remote DB via JDBC to InterSystems IRIS for the specified table.
/// Note: currently, all Indices, be they user or system defined, are copied as normal indices.
/// Oracle Bitmap Indices and Sql Server Clustered Indices are copied as normal Indices.
/// Indices on Primary Keys are not created, as those are automatically generated.
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the table<br>
/// <li><i>TbName</i> - Name of the target table<br>
/// <li><i>pkColumns</i> - Passed by Reference.  returns primary key columns
/// <li><i>verbose</i> - 1/0 flag.  If 1 display output to screen.  Default os 0.
Method CpTableIndexJ(TbOwner As %Library.String, TbName As %Library.String, ByRef pkColumns As %String, verbose As %Boolean = 0) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Copy the table definition via ODBC to InterSystems IRIS: Fields, Datatypes, Not Null Columns, Defaults columns, and table Primary Key.<br>
/// Not copied by this function are: Foreign Key constraints, Check Constraints, table Triggers, Autoincrements.
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the table<br>
/// <li><i>TbName</i> - Name of the target table<br>
Method CpTableSchema(TbOwner As %Library.String, TbName As %Library.String) As %Status [ Private ]
{
}

/// Copy the table definition via JDBC to InterSystems IRIS: Fields, Datatypes, Not Null Columns, Defaults columns, and table Primary Key.<br>
/// Not copied by this function are: Foreign Key constraints, Check Constraints, table Triggers, Autoincrements.
/// <br>
/// Arguments:<br>
/// <li><i>TbOwner</i> - Name of the owner/schema of the table<br>
/// <li><i>TbName</i> - Name of the target table<br>
/// <li><i>pkColumns</i> - Passed by Reference.  returns primary key columns
Method CpTableSchemaJ(TbOwner As %Library.String, TbName As %Library.String, ByRef pkColumns As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Copy One View and its dependencies via JDBC
/// <br>
/// Arguments:<br>
/// <li><i>VOwner</i> - Name of the owner/schema of the view<br>
/// <li><i>VName</i> - Name of the target view<br>
Method CopyViewJ(VOwner As %String, VName As %String) As %Status
{
}

/// Find dependencies. Copy each dependency View via JDBC
/// <br>
/// Arguments:<br>
/// <li><i>VOwner</i> - Name of the owner/schema of the view<br>
/// <li><i>VName</i> - Name of the target view<br>
Method CopyViewRecursiveJ(VOwner As %String, VName As %String) [ ProcedureBlock = 1 ]
{
}

/// Copy One View and its dependencies via ODBC
/// <br>
/// Arguments:<br>
/// <li><i>VOwner</i> - Name of the owner/schema of the view<br>
/// <li><i>VName</i> - Name of the target view<br>
Method CopyView(VOwner As %String, VName As %String) As %Status
{
}

/// Find dependencies. Copy each dependency View via ODBC
/// <br>
/// Arguments:<br>
/// <li><i>VOwner</i> - Name of the owner/schema of the view<br>
/// <li><i>VName</i> - Name of the target view<br>
Method CopyViewRecursive(VOwner As %String, VName As %String, hstmt As %String)
{
}

/// Build Array of Datatypes for source Database
Method Datatypes() As %Status [ Private ]
{
}

/// Disconnect from the SQL Gateway (ODBC)
Method Disconnect() As %Status
{
}

/// Returns the current number of import errors.
Method ErrorCount() As %Integer
{
}

/// Returns Database handle for current connection ("" or 0 if not connected)
Method Gethdbc() As %String
{
}

}
