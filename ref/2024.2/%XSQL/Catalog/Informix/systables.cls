/// The systables system catalog table describes each table in the database.
/// It contains one row for each table, view, or synonym that is defined in the database.
/// This includes all database tables and the system catalog tables.
Class %XSQL.Catalog.Informix.systables Extends %Persistent [ SqlRowIdPrivate, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Name of table, view, or synonym
Property tabname As %String(MAXLEN = 128) [ SqlColumnNumber = 2 ];

/// Owner of table (user informix for system catalog tables and user name for database tables)
Property owner As %String(MAXLEN = 128) [ SqlColumnNumber = 3, SqlComputeCode = { Set {owner}=$ListGet($Get(^oddEXTR({extentname},91)),4)}, SqlComputed, Transient ];

/// Tblspace identifier (similar to tabid)
/// Property partnum As %Integer [ SqlColumnNumber = 4 ];
/// System-assigned sequential ID number (system tables: 1 through 24, user tables: 100 through nnn)
Property tabid As %Integer [ SqlColumnNumber = 5 ];

/// Table type:
/// 	'T' = Table
/// 	'V' = View
/// 	'P' = Private synonym
/// 	'P' = Synonym (in an ANSI-compliant database)
/// 	'S' = Synonym
Property tabtype As %String(MAXLEN = 1) [ SqlColumnNumber = 12, SqlComputeCode = { Set {tabtype}=$Case({tabtype_internal},"U":"T","S":"T","V":"V",:"?")}, SqlComputed, Transient ];

/// Name of the schema the table resides in
Property schema As %String(MAXLEN = 128) [ Private, SqlColumnNumber = 22 ];

/// Name of the extent that projected this table
Property extentname As %String(MAXLEN = 128) [ Internal, Private, SqlColumnNumber = 23, SqlComputeCode = { Set {extentname}=$ListGet($Get(^rINDEXSQL("rv",$zcvt({schema},"U"),$zcvt({tabname},"U"))),2)}, SqlComputed, Transient ];

/// Table type:
/// 	'U' = User table
/// 	'V' = View
/// 	'S' = System Table
Property tabtypeinternal As %String(MAXLEN = 1) [ Private, SqlColumnNumber = 24, SqlFieldName = tabtype_internal ];

}
