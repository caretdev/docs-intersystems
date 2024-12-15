/// SQL Catalog Queries
Class %Library.SQLCatalog Extends %RegisteredObject [ Owner = {_PUBLIC}, Not ProcedureBlock, System = 3 ]
{

/// <pre>
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLClassname Procedure
/// 	%SQLCatalog_SQLClassname('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		If 'tablename' is not qualified, the default schema will be added to the name.
/// 		Returns The name of the class which projected the table
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLClassname(qh As %Library.SQLProcContext, table As %String(MAXLEN=257)) As %Library.String [ ProcedureBlock = 1, SqlProc ]
{
}

/// <pre>
/// The SQLCachedQueryInfo query returns a list of cached queries.
/// Note that only the first 80 characters of a query are returned.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLCachedQueryInfo Procedure
/// 	%SQLCatalog_SQLCachedQueryInfo(stripOptions=0)
/// 		Takes one %Boolean type parameter which determines if the QUERY contains any /*#OPTIONS ... string added to xDBC statements.  Default is 0.
/// 		Returns Cached Queries the current user is privileged to see
/// 		ROWSPEC = ROUTINE:%String		- Name of the Cached Query's routine
/// 			  QUERY:%String 		- Cached Query's SQL Text
/// 			  CREATE_TIME:%TimeStamp 	- Date/Time of Cached Query creation
/// 			  SOURCE:%Boolean 		- Cached Query source there?
/// 			  QUERYTYPE:%Integer		- 6 or 7
/// 			  QUERYTYPE_EXT:%String		- ODBC QUERY OR DYNAMIC QUERY
/// 			  COST:%Numeric			- Generated Cost of the query
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLCachedQueryInfoExecute(ByRef qh As %Binary, stripOptions As %Boolean = 0) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLCachedQueryInfoFetch(ByRef qh As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLCachedQueryInfoClose(qh As %Binary) As %Status [ Internal ]
{
}

/// <pre>
/// The SQLCachedQueryTable query returns a list of cached queries for a given table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLCachedQueryTable Procedure
/// 		%SQLCatalog_SQLCachedQueryTable('tablename',stripOptions=0)
/// 		Takes two parameters:
/// 			1) %String/VARCHAR type parameter which is the name of a table.
/// 			2) %Boolean type parameter which determines if the QUERY contains any /*#OPTIONS ... string added to xDBC statements.  Default is 0.
/// 		Returns Cached Queries on this table the current user is privileged to see
/// 		ROWSPEC = ROUTINE:%String		- Name of the Cached Query's routine
/// 			QUERY:%String				- Cached Query's SQL Text (First 80 characters)
/// 			CREATE_TIME:%TimeStamp		- Date/Time of Cached Query creation
/// 			SOURCE:%Boolean				- Cached Query source there?
/// 			QUERYTYPE:%Integer			- 8 (Dynamic), 9 (xDBC), 10 (Dynamic), 11 (Embedded)
/// 			QUERYTYPE_EXT:%String		- ODBC QUERY OR DYNAMIC QUERY
/// 			COST:%Numeric				- Generated Cost of the query
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLCachedQueryTableExecute(ByRef qh As %Binary, %table As %String, stripOptions As %Boolean = 0) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLCachedQueryTableFetch(ByRef qh As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLCachedQueryTableClose(qh As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// Returns information about the cached query <var>Routine</var>.
/// <p>Returns a string containing the query text for the cached query. Returns
/// the create times by reference.
/// <p><var>Source</var> indicates that there is source for the routine and <var>QueryType</var> indicates whether it is a ODBC query or a Dynamic query.
ClassMethod GetCachedQueryInfo(Routine As %String, ByRef CreateTime As %TimeStamp, ByRef Source As %Boolean, ByRef QueryType As %Integer, ByRef Cost As %Numeric) As %String [ Internal, ProcedureBlock = 1 ]
{
}

/// Given a <var>tablename</var>, return a count of Cached Queries currently defined
/// against the table.
ClassMethod GetCachedQueryTableCount(tablename As %String) As %Integer [ ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all child tables of a given table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLChildTables Procedure
/// 	%Library.SQLCatalog_SQLChildTables('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns any child tables this table has
/// 		ROWSPEC = TABLE_NAME:%String      	- Name of the Child Table
/// 		 	  COLLECTION_TYPE:%String 	- 'ARRAY' or 'LIST' if the table was projected as the result of a collection, else RELATIONSHIP
/// 			  ELEMENT_TYPE:%String    	- If COLLECTION_TYPE is ARRAY or LIST, this will contain the type of elements in the collection
/// 							  'PERSISTENT', 'SERIAL', or 'DATATYPE'.  If COLLECTION_TYPE is RELATIONSHIP, this field is NULL
/// 			  CLASS_NAME:%String      	- Name of the class which projected the table
/// 			  ORIGINATING_PROPERTY:%String	- Name of the property which produced the projection of this Child Table.
/// 			  INVERSE_RELATIONSHIP:%String	- If this child table is the result of a RELATIONSHIP, the relationship in the Parent table that
/// 							  is the inverse of the ORIGINATING_PROPERTY relationship.
/// 							  NOTE:  If the child table is projected as a result of the deprecated IDENTIFIEDBY class parameter,
/// 							  this INVERSE_RELATIONSHIP will be NULL, even though the COLLECTION_TYPE is reported as RELATIONSHIP.
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLChildTablesExecute(ByRef %q As %Binary, table As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLChildTablesFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLChildTablesClose(%q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Returns a list of all SQLCODE values and descriptions
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
///   SQLCODEList Procedure
/// 	%SQLCatalog_SQLCODEList()
/// 		Returns list of all SQLCODE values and descriptions
/// 		ROWSPEC = SQLCODE:%SmallInt	- SQLCODE value
/// 			  DESCRIPTION:%String	- SQLCODE Description
/// 		Rows are returned in SQLCODE order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLCODEListExecute(ByRef qh As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLCODEListFetch(ByRef qh As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLCODEListClose(ByRef qh As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all constraints from a table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
///   SQLConstraints Procedure
/// 	%SQLCatalog_SQLConstraints('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns all fields in the table:
/// 		ROWSPEC = CONSTRAINT_NAME:%String        - Name of the constraint
/// 			  TYPE:%String                   - Type of constraint
/// 			  CONSTRAINT_DATE:%String        - Constraint info depends on type
/// 			  CONSTRAINT_OBJECT_NAME:%String - Object name of the constraint
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
///
ClassMethod SQLConstraintsExecute(ByRef %q As %Binary, table As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLConstraintsFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLConstraintsClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all Fields from a table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLFields Procedure
/// 	%SQLCatalog_SQLFields('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns all fields in the table:
/// 		ROWSPEC = FIELD_NAME:%String			- Name of the field
/// 			  DATATYPE:%String			- Field's datatype
/// 			  COLUMN_NUMBER:%Integer		- Field's internal column number
/// 			  REQUIRED:%String			- Is field required, 'Yes' or 'No'
/// 			  UNIQUE:%String			- Is field unique, 'Yes', or 'No'
/// 			  COLLATION_FUNCTION:%String		- ALPHAUP, UPPER, STRING, EXACT, PLUS or MINUS
/// 			  HIDDEN:%String			- Is field hidden, 'Yes' or 'No'
/// 			  MAXLEN:%String			- MAXLEN parameter of field (or NULL)
/// 			  BLOB:%String				- Is field a BLOB, 'Yes' or 'No'
/// 			  REFERENCE:%String			- Name of the referenced table or NULL if not a reference
/// 			  CONTAINER_FIELD:%Library.String	- If this is a sub-field of a serial container, the name of the serial field
/// 			  ODBC_DATATYPE_CODE			- ODBC Datatype code for this field
/// 			  JDBC_DATATYPE_CODE			- ODBC Datatype code for this field
/// 			  COLLECTION_TYPE			- Type of collection, 'LIST', 'ARRAY' or ""
/// 			  REF_ID_DATATYPE			- If this is a reference field, the DATATYPE for the ID of the referenced table
/// 			  ELEMENT_TYPE				- If COLLECTION_TYPE is non-NULL, this will contain the type of elements in the collection
/// 								  'PERSISTENT', 'SERIAL', or 'DATATYPE'.  If COLLECTION_TYPE is NULL, this field is NULL
/// 			  REFERENCE_CLASS:%String		- Name of the referenced table's projecting class or NULL if not a reference
/// 			  INSERTABLE:%String			- Can a value for the field be supplied in an SQL INSERT statement, 'Yes' or 'No'.
/// 			  UPDATEABLE:%String			- Can a value for the field be supplied in an SQL UPDATE statement, 'Yes' or 'No'.
/// 			  DEFAULT:%String			- Field's default value expression (if any)
/// 			  ROWIDWITHODBCVALUES:%String		- If this is the ROWID field and the ROWID field is a datatype which
/// 								  has OdbcToLogical conversion, return Yes, otherwise No.  If this is not the
/// 								  ROWID field, return NULL.
/// 			  SERIAL_FIELD:%String			- Is this a serial field?  'Yes' or 'No'.
/// 			  ROWID_FIELD:%SmallInt			- Is this a RowID field? 0 = No, 1 = Yes, 2 = A field the RowID is based on.
/// 			  ORIGINATING_PROPERTY:%String		- Name of the class property which projected this field
/// 			  MAXVAL:%Library.String		- MAXVAL parameter of field (or NULL)
/// 			  MINVAL:%Library.String		- MINVAL parameter of field (or NULL)
/// 		Rows are returned in table column order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
///
ClassMethod SQLFieldsExecute(ByRef %q As %Binary, table As %String(MAXLEN=257)) As %Status [ Internal ]
{
}

ClassMethod SQLFieldsFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLFieldsClose(ByRef %q As %Binary) As %Status [ Internal ]
{
}

/// <pre>
/// Get a List of all Foreign Key constraints from a table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLForeignKeys Procedure
/// 	%SQLCatalog_SQLForeignKeys('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns all ForeignKeys defined in the table:
/// 		ROWSPEC = FOREIGN_KEY_NAME:%String   - Name of the FKey constraint
/// 			  FOREIGN_KEY_FIELDS:%String - List of field in the FKey constraint
/// 			  TARGET_TABLE:%String       - Name of the table referenced in the FKey constraint
/// 			  TARGET_CLASS:%String       - Name of the class which projects the table referenced in the FKey constraint
/// 			  TARGET_KEY:%String         - SQLName of the key in the referenced table
/// 			  TARGET_KEY_FIELDS:%String  - List of fields in the reference table this FKey references
/// 			  UPDATE_ACTION:%String      - Cascade, SetNull, NoAction, SetDefault
/// 			  DELETE_ACTION:%String      - Cascade, SetNull, NoAction, SetDefault
/// 			  FOREIGN_KEY_TYPE:%String   - RELATIONSHIP if the FKey was projected from a one-many relationship or FOREIGNKEY if the FKey
/// 						       was projected from a foreign key definition.
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
///
ClassMethod SQLForeignKeysExecute(ByRef %q As %Binary, table As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLForeignKeysFetch(ByRef %q As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLForeignKeysClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all Indices from a table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLIndices Procedure
/// 	%SQLCatalog_SQLIndices('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns all Indices in the table:
/// 		ROWSPEC = INDEX_NAME:%String	- Name of the index
/// 			  FIELDS:%String	- Indexed Fields
/// 			  UNIQUE:%SmallInt	- 1 = UNIQUE Index, 0 NON_UNIQUE
/// 			  PAGES:%Integer	- # of map pages
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
///
ClassMethod SQLIndicesExecute(ByRef %q As %Binary, table As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLIndicesFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLIndicesClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// SQLParentTable Procedure
/// 	%Library.SQLCatalog_SQLParentTable('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns any parent table this table has
/// 		ROWSPEC = PARENT_TABLE:%String    - Name of the Parent Table
/// 			  PARENT_CLASS:%String    - Name of the class that projected the parent table
/// 			  PARENT_PROPERTY:%String - Name of the property in the parent class (if from a collection) that projected this table
/// 		Rows are returned in no particular order
/// </pre>
///
ClassMethod SQLParentTableExecute(ByRef %q As %Binary, table As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLParentTableFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLParentTableClose(%q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Gets a description of the stored procedures available in the catalog.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLProcedures Procedure
/// 	%SQLCatalog_SQLProcedures('proc_name')
/// 		Takes 1 %String/VARCHAR type parameter which is an optional wildcard
/// 		match for the name of a Stored Procedure
/// 		Returns all SQL Procedures which match the name given
/// 		ROWSPEC = PROCEDURE_NAME:%String       - Name of the Stored procedure, LIKE Pattern allowed
/// 			  PROCEDURE_TYPE:%String       - Type of Stored procedure
/// 			  PROCEDURE_CLASS:%String      - Name of the class which projected the Procedure
/// 			  METHOD_OR_QUERY_NAME:%String - Name of the method or query the procedure is generated from
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLProceduresExecute(ByRef %q As %Binary, name As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLProceduresFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLProceduresClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Gets detailed information about a single Stored Procedure
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
///   SQLProcedureInfo Procedure
/// 	%SQLCatalog_SQLProcedureInfo('proc_name')
/// 		Takes 1 %String/VARCHAR type parameter which is an exact Procedure name
/// 		Returns information for the Procedure
/// 		ROWSPEC = CLASS_NAME:%String		- Name of the class procedure method or query reside in
/// 			  PROCEDURE_TYPE:%String		- Type of Stored procedure
/// 			  METHOD_OR_QUERY_NAME:%String	- Name of the method or query the procedure is generated from
/// 			  DESCRIPTION:%String		- Procedure's description
/// 			  NUMBER_INPUT_PARAMS:%Integer	- Number of input parameters
/// 			  NUMBER_OUTPUT_PARAMS:%Integer	- Number of output parameters
/// 			  RETURN_VALUE:%Integer		- Has a return value?
/// 			  NUMBER_OF_COLUMNS:%Integer	- Number of columns
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLProcedureInfoExecute(ByRef QHandle As %Binary, name As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLProcedureInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLProcedureInfoClose(QHandle As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all relationship constraints from a table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLRelationships Procedure
/// 	%SQLCatalog_SQLRelationships('tablename','cardinality')
/// 		Parameters:
/// 			  tablename   - %String - required - fully qualified table name
/// 			  cardinality - %String - optional - default is '*'
/// 					Comma delimited list of cardinality values
/// 					MANY, ONE, PARENT, CHILDREN
/// 					'%', or '*' means any/all cardinality values
/// 		Returns Relationships defined in the class (including inherited relationships) which projected the table.
/// 		ROWSPEC = RELATIONSHIP_NAME:%String           - SQL Name of the Relationship Property
/// 			  RELATIONSHIP_CLASS:%String          - Name of the class the relationship property references
/// 			  RELATIONSHIP_TABLE:%String          - Name of the table the relationship property references
/// 			  INVERSE:%String                     - SQL Name of the inverse property
/// 			  CARDINALITY:%String                 - Relationship's cardinality
/// 			  RELATIONSHIP_JDBC_TYPE:%Integer     - JDBC Datatype number of the relationship property
/// 			  RELATIONSHIP_JDBC_TYPENAME:%String  - JDBC Datatype name of the relationship property
/// 			  INVERSE_JDBC_TYPE:%Integer          - JDBC Datatype number of the inverse property
/// 			  INVERSE_JDBC_TYPENAME:%String       - JDBC Datatype name of the inverse property
/// 	Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLRelationshipsExecute(ByRef %q As %Binary, tablename As %String(MAXLEN=257), cardinality As %String = "") As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLRelationshipsFetch(ByRef %q As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLRelationshipsClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Gets a list of SQL Reserved Words
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLReservedWords Procedure
/// 	%SQLCatalog_SQLReservedWords()
/// 		Returns a list of SQL Reserved words
/// 		ROWSPEC = SQL_RESERVED_WORD:%String - Name of the SQL Reserved Word
/// 		Rows are returned in Reserved Word order using UPPER collation
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLReservedWordsExecute(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLReservedWordsFetch(ByRef %q As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLReservedWordsClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a list of all Tables and Views.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLTables Procedure
/// 	%SQLCatalog_SQLTables()
/// 		Privileges are checked against pre-define $Username.
/// 		Returns a list of tables and views defined in the current namespace.
/// 		ROWSEPC = RELATION_NAME:%String	   - Name of the table or view
/// 			  TYPE:%String 		   - 'TABLE' or 'VIEW'
/// 			  OWNER:%String            - Owner of the table/view
/// 			  LAST_COMPILED:%TimeStamp - Time of last compilation
/// 		Rows are returned in order by RELATION_NAME
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLTablesExecute(ByRef %q As %Binary, %user As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLTablesFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLTablesClose(ByRef QHandle As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all Triggers from a table.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLTriggers Procedure
/// 	%SQLCatalog_SQLTriggers('tablename')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a BaseTable.
/// 		Returns all triggers in the table:
/// 		ROWSPEC = TRIGGER_NAME:%String		- Name of the trigger
/// 			  TIME_EVENT:%String		- Trigger's TIME and EVENT
/// 			  ORDER:%SmallInt		- Trigger's order with the TIME_EVENT
/// 			  CODE:%String			- Trigger code
/// 		Rows are returned in no particular order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLTriggersExecute(ByRef %q As %Library.Binary, %table As %Library.String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLTriggersFetch(ByRef %q As %Library.Binary, ByRef Row As %Library.List, AtEnd As %Library.Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLTriggersClose(ByRef %q As %Library.Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get a List of all Fields from a view.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLViewFields Procedure
/// 	%SQLCatalog_SQLViewFields('viewname')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a View.
/// 		Returns all fields in the table:
/// 		ROWSPEC = FIELD_NAME:%String		- Name of the field
/// 			  DATATYPE:%String		- Field's datatype
/// 			  MAXLEN:%String		- MAXLEN parameter of field (or NULL)
/// 			  BLOB:%String			- Is field a BLOB, 'Yes' or 'No'
/// 			  MAXVAL:%Library.String	- MAXVAL parameter of field (or NULL)
/// 			  MINVAL:%Library.String	- MINVAL parameter of field (or NULL)
/// 		Rows are returned view column order
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLViewFieldsExecute(ByRef %q As %Binary, view As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLViewFieldsFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLViewFieldsClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Get full View definition.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLViewInfo Procedure
/// 	%SQLCatalog_SQLViewInfo('viewname')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a View.
/// 		Returns all fields in the table:
/// 		ROWSPEC = VIEW_QUERY:%String	- Query Text of the View
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLViewInfoExecute(ByRef %q As %Binary, view As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLViewInfoFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLViewInfoClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Return list of tables the view depends on
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLViewDependsOn Procedure
/// 	%Library.SQLViewDependsOn('viewname')
/// 		Takes 1 %String/VARCHAR type parameter which is the name of a View.
/// 		Returns a list of tables this view depends on
/// 		ROWSPEC = SCHEMA:%String	- Schema name
/// 			  TABLE_NAME:%String	- Table name
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLViewDependsOnExecute(ByRef %q As %Binary, pView As %String(MAXLEN=257)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLViewDependsOnFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLViewDependsOnClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// <pre>
/// Returns list of SQL statements against the given Table or View name
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// SQLTableStatements Procedure
/// 	%Library.SQLTableStatements('schema_name','relation_name')
/// 		Takes 2 %String/VARCHAR type parameters which is the name of a schema and a table or view name.
/// 		Returns a list of SQL statements against the table or view
/// 		ROWSPEC = SCHEMA:%String(MAXLEN=128)	  - Schema name
/// 			  RELATION_NAME:%String(MAXLEN=128)   - Table/View name
/// 			  PLAN_STATE:%String(MAXLEN=32)	      - The state of the frozen plan for this statement: Frozen/Explicit, Unfrozen/Parallel or Unfrozen.
/// 			  LOCATION:%String(MAXLEN=128)	      - Routine name the SQL code is located in
/// 			  STATEMENT:%String(MAXLEN(16348)     - SQL Statement
///               NATURAL_QUERY:%String               - True if this is a simple query where we will not record stats
///               COUNT:%Integer                      - Number of times this query has been called
///               AVERAGECOUNT:%Double                - Average number of times this query has been called (based on days since we first saw this)
///            	  TOTAL:%Integer                      - Total time spent executing this query
///               AVERAGE:%Double                     - Average time spent running query
///               STDDEV:%Double                      - Standard deviation of query time
///               RUNTIMELOCATION:%String(MAXLEN=128) - For UCQ runtimeLocation is the UCQ classname which is different from the containers name
///               ROWCOUNT:%Integer                   - Total %ROWCOUNT from running this query
///               AVERAGEROWCOUNT:%Integer            - Average row count per day (since we first saw this query)
///               USERNAME:%String                    - $username that built query
///               CLIENTNAME:%String                  - Client name that built query
///               CLIENTIP:%String                    - Client IP that built query
///               CLIENTAPP:%String                   - Client application name that built query
///               CALLSTACK:%String                   - Call stack when query was built
///               COMMANDS:%Integer                   - ObjectScript commands executed from running this query
///               AVERAGECOMMANDS:%Integer            - Average ObjectScript commands executed from running this query per day
/// 		Note:  Only DECLARE, SELECT, INSERT, UPDATE, and DELETE statements are returned.
/// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/// </pre>
ClassMethod SQLTableStatementsExecute(ByRef %q As %Binary, SchemaName As %String(MAXLEN=128), RelationName As %String(MAXLEN=128)) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLTableStatementsFetch(ByRef %q As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod SQLTableStatementsClose(ByRef %q As %Binary) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod MakePat(like As %Library.String, esc As %Library.String) As %Library.String [ Internal, ProcedureBlock = 1 ]
{
}

}
