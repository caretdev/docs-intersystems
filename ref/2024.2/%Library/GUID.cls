/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.GUID">Using Object Synchronization</a>.</p>
/// This class implements utility methods for GUIDs.
Class %Library.GUID [ Abstract, System = 3 ]
{

Parameter GUIDENABLED = 1;

/// This method should be implemented by the user. This method is invoked by %SYNC.SyncSet.AddJournaledObject when the Filter is not null.
/// Non zero return value  means that the object should be excluded
///
ClassMethod Filter(guid As %String, FilterObject As %RegisteredObject = "", trn As %Integer) As %Integer
{
}

ClassMethod %GUIDFind(guid As %String) As %RawString [ CodeMode = expression ]
{
}

ClassMethod %GUIDGetNextOp(guid As %String, ByRef num As %String) As %RawString
{
}

ClassMethod %GUIDGetLastOp(guid As %String, ByRef num As %String) As %RawString
{
}

/// This method will assign a GUID to all objects that don't already have one.
ClassMethod AssignGUID(class As %String, nOutput As %Integer = 0) As %Status
{
}

/// %FindGUID() attempts to locate the GUID of object for which we do not know the most specific type class.
/// This can happen when resolving the ID for an object that has been deleted, as sometimes occurs when dealing with
/// objects retrieved from the system journal for the purpose of synchronizing with another system.
///
/// This method assumes that the normal GUID resolution has failed and that if another object of a different MSTC exists within
/// the same root extent then it is the same object (same GUID). For example, class A is persistent and it has two sub classes - B and C.
/// An instance of B is created and assigned a GUID. At some future time, that instance of B is deleted and recreated as an instance of C using
/// the same ID value. The premise of %FindGUID is that the object having an OID of (id,"B") is the same object as that with an OID of (id,"C").
ClassMethod %FindGUID(pClassName As %String(MAXLEN=""), pID As %Binary) As %String
{
}

}
