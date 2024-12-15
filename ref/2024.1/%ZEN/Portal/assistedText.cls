Class %ZEN.Portal.assistedText Extends %ZEN.Component.control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "assistedText";

/// Comma-separated list of additional JS include files for the page.
Parameter INCLUDEFILES As STRING = "zenCSLM.js";

/// Specify the type of the control, it accepts 3 formats:
///   classname            - use build in assist for classname
///   property:<classname> - use build in assist for property names with the top level context class being <classname>
///   custom               - this is default, the control calls onUpdateDataClient to populate the selector control
Property controlType As %ZEN.Datatype.string [ InitialExpression = "custom" ];

/// When controlType is custom, this is the client method to call to get data to populate the selector control
/// The format of this attribute is "zenPage.<client_method_name>(base);"
/// The client method takes one argument that is the base text. The base text is either empty string or it ends with the trigger character.
/// The return value is a single-character delimited list with the delimiter character as the first character.
Property onUpdateDataClient As %ZEN.Datatype.eventHandler;

/// This property has been deprecated. Please use onUpdateDataClient instead.
Property OnUpdateDataServer As %ZEN.Datatype.delegator(FORMALSPEC = "pBase:%String", RETURNTYPE = "%String");

/// list of characters that triggers the calls to update data.
/// When controlType is either classname or property, triggerChars is ignored. It is assumed to be the dot character.
Property triggerChars As %ZEN.Datatype.string [ InitialExpression = "." ];

/// Internally used to store the data separator character.
Property separator As %ZEN.Datatype.string [ InitialExpression = ",", Private ];

/// The size (number of lines) of the drop-down area for this assistedText control.
Property listSize As %ZEN.Datatype.integer(MINVAL = 0) [ InitialExpression = 5 ];

/// This property is obsolete. Please use controlStyle to set width
/// The width of the control, must end in a unit, i.e. 100px or 30%
Property controlWidth As %ZEN.Datatype.string;

/// When isSuggestedDataComplete is false, it indicates the string list returned by update data callbacks are partial strings
/// and they are to be appended to the original base string to be used as suggested text.
/// When isSuggestedDataComplete is true, it indicates the string list returned by update data callbacks are complete strings
/// and they do not need to be appended to the original base string.
/// When controlType is either classname or property, isSuggestedDataComplete is ignored. It is assumed to be false.
Property isSuggestedDataComplete As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// This property is obsolete. We do not display ghost text anymore.
Property hideGhost As %ZEN.Datatype.boolean;

/// The placeholder attribute specifies a short hint that describes the expected value of an input field
/// (e.g. a sample value or a short description of the expected format).
/// The hint is displayed in the input field when it is empty.
Property placeholder As %ZEN.Datatype.string;

XData Style
{
}

/// Draw content of control.
Method %DrawHTML()
{
}

/// client-side initialization for this object.<br>
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

ClientMethod selectorChanged() [ Language = javascript ]
{
}

ClientMethod selectorGotFocus() [ Language = javascript ]
{
}

ClientMethod selectorDblClicked() [ Language = javascript ]
{
}

ClientMethod controlGotFocus() [ Language = javascript ]
{
}

ClientMethod controlOnBlur(event) [ Language = javascript ]
{
}

ClientMethod deferredLostFocus() [ Language = javascript ]
{
}

ClientMethod controlClicked() [ Language = javascript ]
{
}

ClientMethod controlKeyPressed(event) [ Language = javascript ]
{
}

ClientMethod deferredSaveCurrentTextValue(keyCode) [ Language = javascript ]
{
}

ClientMethod deferredEscapeAction() [ Language = javascript ]
{
}

ClientMethod doAction(skipModifiedCheck) [ Language = javascript ]
{
}

ClientMethod deferredComboUpdate() [ Language = javascript ]
{
}

ClientMethod updateData(base) [ Language = javascript ]
{
}

ClassMethod ServerGetClassPackageList(pBase As %String) As %String [ ZenMethod ]
{
}

ClassMethod ServerGetPropertyList(pBase As %String, pClassname As %String) As %String [ ZenMethod ]
{
}

ClientMethod setComboOptions(combo, options, insertBlank) [ Language = javascript ]
{
}

ClientMethod getSelection(ctrl) [ Language = javascript ]
{
}

ClientMethod setSelection(ctrl, pos1, pos2) [ Language = javascript ]
{
}

ClientMethod setSelectorStyle() [ Language = javascript ]
{
}

}
