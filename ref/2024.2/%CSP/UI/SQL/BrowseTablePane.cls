/// Customized TablePane for browsing SQL tables. Added textbox to allow user to enter maximum number of rows to load for Open Table
Class %CSP.UI.SQL.BrowseTablePane Extends %CSP.Util.TablePane [ System = 4 ]
{

/// display filter box when there are no results so that user can adjust their mask for tables.
Parameter HIDEFILTERWHENEMPTY = 0;

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// This callback draws the search mask within the filter box.
Method OnDrawFilter(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// This method returns the page type based on PageName
Method GetPageType() As %String
{
}

/// This method performs the actual execution of the ResultSet
/// pID(3) is the searchMask from user clicking the "Go" rather than user clicking a schema which sets $ID(2).
/// If it is from Go then it is possible user removed the mask then default to "*".
/// Otherwise retain the last mask.
Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

/// Generic Method being called from the Routine panes to return search mask.
ClassMethod GetSearchMask() As %String
{
}

/// Called from client to update OpenTableMaxRows
ClassMethod OpenTableMaxRowsUpdate(OpenTableMaxRows As %Integer)
{
}

/// Returns default OpenTableMaxRows value.
ClassMethod GetOpenTableMaxRows() As %Integer
{
}

}
