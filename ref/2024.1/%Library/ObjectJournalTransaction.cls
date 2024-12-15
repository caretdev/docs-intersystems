Class %Library.ObjectJournalTransaction Extends %Persistent [ Final, System = 4 ]
{

Parameter READONLY = 1;

Relationship Records As %Library.ObjectJournalRecord [ Cardinality = children, Inverse = Transaction ];

Property TranId As %Integer;

Property SysTranId As %SYS.Journal.Transaction;

Property ChangedProperties As %List;

///  This method removes entries from the object journal up to minValue (exclusive)
ClassMethod PurgeUpToTxn(minValue As %Integer) As %Status
{
}

Method AddJrnTranToSyncSet(objSyncSet As %ObjectHandle, lExclude As %List) As %Status
{
}

}
