Class %Library.ObjectJournalRecord Extends %Persistent [ Final, System = 4 ]
{

Parameter READONLY = 1;

Property JrnId As %Integer;

Property ObjectId As %String;

Property Extent As %String;

/// The filing operation - 0 = UPDATE, 1 = INSERT, 2 = DELETE
Property FilingType As %Integer;

Property SystemId As %String;

Property NamespaceId As %String;

Property OriginSystemId As %String;

Property OriginNamespaceId As %String;

Property SysTranId As %SYS.Journal.Transaction;

Property ObjectGUID As %String;

Relationship Transaction As %Library.ObjectJournalTransaction [ Cardinality = parent, Inverse = Records, SqlFieldName = Tran ];

Property JournalPtr As %Integer;

Property ChangedProperties As %List;

Property Filter As %String(MAXLEN = 32000);

/// OpenObjectVersion()
/// 		This method returns a reference to an object that is an instance of the same class
/// 		as the object that was journalled by this ObjectJournalRecord. The referenced object
/// 		does not have an ID assigned but all property values are the same as the journalled
/// 		object's property values at the time of this filing activity.
///
/// 		This method returns a null reference if the filing action is a DELETE or if the
/// 		system journal is not available for this filing activity. Also, for classes using
/// 		OBJJOURNAL = 2 a null reference is returned.
Method OpenObjectVersion(ByRef status As %Library.Status) As %Library.ObjectHandle
{
}

ClassMethod OpenObjectByTime(pGUID As %String = "", pSyncTime As %Integer = "", ByRef pStatus As %Library.Status) As %Library.ObjectHandle
{
}

}
