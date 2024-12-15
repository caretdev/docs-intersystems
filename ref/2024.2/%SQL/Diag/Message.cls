Class %SQL.Diag.Message Extends %Library.Persistent [ Final, StorageStrategy = diagStorage, System = 4 ]
{

Parameter USEEXTENTSET = 1;

Parameter DEFAULTGLOBAL = "^IRIS.sql.diag.message";

Parameter SQLPUBLICSECURITY = "{""Message"":""S,D""}";

Property diagResult As %SQL.Diag.Result [ Required ];

Property messageTime As %Library.PosixTime [ ReadOnly, SqlComputeCode = { set {*}=##class(%PosixTime).CurrentUTCTimeStamp()}, SqlComputed, SqlComputeOnChange = %%INSERT ];

/// actor is the name of the entity reporting the message
Property actor As %String;

Property sqlcode As %Library.Integer;

Property message As %Library.String(MAXLEN = "");

Property severity As %Library.EnumString(DISPLAYLIST = ", completed,info,warning,error,abort", VALUELIST = ",0,1,2,3,4");

/// Description
}
