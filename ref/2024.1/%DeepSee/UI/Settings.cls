/// DeepSee Settings page.
///
Class %DeepSee.UI.Settings Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Property currSetting As %Integer;

Property currIcon As %Integer;

Parameter PAGENAME = "Settings";

Parameter RESOURCE = "%DeepSee_Admin,%Development";

Parameter DOCBOOKID = "D2GS_uis_settings";

Property btnNew As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("New")} ];

Property btnApply As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Apply")} ];

Property btnRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove")} ];

XData Style
{
}

/// This XML defines the contents of the contents pane for this page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get the (localized) name of the page.
Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// Save settings.
ClientMethod saveSettings() [ Language = javascript ]
{
}

/// Save settings to the settings global.
ClassMethod SaveToServer(pData As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Create list of worklist option controls.
Method %CreateOptions(pPage As %String, pWorklist As %Integer, pGroup As %ZEN.Component.group, ByRef pOptions) As %Status
{
}

/// Click on worklist option.
ClientMethod optionChange(page, worklist, n, cls, value) [ Language = javascript ]
{
}

/// Click on worklist option.
ClassMethod SetOption(pPage As %String, pWorklist As %String, pClass As %String, pNum As %Integer, pValue As %Boolean) [ ZenMethod ]
{
}

/// Click on custom option.
ClientMethod customChange(value) [ Language = javascript ]
{
}

/// Set custom worklist option.
ClassMethod SetCustom(pValue As %Boolean) [ ZenMethod ]
{
}

/// Return the current user icons for the JSON provider.<br/>
Method GetUserIcons(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Return the current user settings for the JSON provider.<br/>
Method GetUserSettings(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Draw list of user icons.
ClientMethod renderIconList() [ Language = javascript ]
{
}

/// Draw list of user settings.
ClientMethod renderSettings() [ Language = javascript ]
{
}

/// Select an icon.
ClientMethod selectIcon(n) [ Language = javascript ]
{
}

/// Select a setting.
ClientMethod selectSetting(n) [ Language = javascript ]
{
}

/// Add a new user icon.
ClientMethod addIcon() [ Language = javascript ]
{
}

/// Add a new setting.
ClientMethod addSetting() [ Language = javascript ]
{
}

/// Apply current icon.
ClientMethod applyIcon() [ Language = javascript ]
{
}

/// Apply current setting.
ClientMethod applySetting() [ Language = javascript ]
{
}

/// Remove current icon.
ClientMethod removeIcon(idx) [ Language = javascript ]
{
}

/// Remove current setting.
ClientMethod removeSetting(idx) [ Language = javascript ]
{
}

/// Apply a user icon value (if <var>pName</var> is not "").
/// If <var>pOldName</var> is non-"", delete it.
ClassMethod ApplyIconToServer(pName As %String, pPath As %String, pOldName As %String) As %String [ ZenMethod ]
{
}

/// Apply a setting value (if <var>pName</var> is not "").
/// If <var>pOldName</var> is non-"", delete it.
ClassMethod ApplySettingToServer(pName As %String, pValue As %String, pComment As %String, pContext As %String, pOldName As %String) As %String [ ZenMethod ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
