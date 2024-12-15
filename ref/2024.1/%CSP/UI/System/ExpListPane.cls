/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Generic Pane for Displaying Explorer List.
Class %CSP.UI.System.ExpListPane Extends %CSP.Util.TablePane [ System = 4 ]
{

Parameter HIDEFILTERWHENEMPTY = 0;

/// Return (localized) text message displayed near top of page.
/// Ignore value in CSP file
Method GetDescriptiveText()
{
}

/// This callback draws the search mask within the filter box.
Method OnDrawFilter(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// User clicked a routine extention link. Set the selected value into search mask and submit.
/// Similar function exists in %CSP.Util.ExpPane for Export/Delete/Find.
/// Get Explorer Parameters Saved
ClassMethod GetExpParameters(ByRef Type As %String, ByRef MaxResults As %Integer, ByRef Spec As %String, ByRef OrderBy As %Integer, ByRef Dir As %Integer)
{
}

/// This method returns the page type based on PageName
Method GetPageType() As %String
{
}

/// Return pattern default for each type
ClassMethod TypeDefault() As %String
{
}

/// This method performs the actual execution of the ResultSet
/// This can be overridden by subclasses
Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

/// This method creates the %ResultSet object
/// that is used for the table pane.<br>
/// A subclass can override this to customize the
/// table displayed by this pane.<br>
/// <var>pID</var> is array of page variables...
Method CreateResultSet(ByRef pID As %String, ByRef pRS As %ResultSet) As %Status
{
}

/// Draw the BODY of the detail pane
/// The only difference is the comment at the end for legacy backup routines.
Method DrawBODY(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Called from client to update MaxRows
ClassMethod MaxRowsUpdate(MaxRows As %Integer)
{
}

}
