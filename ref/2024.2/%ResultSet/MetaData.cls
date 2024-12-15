/// <p>
/// 	<b>This class has been superseded.</b> It will remain for compatibility with existing code and samples.
/// 	We recommend using <class>%SQL.Statement</class>.
/// </p>
/// 	<p>
/// 	</p>
Class %ResultSet.MetaData Extends %RegisteredObject [ System = 2 ]
{

/// The number of columns defined as SQLRESULTCOL that are returned by executing this statement.
/// This is the same as columns.Count().
Property columnCount As %Integer;

Property columns As list Of %ResultSet.MD.Column;

Property columnIndex As %String(MAXLEN = "") [ MultiDimensional ];

Property parameters As list Of %ResultSet.MD.Parameter;

Property objects As list Of %ResultSet.MD.ObjectId;

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
///
/// %ResultSet.MetaData is a metadata class for result set metadata. The initial value is the metadata from a result set object
/// or it is the result set object itself.
Method %OnNew(initvalue As %RawString = "", pParameters As %RawString = "", pObjects As %RawString = "") As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method print() As %Status
{
}

Method printMetaData(pMetadata As %RawString) As %Status
{
}

/// Display metadata on the current device.
Method %Display() As %Status
{
}

Method GenerateRowType() As %Library.String(MAXLEN="") [ Internal, ServerOnly = 1 ]
{
}

}
