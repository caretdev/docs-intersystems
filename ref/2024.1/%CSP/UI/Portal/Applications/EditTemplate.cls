/// System Management Portal - System Administration - Edit Application Template
Class %CSP.UI.Portal.Applications.EditTemplate Extends %CSP.UI.Portal.Template [ Abstract, System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property ApplicationType As %Integer;

Property EditHeader As %String;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsNewSave As %Integer(ZENURL = "new");

Property NumTabs As %Integer [ InitialExpression = 3 ];

Property RolesHeader As %String;

XData SVGStyle
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// Returning from file select and setting the value into the appropriate field.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doBrowse(fieldID, wildcard, onlyDir) [ Language = javascript ]
{
}

}
