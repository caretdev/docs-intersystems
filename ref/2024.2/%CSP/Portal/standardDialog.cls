/// Base class for  Management Portal dialogs.
Class %CSP.Portal.standardDialog Extends %ZEN.Dialog.standardDialog [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Parameter APPLYBUTTON = 1;

Parameter EMSSERVICE As STRING;

Parameter USESESSIONLANG As BOOLEAN = 1;

/// Allow pages to have iframes by not setting x-frame-options: same origin.
/// Set default for Management Portal as iframes are not allowed.
Parameter IFRAMEALLOWED As BOOLEAN = 0;

/// 1 if we are on an EMS manager and viewing group data or on a managed instance, 0 otherwise.
/// Property IsEMSReadOnly As %Boolean [ InitialExpression = {##class(%SYS.EMS).IsReadOnly($classname())} ];
Property IsEMSReadOnly As %Boolean [ InitialExpression = 0 ];

/// Set to 1 in %OnAfterCreatePage if a URI parameter is invalid. Used to disable command buttons in onloadHandler().
Property InvalidParam As %Boolean [ InitialExpression = 0 ];

/// Keeps track of the first form field that failed during validation.
Property FirstFailed As %String;

Property ValidationErrorMsg As %String [ InitialExpression = {$$$Text("There was a problem with the form. See the highlighted fields below.")} ];

XData Style
{
}

/// Return tmsg. 1 means success. Otherwise error message in HTML.
ClassMethod EvalResult(pSC) As %String
{
}

/// Clear message from idRespond html (usually placed above the editing portion of the page, but could be anywhere).
ClientMethod resetMsg() [ Language = javascript ]
{
}

/// Display message in idRespond html (usually placed above the editing portion of the page, but could be anywhere).
/// isErr: if 1 is passed in then the color will be changed to red;
///        If 0 is passed in then the color is changed to #4D3926;
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Be sure to do ##super() when overriding.
Method %OnAfterCreatePage() As %Status
{
}

/// Provide HTML for html title box.<br>
/// Default implementation displays the standard Zen title bar.
Method %DrawTitle(pSeed As %String) As %Status
{
}

}
