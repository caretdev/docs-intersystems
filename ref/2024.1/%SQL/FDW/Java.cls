Class %SQL.FDW.Java Extends %SQL.FDW.Abstract [ System = 4 ]
{

/// Object representing instance of a specific connection to the external language server
Property Gateway As %External.Gateway;

/// Class in the Foreign Table package
Parameter JAVACLASS;

Property ReaderObject As %Net.Remote.Object;

/// Left in for Fetch(), which isn't how we codegen FT TVFs anyway
Property Ptr As %Integer;

Method %OnNew() As %Status
{
}

/// Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the
/// result set.. An optional argument contains a <class>%Library.Status</class> value on return. This %Status value
/// indicates success or failure of the %Next call. <property>%SQLCODE</property> is also set by %Next.
Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer
{
}

Method Reset() As %Status
{
}

/// Prepare the query for execute; since this is a Java FDW, that means opening the java gateway connection and getting an object to execute with
Method Prepare(Server As %String, FTClassName As %String, Query As %String, Parameters As %List = "") As %Status
{
}

/// Execute the query. For Java FDWs, this blends with the Prepare()
Method Execute(Parameters As %List = "") As %Status
{
}

/// Creates an object of the class containing the functionality needed to access an external source. For now,
/// these will be Java objects (to read CSV/external DBs through JDBC).
/// 1) Create request string, which is used by the external code to connect to the relevant external
/// source.
/// 2) Instantiate the object, store it in ReaderObject property
/// Called by %SQL.FDW.Common:Execute()
Method CreateReaderObject(Server As %String, FTClassName As %String) As %Status
{
}

/// Build and return request string used by Reader code for connecting to a database.
/// For a file, Server host = abs. path to directory, Table = filename+extension, port & user & pass are all N/A
Method GetRequestObject(Server As %String, FTClassName As %String) As %DynamicObject
{
}

Method GetSQLMetaData(Output metadata) As %Status
{
}

}
