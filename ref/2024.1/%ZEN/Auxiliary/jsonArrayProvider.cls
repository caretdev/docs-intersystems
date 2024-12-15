/// A specialized version of the JSON provider pulls a subset of data from a master JSON provider.
/// This is intended for cases where there is a subset of data within a larger content object and
/// the application needs to see this data independently. A typical case is an array within a containing object.<br/>
/// This component ignores all of the data source callback methods inheritied from the <class>jsonProvider</class> class.
Class %ZEN.Auxiliary.jsonArrayProvider Extends (%ZEN.Auxiliary.jsonProvider, %ZEN.Component.dataView) [ Deprecated, System = 3 ]
{

/// Name of the property within the base JSON model that contains the array projected
/// by this provider.
Property arrayName As %ZEN.Datatype.string [ InitialExpression = "children" ];

/// Draw JSON output.
Method %DrawJSON() As %Status [ Internal ]
{
}

/// Return the client-side JSON data as an object or null.
ClientMethod getContentObject() [ Language = javascript ]
{
}

/// Return the array within the content object that supplies the values to a dataView.
ClientMethod getContentArray() [ Internal, Language = javascript ]
{
}

}
