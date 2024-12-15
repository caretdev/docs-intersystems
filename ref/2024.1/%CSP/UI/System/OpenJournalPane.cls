/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane is used to display system journal file contents
Class %CSP.UI.System.OpenJournalPane Extends %CSP.Util.Pane [ System = 4 ]
{

Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Returns whether current user's base permissions allow access to given database (directory)
ClassMethod HasDBPermission(tDB As %String) As %Boolean
{
}

/// Called by client to show details for a journal record
ClassMethod ShowRecordDetails(pFile As %String, pOffset As %Integer)
{
}

/// Given a journal file name, Draw an HTML profile of the contents
/// of the journal.
ClassMethod DrawJournalProfile(pClear As %Boolean, pFile As %String, pSortBy As %String = "", pMode As %Integer = 0) As %Status
{
}

/// Called from client to update the profile page
ClassMethod RefreshProfile(pClear As %Boolean, pFile As %String, pSortBy As %String = "")
{
}

/// Called from client to stop a profile calculation.
ClassMethod CancelProfile(pFile As %String)
{
}

/// Given a journal file name, build a profile of the contents
/// of the journal within a temp global. This takes the form:<br/>
/// ^IRIS.Temp.JournalProfile(pFile) = status: 0 running, 1 complete<br/>
/// ^IRIS.Temp.JournalProfile(pFile,"ERROR") = error (if any)<br/>
/// ^IRIS.Temp.JournalProfile(pFile,"PROFILE",database,global) = size of records for this db.global<br>
/// ^IRIS.Temp.JournalProfile(pFile,"PROFILE","OTHER") = size of other records<br>
ClassMethod ComputeJournalProfileOld(pFile As %String)
{
}

/// Given a journal file name, build a profile of the contents
/// of the journal within a temp global. This takes the form:<br/>
/// ^IRIS.Temp.JournalProfile(pFile) = status: 0 running, 1 complete<br/>
/// ^IRIS.Temp.JournalProfile(pFile,"ERROR") = error (if any)<br/>
/// ^IRIS.Temp.JournalProfile(pFile,"PROFILE",database,global) = size of records for this db.global<br>
/// ^IRIS.Temp.JournalProfile(pFile,"PROFILE","OTHER") = size of other records<br>
ClassMethod ComputeJournalProfile(pFile As %String)
{
}

/// Given a journal file name, build a profile of the contents
/// of the journal. This takes the form:<br/>
/// pProfile(database,global) = size of records for this db.global<br>
/// pProfile("OTHER") = size of other records<br>
ClassMethod GetJournalProfile(pFile As %String, Output pProfile, pClear As %Boolean = 0) As %Status
{
}

}
