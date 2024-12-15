Class %iKnow.UI.Dialog.CreateUserDictionaryEntry Extends %CSP.UI.Portal.Dialog.WizardTemplate [ Deprecated, System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter AUTONS As BOOLEAN = 1;

Parameter DOMAIN = "%iKnow";

/// Security requirement
Parameter RESOURCE = "%Development";

/// DOCBOOK Topic Id that offers help for this page.
Parameter HELPID As STRING;

Property dictionary As %ZEN.Datatype.string(ZENURL = "DIC");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawDictionary(pSeed As %String = ":t") As %Status
{
}

ClientMethod addRowClient() [ Language = javascript ]
{
}

Method AddRow(pString, pAction, pValue, pMeta = "") As %Status [ ZenMethod ]
{
}

ClientMethod removeRowClient(index) [ Language = javascript ]
{
}

Method RemoveRow(pIndex As %Integer) As %Status [ ZenMethod ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Show definition based on type
/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

}
