/// This table has one row for each Foreign Server the users is privileged for in the current namespace
Class INFORMATION.SCHEMA.FOREIGNSERVERS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = FOREIGN_SERVERS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property ServerSchema As %String(COLLATION = "UPPER", MAXLEN = 128) [ Required, SqlColumnNumber = 2, SqlFieldName = SERVER_SCHEMA ];

Property ServerName As %String(COLLATION = "UPPER", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = SERVER_NAME ];

Property ServerSchemaId As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 10, SqlFieldName = SERVER_SCHEMA_ID ];

Property ServerNameId As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 11, SqlFieldName = SERVER_NAME_ID ];

Property ClassName As %String(MAXLEN = 256) [ Required, SqlColumnNumber = 4, SqlFieldName = CLASSNAME ];

Property ForeignDataWrapper As %String(MAXLEN = 256) [ Calculated, SqlColumnNumber = 5, SqlComputeCode = { set {*} = $$$FTFDWFromFSClass({CLASSNAME}) }, SqlComputed, SqlFieldName = FOREIGN_DATA_WRAPPER ];

Property ParameterString As %String(MAXLEN = 3200) [ Calculated, SqlColumnNumber = 6, SqlComputeCode = { new p,l  set (l,p)=""  for { set p = $$$defMemberNext({CLASSNAME},$$$cCLASSparameter,p)  quit:p=""  continue:p="FDWNAME"  set l = l _ ", " _ p _ "=""" _ $$$defMemberKeyGet({CLASSNAME},$$$cCLASSparameter,p,$$$cPARAMdefault) _ """" }  set {*} = $e(l,3,*) }, SqlComputed, SqlFieldName = PARAMETERS ];

Property Description As %String(MAXLEN = 256) [ Calculated, SqlColumnNumber = 7, SqlComputeCode = { set {*} = $$$defClassKeyGet({CLASSNAME},$$$cCLASSdescription)}, SqlComputed, SqlFieldName = DESCRIPTION ];

Property Owner As %String(MAXLEN = 256) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*} = $$$defClassKeyGet({CLASSNAME},$$$cCLASSowner)}, SqlComputed, SqlFieldName = OWNER ];

}
