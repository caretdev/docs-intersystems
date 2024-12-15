/// Abstract container component.
/// This is the base class from which various types of grouping elements are derived.
Class %ZEN.Component.abstractGroup Extends component [ Abstract, Deprecated, System = 3 ]
{

Parameter SYSMODULE = "core";

/// Subclasses can set this to change default css class for a group.
Parameter DEFAULTGROUPCLASS As STRING = "group";

/// Set of components within this group.
Property children As list Of component(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// If true, this group and its children are disabled.
Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Internal property.<br/>
/// If true, this group was only partially serialized on the client
/// (it is the ancestor of the object being serialized)
/// and we should ignore changes made to the children array when
/// shipping changes back to the client.
Property %partial As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// This is an internal method that does the actual work of adding a
/// child component to a group.<br>
/// Applications should not call this, instead use <method>%AddChild</method>,
/// <method>%AddChildAfter</method>, and <method>%AddChildBefore</method>.
Method %ReallyAddChild(pComponent As %ZEN.Component.object, pSibling As %ZEN.Component.object = "", pBefore As %Boolean = 0) As %Status [ GenerateAfter = %AddChild, Internal ]
{
}

/// Add a child component <var>pComponent</var> to this group.<br>
/// This is called when the server component tree is being created.
/// This also adds <var>pComponent</var> to the page that this group
/// belongs to; this group must be added to a page before adding any child
/// components to it. In addition, the <property>id</property> property
/// of the component <em>must</em> be set before calling this method.
Method %AddChild(pComponent As %ZEN.Component.object) As %Status [ CodeMode = expression, Final ]
{
}

/// Add a child component <var>pComponent</var> to this group immediately
/// <em>before</em> component <var>pSibling</var>.<br>
/// If <var>pSibling</var> is not a member of this group, this method will fail.<br>
/// This is called when the server component tree is being created.
/// This also adds <var>pComponent</var> to the page that this group
/// belongs to; this group must be added to a page before adding any child
/// components to it. In addition, the <property>id</property> property
/// of the component <em>must</em> be set before calling this method.
Method %AddChildBefore(pComponent As %ZEN.Component.object, pSibling As %ZEN.Component.object = "") As %Status [ CodeMode = expression, Final ]
{
}

/// Add a child component <var>pComponent</var> to this group immediately
/// <em>after</em> component <var>pSibling</var>.<br>
/// If <var>pSibling</var> is not a member of this group, this method will fail.<br>
/// This is called when the server component tree is being created.
/// This also adds <var>pComponent</var> to the page that this group
/// belongs to; this group must be added to a page before adding any child
/// components to it. In addition, the <property>id</property> property
/// of the component <em>must</em> be set before calling this method.
Method %AddChildAfter(pComponent As %ZEN.Component.object, pSibling As %ZEN.Component.object = "") As %Status [ CodeMode = expression, Final ]
{
}

/// Remove child component <var>pComponent</var> from this group.
/// Returns true if the component was found and removed.
Method %RemoveChild(pComponent As %ZEN.Component.object) As %Boolean
{
}

/// Remove all children from this group.
/// If <var>pDynamicOnly</var> is true, then only delete components
/// whose <property>dynamic</property> is set to true.
Method %RemoveChildren(pDynamicOnly As %Boolean = 0)
{
}

/// Notification that children have been added or removed from this group.
Method %OnMutateChildren(pAdd As %Boolean) As %Boolean [ CodeMode = expression ]
{
}

/// Server-only method: Look for the given child object within this group's set of
/// children and return its 1-based index number.<br>
/// Returns -1 if unable to find the child.
Method %GetChildIndex(pChild As %ZEN.Component.component) As %Integer
{
}

/// Client-side method.<br>
/// Dynamically add a component to this group on the client.<br>
/// If <var>refresh</var> is true, then refresh the contents of this group
/// to show the new component.
ClientMethod addChild(component, refresh) [ Language = javascript ]
{
}

/// Client-side method.<br>
/// Dynamically add a component to this group on the client after component
/// <var>sibling</var>.<br>
/// If <var>refresh</var> is true, then refresh the contents of this group
/// to show the new component.
ClientMethod addChildAfter(component, sibling, refresh) [ Language = javascript ]
{
}

/// Client-side method.<br>
/// Dynamically add a component to this group on the client before component
/// <var>sibling</var>.<br>
/// If <var>refresh</var> is true, then refresh the contents of this group
/// to show the new component.
ClientMethod addChildBefore(component, sibling, refresh) [ Language = javascript ]
{
}

/// Notification to subclasses that a child has been added or removed
/// from this group.
ClientMethod childrenMutated() [ Abstract, Language = javascript ]
{
}

/// Client-side method.<br>
/// Dynamically remove a component from this group on the client.
ClientMethod removeChild(component) [ Language = javascript ]
{
}

/// Look for the given child object within this group's set of
/// children and return its 0-based index number.<br>
/// Returns -1 if unable to find the child.
ClientMethod getChildIndex(child) [ Language = javascript ]
{
}

/// This manages the ondisplay event callback handling.  The display event
/// fires when the page is first displayed, when the component or its containing
/// group is refreshed from the server, or when the component or its containing
/// group is displayed via a programmatic 'show()' call.  Note that setting the
/// style.display value from JavaScript DOES NOT trigger this event. In general,
/// application code should not modify or overload this method; instead, use the
/// onDisplayHandler() to customize this processing.
ClientMethod exposeComponent() [ Language = javascript ]
{
}

/// Set overlay mode for each child of this group.
ClientMethod setOverlayMode(mode) [ Language = javascript ]
{
}

/// Apply the given value to the specified property for
/// this group and all of its children.<br>
/// Note that this will not work for 'disabled'; for that
/// use <method>setProperty</method>.
ClientMethod setPropertyAll(property, value, value2) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
/// Assume that subclasses that simply wrap HTML controls
/// have named the control 'control' or else have overridden
/// this method.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Client-side method that is called when a group's disabled
/// state changes. This gives subclasses a chance to update their
/// style when they are enabled/disabled.
ClientMethod ondisabledHandler() [ Abstract, Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Apply the current control values to all controls within a modalGroup.
ClientMethod updateControlsInGroup() [ Internal, Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onRefreshContents() [ Language = javascript ]
{
}

}