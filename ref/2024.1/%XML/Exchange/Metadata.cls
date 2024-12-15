/// Configuration Management Metadata
///
/// Details pertaining to an individual Exchange Item. <br>
/// This class is used to include this information in the XML export.  Across different Exchange Item types the id,
/// code and description may be kept in different tags.  The metadata section provides these details in a consistent manner.
Class %XML.Exchange.Metadata Extends (%RegisteredObject, %XML.Adaptor) [ System = 4 ]
{

Property GUID As %RawString(XMLPROJECTION = "ATTRIBUTE");

Property Id As %String(MAXLEN = "");

Property ClassName As %String(MAXLEN = "");

Property Description As %String(MAXLEN = "");

Property Content As array Of %String(MAXLEN = "", XMLITEMNAME = "Class", XMLKEYNAME = "Version");

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method LoadContent(oref As %RegisteredObject) As %Status [ Private ]
{
}

Method InsertClass(ClassName As %String)
{
}

/// Strip leading '$_Id:' and trailing '$' to avoid RCS keyword expansion when added to Perforce.
Method GetKey(SrcVer As %String) [ CodeMode = expression ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
