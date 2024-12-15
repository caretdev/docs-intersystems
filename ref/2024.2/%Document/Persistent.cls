Class %Document.Persistent Extends %Persistent [ Abstract, NoExtent, PropertyClass = %Document.Property, StorageStrategy = EDoc, System = 3 ]
{

Property %Document As %Document.Object;

Method %DocumentGetObject(force As %Integer = 0) As %Library.ObjectIdentity
{
}

Method %DocumentGetObjectId(force As %Integer = 0) As %Library.String
{
}

ClassMethod %Get(id As %Integer = "", pDocument As %Binary = "", pFieldExpr As %String(MAXLEN="") = "") As %Binary [ CodeMode = generator, SqlName = Get, SqlProc ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
/// If instead of returning a %Status code this returns an oref and this oref is a subclass of the current
/// class then this oref will be the one returned to the caller of %New method.
Method %OnNew(pDocument As %String(MAXLEN="") = "") As %Status [ Private, ServerOnly = 1 ]
{
}

}
