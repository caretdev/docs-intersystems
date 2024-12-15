/// Base implementation of SVG group behavior.
Class %ZEN.SVGComponent.abstractSVGGroup Extends %XML.Adaptor [ Abstract, Deprecated, PropertyClass = %ZEN.componentParameters, System = 3 ]
{

/// XML namespace used for library components.
Parameter NAMESPACE = "http://www.intersystems.com/zen";

/// Subclasses can set this to change default layout for a group.
Parameter DEFAULTLAYOUT As STRING;

/// Set of svg components within this group.
Property children As list Of svgComponent(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Specifies how components within this group should be layed out.<br/>
/// "none" indicates that no layout is provided.<br/>
/// "vertical" indicates that components within this group are layed out vertically.<br/>
/// "horizontal" indicates that components within this group are layed out horizontally.<br/>
/// "flow" indicates that components within this group are placed within multiple rows.
/// Items are placed horizontally until the width of the container is exceeded and then components are placed on the next row.<br/>
Property layout As %ZEN.Datatype.string(VALUELIST = ",vertical,horizontal,flow,none") [ InitialExpression = {..#DEFAULTLAYOUT} ];

/// If true, this group and its children are disabled.
Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Internal property.<br/>
/// If true, this group was only partially serialized on the client
/// (it is the ancestor of the object being serialized)
/// and we should ignore changes made to the children array when
/// shipping changes back to the client.
Property %partial As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Draw an enclosing SVG group and then render the SVG children of the group.
ClientMethod renderSVG(document, parent) [ Final, Language = javascript ]
{
}

/// Apply layout to the child components within this group.
/// Updates the value of width and height for this group;
ClientMethod layoutChildren() [ Language = javascript ]
{
}

/// Set overlay mode for each child of this group.
ClientMethod setOverlayMode(mode) [ Language = javascript ]
{
}

/// Add a child component <var>pComponent</var> to this group.
/// This is called when the server component tree is being created.
/// This also adds <var>pComponent</var> to the page that this group
/// belongs to; this group must be added to a page before adding any child
/// components to it. In addition, the <property>id</property> property
/// of the component <em>must</em> be set before calling this method.
Method %AddChild(pComponent As %ZEN.Component.object)
{
}

/// Remove child component <var>pComponent</var> from this group.
/// Returns true if the component was found and removed.
Method %RemoveChild(pComponent As %ZEN.Component.object) As %Boolean
{
}

/// Client-side method.<br>
/// Dynamically add a component to this group on the client.
ClientMethod addChild(component) [ Language = javascript ]
{
}

/// Client-side method.<br>
/// Dynamically remove a component from this group on the client.
ClientMethod removeChild(component) [ Language = javascript ]
{
}

/// Apply the given value to the specified property for
/// this group and all of its children.<br>
/// Note that this will not work for 'disabled'; for that
/// use <method>setProperty</method>.
ClientMethod setPropertyAll(property, value, value2) [ Language = javascript ]
{
}

}
