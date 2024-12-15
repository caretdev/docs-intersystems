/// A specialized group that repeats its contents based on run-time data.<br>
/// A repeating group executes a query and, for each row of the results,
/// creates HTML for all of the members of the group. For example:
/// <example language="xml!fragment">
/// <repeatingGroup sql="SELECT Name FROM Sample.Person">
/// <button caption="Press" onclick="alert('#(%query.Name)#');"/>
/// </repeatingGroup>
/// </example>
/// Each row within the repeating group is referred to as a <i>tuple</i>.
/// For each tuple, the repeating group renders HTML for each of its child components.
/// Note that only one object is created for each child of the repeating group but
/// there are multiple HTML renderings (one per tuple) for each child. The rendered
/// HTML incorporates the current tuple number into the id values used to identify HTML
/// elements to keep track of them.<br/>
/// Applications should keep use of repeatingGroups reasonably simple.
/// Repeating groups within repeating groups are not supported.
Class %ZEN.Component.repeatingGroup Extends (group, querySource) [ Deprecated, Inheritance = right, System = 3 ]
{

/// User-defined list of parameters. These values are passed on
/// to the user callback function that provides the query for this table.
Property parameters As list Of %ZEN.Auxiliary.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// Indicates which member (0-based) of this repeating group is selected, if any.
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// onclickitem event handler:
/// If defined, this event is fired when
/// the user clicks on an item within the repeating group.
Property onclickitem As %ZEN.Datatype.eventHandler;

XData Style
{
}

/// Draw contents of the group.
Method %DrawHTML()
{
}

/// User has clicked on a member of this repeating group.
/// <var>tuple</var> is 0-based.
ClientMethod itemClickHandler(tuple) [ Language = javascript ]
{
}

/// Select a member of this repeating group. <var>tuple</var>
/// specifies which member (0-based).
ClientMethod selectItem(tuple) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
