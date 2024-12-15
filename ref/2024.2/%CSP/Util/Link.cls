/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines a link to a CSP Utility page
Class %CSP.Util.Link Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

/// The displayed value for this link.<BR>
/// This is a localizable value.
Property Caption As %String(MAXLEN = 50);

/// When appropriate, popup help for this link.<BR>
/// This is a localizable value.
Property Popup As %String(MAXLEN = 100);

/// Name of page to go to.
Property HREF As %String(MAXLEN = 128);

/// ID Value for the link
Property IDValues As %String [ MultiDimensional ];

}
