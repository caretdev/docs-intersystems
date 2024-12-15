/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Super class for explorer activity pane
Class %CSP.Util.ExpPane Extends %CSP.Util.Pane [ System = 4 ]
{

Method DrawTable(ByRef pRS As %String)
{
}

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Write common message after action is commited.
ClassMethod DoneMsg(tSC)
{
}

/// Write out error log
Method DrawErrorLog(err)
{
}

Method DrawButtons(ColMax As %Integer)
{
}

/// Return (localized) text message displayed near top of page.
/// Ignore value in CSP file
Method GetDescriptiveText()
{
}

/// This method returns the page type based on PageName
Method GetPageType() As %String
{
}

/// Generic method to draw error message for object status code, copied from %CSP.Util.TablePane
ClassMethod DrawStatusError(tSC As %String)
{
}

ClassMethod SetAlarmTimeout()
{
}

ClassMethod GetAlarmTimeout() As %Integer
{
}

/// Generic Method being called from the Routine panes to return search mask.
ClassMethod GetSearchMask() As %String
{
}

/// Generic Method being called from the Routine panes to write out message for backup routines.
ClassMethod WriteBackupMsg(SEARCHMASK)
{
}

/// Generic Method for Export/Delete/Find/Compile for Classes/Globals/Routines when applicable
/// SEARCHMASK is returned
ClassMethod DrawSearchField(type) As %String
{
}

/// Generic Method - Draws the extention links for routines under the Search text field.
ClassMethod DrawRoutineLinks(type)
{
}

/// Generic Method - This method takes in what user typed in the mask field for ROUTINES and
/// build it into a mask that the query will be able to process.
ClassMethod GetMask(tSpec) As %String
{
}

}
