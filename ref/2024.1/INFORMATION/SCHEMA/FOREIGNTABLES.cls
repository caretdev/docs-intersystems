/// This table has one row for each Foreign Table the users is privileged for in the current namespace
Class INFORMATION.SCHEMA.FOREIGNTABLES Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = FOREIGN_TABLES, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SERVERSCHEMA As %String(COLLATION = "UPPER", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = SERVER_SCHEMA ];

Property SERVERNAME As %String(COLLATION = "UPPER", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = SERVER_NAME ];

Property FullTableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];

/// Name of schema that contains the foreign server for this table
Property ServerSchemaId As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];

/// Name of the foreign server for this table.
Property ServerNameId As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];

/// Name of schema that contains the foreign table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = TABLE_SCHEMA ];

/// Name of the foreign table.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = TABLE_NAME ];

/// Name of the class that projects this foreign table
Property ClassName As %String(MAXLEN = 256) [ Required, SqlColumnNumber = 7, SqlFieldName = CLASSNAME ];

Property ParameterString As %String(MAXLEN = 3200) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { new p,l  set (l,p)=""  for { set p = $$$defMemberNext({CLASSNAME},$$$cCLASSparameter,p)  quit:p=""  continue:(p="USING")||(p="NUMFIELDS")||(p="PREDICATEPUSHDOWN")||(p="SERVER")  set l = l _ ", " _ p _ "=""" _ $$$defMemberKeyGet({CLASSNAME},$$$cCLASSparameter,p,$$$cPARAMdefault) _ """" }  set {*} = $e(l,3,*) }, SqlComputed, SqlFieldName = PARAMETERS ];

Property UsingString As %String(MAXLEN = 3200) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*} = $$$defMemberKeyGet({CLASSNAME},$$$cCLASSparameter,"USING",$$$cPARAMdefault) }, SqlComputed, SqlFieldName = USING ];

Property Description As %String(MAXLEN = 256) [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*} = $$$defClassKeyGet({CLASSNAME},$$$cCLASSdescription)}, SqlComputed, SqlFieldName = DESCRIPTION ];

Property Owner As %String(MAXLEN = 256) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = { set {*} = $$$defClassKeyGet({CLASSNAME},$$$cCLASSowner)}, SqlComputed, SqlFieldName = OWNER ];

}
