///
/// This class provides a way to assemble data.
///
/// A <class>dataBag</class> object contains a set of name-value pairs.
///
/// This is used internally by the pseudo-MVC classes in Zen Reports.
Class %ZEN.Report.Display.COSChart.dataBag Extends %RegisteredObject [ Deprecated ]
{

///
/// List of property names contained within this dataBag.
Property propertyList As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];

///
/// List of property labels (if different than property name) contained within this dataBag.
Property labelList As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];

///
/// List of types of the properties contained within this dataBag.
Property propertyTypes As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];

///
/// Array of data values within the dataBag, indexed by series and property name.
Property %data As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional ];

///
/// Array of data types within the dataBag, indexed by property name.
Property %types As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional ];

///
/// Array of labels within the dataBag, indexed by property name.
Property %labels As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional ];

///
/// Array of serialized data values going to and coming from the client.
Property clientData As %ZEN.Datatype.list(XMLPROJECTION = "NONE");

///
/// Number of data series held within the dataBag.
Property seriesCount As %ZEN.Datatype.integer(MINVAL = 1, XMLPROJECTION = "NONE") [ InitialExpression = 1 ];

///
/// List of data series names contained within this dataBag.
Property seriesNames As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];

///
/// Set the property list for the dataBag.
///
/// This deletes the contents of the dataBag.
Method %SetPropertyList(pPropList As %String, pPropTypes As %String = "", pLabelList As %String = "") [ Internal ]
{
}

///
/// Internal method.
Method %GetPropertyList() As %String [ CodeMode = expression, Internal ]
{
}

///
/// Internal method.
Method %GetPropertyTypes() As %String [ CodeMode = expression, Internal ]
{
}

///
/// Internal method.
Method %GetLabelList() As %String [ CodeMode = expression, Internal ]
{
}

///
/// Delete data currently in the dataBag.
Method %Clear()
{
}

///
/// Get the value of a property within the dataBag.<br>
///
/// Note that this can return a literal value,
///
/// an object value (oref), or $$$ZENMISSING if the given
///
/// property is not in the model.
Method %GetValue(pProperty As %String, pSeries As %Integer = 1) As %String [ CodeMode = expression ]
{
}

///
/// Get the type of a property within the dataBag.<br>
Method %GetType(pProperty As %String) As %String [ CodeMode = expression ]
{
}

///
/// Get the label for a property within the dataBag.<br>
Method %GetLabel(pProperty As %String) As %String [ CodeMode = expression ]
{
}

///
/// Set the value of a property within the dataBag.
Method %SetValue(pProperty As %String, pValue As %String)
{
}

///
/// Copy the contents of this dataBag into a local array.
Method %GetArray(Output pArray)
{
}

///
/// Fill the contents of this dataBag from the given DataModel
Method %CopyFromModel(pModel As %ZEN.DataModel.DataModel) As %Status
{
}

///
/// Copy the contents of this dataBag into the given DataModel.
Method %CopyToModel(pModel As %ZEN.DataModel.DataModel) As %Status
{
}

///
/// Make sure client data is prepared.
Method %OnObjectSynch() As %Status
{
}

///
/// Deserialize additional values from the client.
Method %OnZENDeserialize() As %Status
{
}

///
/// Called just before we serve property values to the client.
Method %OnDrawObjectProperties() As %Status
{
}

///
/// Convert internal arrays to a serialized strings for use on the client.
Method %SerializeData(pDelim As %String = {$C(5)}) As %Status
{
}

///
/// Clear contents of this dataBag.
ClientMethod clear() [ Language = javascript ]
{
}

///
/// Return the data value associated with a given property name.
///
/// If there is no property with the name, <var>property</var>, return null.
ClientMethod getValue(property, series) [ Language = javascript ]
{
}

///
/// Return the data value at the given ordinal position.
///
/// If <var>n</var> is out of range, return null.<br>
///
/// <var>series</var> is 0-based.
ClientMethod getValueByPosition(n, series) [ Language = javascript ]
{
}

///
/// This is a specialized variant of <method>getValueByPosition</method> that
///
/// return the data in this bag as an array of arrays (used
///
/// by charts).
Method getValuesAsArrays(ByRef data)
{
}

///
/// Return the values in this dataBag as a zenProxy object.
///
/// If there is more than one data series, <var>series</var>
///
/// specifies which one to use.<br/>
///
/// Return null if there are no properties in the dataBag.
ClientMethod getValuesAsObject(series) [ Language = javascript ]
{
}

///
/// Internal method.<br>
///
/// Find index number of given property name.
ClientMethod getPropertyIndex(property) [ Internal, Language = javascript ]
{
}

///
/// Set the data value for the given property.<br>
///
/// <var>series</var> is 0-based.
ClientMethod setValue(property, value, series) [ Language = javascript ]
{
}

///
/// Set the data value at the given ordinal position.<br>
///
/// <var>series</var> is 0-based.
ClientMethod setValueByPosition(value, n, series) [ Language = javascript ]
{
}

///
/// dataSet API
///
/// Return the number of items in the specified dimension.<br>
///
/// (<var>dim</var> is 1,2, or 3).
///
/// The size of the first dimension is defined by the number of properties in the dataBag.<br>
///
/// The size of the second dimension is defined by number of data series in the dataBag.
///
/// The dataBag does not support a third dimension.
Method getDimSize(dim)
{
}

///
/// Return the number of data series within this dataBag.
Method getSeriesCount()
{
}

///
/// Return the number of properties within this dataBag.
Method getPropertyCount()
{
}

///
/// Return the name of a property within this dataBag given its ordinal
///
/// (0-based) position.
Method getPropertyName(n)
{
}

///
/// Return the type code of a property within this dataBag given its ordinal
///
/// (0-based) position.
ClientMethod getPropertyType(n) [ Language = javascript ]
{
}

///
/// Return the label of a property within this dataBag given its ordinal
///
/// (0-based) position.
Method getPropertyLabel(n)
{
}

///
/// Return the label of a dataSeries within this dataBag given its ordinal
///
/// (0-based) position.
Method getSeriesLabel(n)
{
}

///
/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
