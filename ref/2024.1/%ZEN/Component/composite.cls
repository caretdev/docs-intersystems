/// Base class for composite components.
/// A composite component provides a way to pre-assemble a group of
/// components that can be used as a single item.
Class %ZEN.Component.composite Extends group [ Deprecated, System = 3 ]
{

/// Internal property.<br>
/// This property is used to keep track of whether the contents
/// of the composite element have been created or not.
Property childrenCreated As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Constructor for composite components.
/// If you override this method, be sure to invoke this code as well using
/// ##super.
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Server-side method
/// Find a child of this composite using its non-qualified (short) id name.
Method %GetChildById(pID As %String) As %ZEN.Component.object
{
}

/// Client-side method
/// Find a child of this composite using its non-qualified (short) id name.
ClientMethod getChildById(id) [ Language = javascript ]
{
}

/// This internal method creates the contents of the composite component.
Method %CreateComposite() As %Status [ CodeMode = objectgenerator, GenerateAfter = %OnAfterCreateComposite ]
{
}

/// For composites that define panes, this method creates the object tree
/// for a given pane and adds it to the given group element.<br>
/// Every pane name and pane block is assumed to start with "pane".
ClassMethod %GetPaneContents(pGroup As %ZEN.Component.group, pPaneName As %String, Output pPaneExists As %Boolean) As %Status [ CodeMode = objectgenerator ]
{
}

/// This callback is called after the children of this composite
/// component have been created.
Method %OnAfterCreateComposite() As %Status [ Abstract ]
{
}

/// This callback is called when a form defined on this composite is submitted.
/// <var>pSubmit</var> is a <class>%ZEN.Submit</class> object
/// containing details of the form submit.<br>
/// Subclasses override this method.
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// This is a local override of this method.
/// It makes sure that <var>%composite</var> is set.
Method %ReallyAddChild(pComponent As %ZEN.Component.object, pSibling As %ZEN.Component.object = "", pBefore As %Boolean = 0) As %Status [ GenerateAfter = %AddChild, Internal ]
{
}

}
