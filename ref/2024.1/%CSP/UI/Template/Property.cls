/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// <p>This is the template for SMP pages where the Property pane is on the right side.
/// It contains css styles for using the SVG's tabBar and the propertyPane.</p>
Class %CSP.UI.Template.Property Extends %CSP.UI.Portal.Template [ Abstract, System = 4 ]
{

/// local namespace property. Set to $NAMESPACE is present.
Property NAMESPACE As %String;

/// If true, the property area is visible.
Property settingsExpanded As %Boolean [ InitialExpression = 1, Internal ];

/// This Style block contains page-specific CSS style definitions.
XData CSS3Style
{
}

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// Toggle display of property pane.
ClientMethod toggleSettings() [ Language = javascript ]
{
}

/// Note that this arrow is the opposite of search.
ClientMethod showExpand() [ Language = javascript ]
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
