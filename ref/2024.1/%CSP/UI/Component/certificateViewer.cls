/// %CSP.UI.Component.certificateViewer
Class %CSP.UI.Component.certificateViewer Extends %ZEN.Component.component [ System = 3 ]
{

/// This is the XML namespace for this component.
Parameter NAMESPACE [ Internal ] = "http://www.intersystems.com/zen";

Property Certificate As %Binary(MAXLEN = "") [ Internal ];

Property SubjectOnly As %Boolean [ InitialExpression = 0, Internal ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML() [ Internal ]
{
}

ClassMethod StringToHex(Input As %String, indent As %Boolean = 0, printH As %Boolean = 1) As %String [ Internal ]
{
}

}
