/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines an action for a CSP Utility page.
Class %CSP.Util.Action Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// When used as a menu, this is the menu caption.<br>
/// This is a localizable value.
Property Caption As %String(MAXLEN = 100);

/// When appropriate, popup help for this action.<br>
/// This is a localizable value.
Property Popup As %String(MAXLEN = 100);

/// If present, then display this as a confirmation message for the action.
Property Confirm As %String(MAXLEN = 500);

/// Name of page to go to.
Property HREF As %String(MAXLEN = 128, XMLNAME = "href", XMLPROJECTION = "attribute");

/// What type of Action is this:<br>
/// link: link to another page (default).<br>
/// popup: launch a popup window.<br>
/// help: launch a documentation window. ID1 will be DocBook ID.<br>
Property Type As %String(VALUELIST = ",link,popup,help", XMLNAME = "type", XMLPROJECTION = "attribute");

/// If set, the name of the frame affected by the action
Property TargetFrame As %String(MAXLEN = 50, XMLNAME = "targetFrame", XMLPROJECTION = "attribute");

/// An array (subscripted by contiguous integer values) of ID values for this
/// action. These values are used to specify a specific instance of page to display. <br>
/// This value is either a literal or the name of column in the current query enclosed
/// within { } (e.g., {Name} ).
Property IDValues As %String [ MultiDimensional ];

/// A comma-separated list of all the IDValues in one list; this is used only by XML import/export.
Property IDExprList As %String(MAXLEN = 500, XMLNAME = "IDValues");

/// If true the values will be encrypted before they are added to the link
Property Encrypted As %Boolean(XMLNAME = "encrypted", XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// (Optional) A COS expression that must evaluate true in order to use this link
Property Condition As %String(MAXLEN = 255, XMLNAME = "condition", XMLPROJECTION = "attribute");

Method IDExprListGet() As %String
{
}

Method IDExprListSet(val As %String) As %Status
{
}

/// Evaluate the current value of the IDValues
/// associated with this Action.
/// IDValues are either literals,
/// or expressions referring to page properties: {$ID1}
Method GetIDValues(ByRef ids As %String)
{
}

/// Utility method to generate code for this object
Method GenerateCode() As %String
{
}

}
