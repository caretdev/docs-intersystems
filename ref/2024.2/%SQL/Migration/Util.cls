/// Utilities for Sql Migration
Class %SQL.Migration.Util Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// Does the Gateway support Wide Calls?
Property GTWUnicode As %String;

/// Prefix for Generated Routines
Parameter RTNPREFIX = "SQLImport";

/// SQL_DBMSName of source DSN
Property DBMSName As %String [ Private ];

/// SQL_DBMSVer of source DSN
Property DBMSVersion As %String [ Private ];

/// SQL_DriverName ODBC Driver used to connect: used to differentiate between Oracle Native and Microsoft Driver...
Property DriverName As %String [ Private ];

/// Debugging ?
Property Debug As %Integer [ InitialExpression = 0 ];

/// OutputFile for Sql Statements executed (to Debug)
Property DebugOutFile As %String [ InitialExpression = "Migration.sql" ];

/// If true, generate indices after importing data.
Property DeferIndices As %Integer [ InitialExpression = 1 ];

/// Delete Exiting Data from table before importing
Property DeleteExistingData As %Integer [ InitialExpression = 1 ];

/// 1 if this is a JDBC connection, 0 if ODBC
Property isJDBC As %Boolean [ InitialExpression = 0, Private ];

/// Preserve Primary Key Constraint Name when importing table
Property PreservePKName As %Integer [ InitialExpression = 1 ];

/// Array Of Datatypes on source Database
Property DtArray As %ArrayOfDataTypes [ Private ];

/// maximum number of Data Import Errors to report per table when Copying Data 0=All
Property MaxErrors As %Integer [ InitialExpression = 30 ];

/// If true, import will insert with %NOCHECK.
Property NoCheck As %Integer [ InitialExpression = 1 ];

/// If true, import will insert with %NOTRIGGER.
Property NoTrigger As %Integer [ InitialExpression = 0 ];

/// If true, import will run without journaling enabled.
Property NoJournal As %Integer [ InitialExpression = 0 ];

/// Property for calling the GateWay with $zf(-5,..)
Property SQLGateway As %String [ Private ];

/// hdbc to source DSN
Property hdbc As %String [ Private ];

/// DSN we are connected to
Property dsn As %String [ Private ];

/// Map to translate Source DSN schemas (owner) to InterSystems IRIS Schemas
Property OwnerMap As array Of %String [ Private ];

/// Add 1 Mapping of Source schema to destination schema
Method AddOwnerMap(SourceOwner As %String, DestOwner As %String)
{
}

Method GetOwnerMap(SourceOwner As %String) As %String
{
}

/// Deletes all the content of the OwnerMap
Method ClearOwnerMap()
{
}

Method AccessGetPKey(hstmt As %String, TbName As %String) As %String
{
}

Method ClearError()
{
}

/// Clears the Migration Error Log for this instance
ClassMethod ClearErrors()
{
}

/// Clear the Migration status message list
ClassMethod ClearStatusMsg()
{
}

ClassMethod DSNClose(QHandle As %Binary) As %Status
{
}

ClassMethod DSNExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod DSNFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status
{
}

/// Finds out if the given Table is a Table (0) or a View (1)
Method isaView(TbOwner As %String, TbName As %String, hstmt As %String) As %Integer
{
}

/// Finds out if the given Table is a Table (0) or a View (1)
Method isaViewJ(TbOwner As %String, TbName As %String) As %Integer [ ProcedureBlock = 1 ]
{
}

/// Get List of Dependencies for a View
Method FindViewDeps(VOwner As %String, VName As %String, hstmt As %String) As %String
{
}

Method FindViewDepsJ(VOwner As %String, VName As %String) As %String [ ProcedureBlock = 1 ]
{
}

/// Copy one view Definition from the remote DB to InterSystems IRIS
Method CopyOneView(VOwner As %String, VName As %String, hstmt As %String)
{
}

/// Copy one view Definition from the remote DB to InterSystems IRIS
Method CopyOneViewJ(VOwner As %String, VName As %String) [ ProcedureBlock = 1 ]
{
}

/// Informix:Returns a $list of Column Names which are Not NULL is source DB
Method IFXFindNotNull(TbOwner As %String, TbName As %String, hstmt As %String) As %String
{
}

/// Oracle: returns Column Default from ALL_TAB_COLUMNS
Method OraDefault(TbOwner As %String, TbName As %String, ColName As %String) As %String
{
}

/// Returns a $list of Columns Names which are AutoIncrement/Identity in source Database
Method FindIdentity(TbOwner As %String, TbName As %String, hstmt As %String) As %String
{
}

/// Returns a $list of Columns Names which are AutoIncrement/Identity in source Database
Method FindIdentityJ(TbOwner As %String, TbName As %String) As %String
{
}

/// Returns Name of InterSystems IRIS Datatype for given column
Method DatatypeName(DType As %String, Precision As %Integer, Length As %Integer, Scale As %Integer, DtName As %String, %msg As %String) As %String
{
}

/// Drops one table on destination. Drops Foreign keys pointing to that table.
Method DropTable(TbOwner As %String, TbName As %String, verbose As %Boolean = 0) As %Status
{
}

/// Given a table, drop any foreign keys constraint defined on that table
Method DropForeignKeys(TbOwner As %String, TbName As %String, verbose As %Boolean = 0) As %Status [ ProcedureBlock = 1 ]
{
}

/// Drops one View on destination
Method DropView(VOwner As %String, VName As %String, verbose As %Boolean = 0) As %Status [ ProcedureBlock = 1, PublicList = SQLCODE ]
{
}

ClassMethod ErrorLogClose(QHandle As %Binary) As %Status
{
}

ClassMethod ErrorLogExecute(ByRef QHandle As %Binary, hdbc As %String, TbQualifier As %String, TbOwner As %String, TbName As %String, TbType As %String) As %Status
{
}

ClassMethod ErrorLogFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status
{
}

/// Executes an Sql Statement in the current namespace as localUser
Method ExecSql(stsql As %String) As %Status
{
}

/// Initializes before using the SqlGateWay Calls
/// Tries to load odbcgateway and return a handle for $ZF(-5)
ClassMethod GetCGateHandle() As %String
{
}

/// Returns last Error of Migration process
ClassMethod GetLastErrorMsg() As %String
{
}

/// Returns current Status of Migration process
ClassMethod GetLastStatusMsg() As %String
{
}

Method GetPKeyStr(hstmt As %String, TbQualifier As %String, TbOwner As %String, TbName As %String, Did As %String) As %String [ ProcedureBlock = 1 ]
{
}

Method GetPKeyStrJ(TbQualifier As %String, TbOwner As %String, TbName As %String, Did As %String, ByRef collist As %String) As %String [ ProcedureBlock = 1 ]
{
}

Method InitDLL() As %Status
{
}

/// Logs an Error into the Migration Error Log
ClassMethod LogError(FuncName As %String, errno As %Integer, errdesc As %String, TbOwner As %String, TbName As %String, sql As %String)
{
}

/// Logs Status message
ClassMethod LogStatusMsg(msg As %String)
{
}

/// Displays all Errors for current Migration process on current device
ClassMethod ShowAllErrors()
{
}

ClassMethod ShowAllStatusMsg()
{
}

ClassMethod SqlTablesClose(QHandle As %Binary) As %Status
{
}

ClassMethod SqlTablesExecute(ByRef QHandle As %Binary, hdbc As %String, TbQualifier As %String, TbOwner As %String, TbName As %String, TbType As %String) As %Status
{
}

ClassMethod SqlTablesFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status
{
}

/// Returns results of SQLTables against remote database in hdbc
}
