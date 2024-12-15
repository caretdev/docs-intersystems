/// %CSP.UI.Component.remoteDatabaseSelect <br>
/// For use on the SMP Remote Database dialog. <br>
/// Extends dataCombo, adding a callback that disables the component <br>
/// and displays a message if the query resturned no results <br>
/// (i.e. a connection to the remote server could not be established.)
Class %CSP.UI.Component.remoteDatabaseSelect Extends %ZEN.Component.dataCombo [ System = 3 ]
{

Method LoadDropDownContents(searchParm As %String, cached As %Boolean = 0) [ Internal, ZenMethod ]
{
}

Method DisableIfNotConnected() [ Internal ]
{
}

}
