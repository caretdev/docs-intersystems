/// Template for System Management Portal (used by System Operation, System Explorer, System Administration).
Class %CSP.UI.Portal.Template Extends %CSP.Portal.Template [ Abstract, System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter EMSSERVICE As STRING;

Parameter PAGENAME = "System Management Portal Template";

Parameter PARENTPAGE As STRING = "/csp/sys/%CSP.Portal.Home.zen";

/// Each SMP page should set this link which points to the documentation anchor name.
Parameter HELPADDRESS As STRING;

/// This property overrides %CSP.Portal.Template to use parameter HELPADDRESS that every SMP pages has.
Property HelpAddress As %ZEN.Datatype.string [ InitialExpression = {..#HELPADDRESS} ];

/// Keeps track of the first form field that failed during validation.
Property FirstFailed As %String;

/// Set to 1 in %OnAfterCreatePage if a URI parameter is invalid. Used to disable command buttons in onloadHandler().
Property InvalidParam As %Boolean [ InitialExpression = 0 ];

/// If set to 1 then the generic Save and Cancel button will be shown on the ribbon bar.
Property IsEditForm As %Boolean [ InitialExpression = 0 ];

/// 1 if we are on an EMS manager and viewing group data or on a managed instance, 0 otherwise.
/// Property IsEMSReadOnly As %Boolean [ InitialExpression = {##class(%SYS.EMS).IsReadOnly($classname())} ];
Property IsEMSReadOnly As %Boolean [ InitialExpression = 0 ];

/// Keeps track of currently disabled buttons' onclick events.
Property OnclickArray As %ArrayOfDataTypes;

/// Parent URL that Cancel and Save should return to
Property ParentURL As %String [ InitialExpression = {..Link($ZCVT(..#PARENTPAGE,"O","URL"))} ];

/// ID for edit.
Property PID As %String(ZENURL = "PID");

Property ValidationErrorMsg As %String [ InitialExpression = {$$$Text("There was a problem with the form. See the highlighted fields below.")} ];

XData Style
{
}

/// This method is used by SMP to return home page. Set home to %session if not null for later use.
ClassMethod %GetHomePage() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
/// Subclasses with extra layers of locator links or other than "Configuration" please override.
Method %GetLocatorLinks(Output pLink) As %Status
{
}

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// trim space from both outside and inside a string of a passed in zen property
/// and then set back into the zen property
ClientMethod trimSpace(zenProp) [ Language = javascript ]
{
}

/// This method can be called by the doSave() function to handle what the ZenMethod of server Save returned.
/// The method expects a proxy object to be passed.
/// result.ok = 1 indicates save is successful. result.Message is a message (not an error message) that should be displayed.
/// result.ok = 0 indicates save has failed. result.ErrorMessage should be displayed.
/// If result.ok = 1 and result.Message is null then the edit form is closed and the ParentURL is displayed.
ClientMethod afterSave(result As %ZEN.proxyObject) [ Language = javascript ]
{
}

/// This method can be called after validation (where validateRequired has failed) fails.
/// Display standard error message and set focus to the FirstFailed field.
ClientMethod afterValidate() [ Language = javascript ]
{
}

/// This method resets the modified indicator and return user to the parent page.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// This method is called when a field is modified. setModified(true) will cause the modified indicator (a star) to show next to the page name.
ClientMethod doModified() [ Language = javascript ]
{
}

/// This method returns true if a ribbon button is disabled; false otherwise.
ClientMethod isButtonDisabled(buttonName) [ Language = javascript ]
{
}

/// Clear message from idRespond html (usually placed above the editing portion of the page, but could be anywhere).
ClientMethod resetMsg() [ Language = javascript ]
{
}

/// Display message in idRespond html (usually placed above the editing portion of the page, but could be anywhere).
/// isErr: if 1 is passed in then the color will be changed to red;
///        If 0 is passed in then the color is changed to #4D3926;
/// 	   If 2 is passed in then the color is changed to green, i.e. success
///        If nothing is passed in, then the color is unchanged. This allows developers to set their own style/class and still be able to use showMsg.
ClientMethod showMsg(msg, isErr) [ Language = javascript ]
{
}

/// Validate the control value. pass is either "true" or "false" indicating if there is already a field that failed validation.
/// Type is "N" for numeric or "S" for string. If numeric, if checkRange is true, we additionally validate that the number is
/// between minVal and maxVal, inclusive.
ClientMethod validateRequired(ctl, pass, type, checkRange, minVal, maxVal) As %Boolean [ Language = javascript ]
{
}

/// Get the (localized) title string for the page.
/// Subclass can override.
Method %OnGetTitle() As %String
{
}

/// Disable save button for EMS-managed pages.
/// Be sure to use this.invokeSuper('onloadHandler',arguments); when overriding.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Be sure to do ##super() when overriding.
Method %OnAfterCreatePage() As %Status
{
}

}
