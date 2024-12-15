/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Base class for popup windows based on an AutoPage pane.
Class %CSP.Util.AutoPagePopup Extends %CSP.Util.AutoPage [ System = 4 ]
{

/// Name of the external style sheet file
Parameter STYLESHEET = "intersystems.css";

Parameter PAGENAME = "InterSystems Popup";

/// Override default behavior
/// Draw an outer page with an <iframe> containing the
/// Detail pane
ClassMethod DrawBODY(pInstance As PageInstance)
{
}

/// Define buttons displayed in footer bar
ClassMethod OnDefineButtons(ByRef pButtons As %CSP.Util.FormButton)
{
}

}
