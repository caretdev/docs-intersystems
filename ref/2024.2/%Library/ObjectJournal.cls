Class %Library.ObjectJournal Extends %Persistent [ Final, System = 3 ]
{

Property JournalPtr As %Integer;

Property TranId As %Integer;

Property ObjectType As %String;

Property ObjectIdentity As %String;

Property JournalType As %Integer;

ClassMethod AddJrnRecToSyncSet(objSyncSet As %SYNC.SyncSet, iTranPtr As %Integer = 0, iObjPtr As %Integer = 0, srcSystem As %String, srcNS As %String, changed As %List = "", originSystem As %String = "", originNS As %String = "") As %Integer
{
}

ClassMethod PropertyValuesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = PropertyValuesExecute ]
{
}

ClassMethod PropertyValuesExecute(ByRef qHandle As %Binary, iTranPtr As %Integer = 0, iJrnPtr As %Integer = 0) As %Status
{
}

ClassMethod PropertyValuesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = PropertyValuesExecute ]
{
}

}
