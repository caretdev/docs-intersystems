/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Pane for Databases
Class %CSP.UI.System.JournalPane Extends %CSP.Util.TablePane [ System = 4 ]
{

/// This method creates the %ResultSet object
/// that is used for the table pane.<br>
/// A subclass can override this to customize the
/// table displayed by this pane.<br>
/// <var>pID</var> is array of page variables...
Method CreateResultSet(ByRef pID As %String, ByRef pRS As %ResultSet) As %Status
{
}

/// Show Last Update box
Method DrawLastUpdate()
{
}

/// Draw Mirrored choices for primary and backup failover members, for this pane below the tTitle and above the table.
Method DrawChoices()
{
}

}
