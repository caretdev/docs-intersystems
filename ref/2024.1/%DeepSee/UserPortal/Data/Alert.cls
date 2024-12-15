/// Each instance of this class represents an alert within the DeepSee User Portal.
Class %DeepSee.UserPortal.Data.Alert Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// Time when alert was created.
Property createDate As %TimeStamp(XMLPROJECTION = "attribute") [ InitialExpression = {$ZDT($H,3)} ];

/// User ID of user that sent this alert.
Property senderId As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// User ID of receipient of this alert.
Property userId As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// Subject line for this alert.
Property subject As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// Additional comments for this alert.
Property comments As %String(MAXLEN = 5000, XMLPROJECTION = "attribute");

/// True if this alert has not been reviewed yet.
Property isNew As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// ID of folder item to display for this alert.
Property dataId As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// Priority of this alert (null is medium).
Property priority As %String(MAXLEN = 200, VALUELIST = ",low,high", XMLPROJECTION = "attribute");

}
