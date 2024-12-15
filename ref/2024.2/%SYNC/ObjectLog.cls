/// The <CLASS>%SYNC.ObjectLog</CLASS> class is used for retrieval of the collection of
/// <CLASS>%Library.ObjectJournalRecord</CLASS> entries related to a given class instance modifications (
/// the corresponding class should be both GUID enabled and journalled).  The <METHOD>%New</METHOD> method accepts three arguments:
/// the guid, start time and end time.  Only the modifications occured in a specified interval are included in the collection.
///
/// <EXAMPLE>
/// s ol=##class(%SYNC.ObjectLog).<METHOD>%New</METHOD>(guid,startTtransaction,endTransaction)
/// Write ol.log.Size
/// </EXAMPLE>
Class %SYNC.ObjectLog Extends %RegisteredObject [ System = 4 ]
{

Property StartTransaction As %Integer;

Property EndTransaction As %Integer;

Property guid As %String;

Property log As %ListOfObjects;

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
Method %OnNew(guid, StartTransaction, EndTransaction) As %Status [ Private, ProcedureBlock = 1 ]
{
}

}
