/// This class provides a way to assemble data that can be
/// conveniently passed between the web client and the server.
/// A <class>dataSet</class> object can contain 0-dimensional
/// (scalar) data, 1-dimensional (list), 2-dimensional, or
/// 3-dimensional data, as specified by its <property>dimensions</property>
/// property.
Class %ZEN.Auxiliary.dataSet Extends %ZEN.Component.object [ Deprecated, System = 3 ]
{

/// Number of dimensions within the dataSet.
Property dimensions As %ZEN.Datatype.integer(MAXVAL = 3, MINVAL = 0, XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Size, indexed by dimension number, of each dimension.
Property %size As %ZEN.Datatype.integer(MINVAL = 1, XMLPROJECTION = "NONE") [ MultiDimensional, Private ];

/// Array of data values within the dataSet.
Property %data As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional, Private ];

/// Set of captions used as labels along the various
/// dimensions of the dataSet.<br>
/// The array of labels is indexed by dimension number and position
/// within the dimension.
Property %labels As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional, Private ];

/// Array of serialized data values going to and coming from the client.
Property clientData As %ZEN.Datatype.list(XMLPROJECTION = "NONE", ZENSETTING = 0);

/// Array of serialized label values going to and coming from the client.
Property clientLabels As %ZEN.Datatype.list(XMLPROJECTION = "NONE", ZENSETTING = 0);

/// Array of serialized dimension size values going to and coming from the client.
Property clientSize As %ZEN.Datatype.list(XMLPROJECTION = "NONE", ZENSETTING = 0);

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Set the number of dimensions within the dataSet.
/// Changing the number of dimensions deletes the contents of the
/// dataSet.
Method %SetDimensions(dims As %Integer)
{
}

/// Get the number of dimensions within the dataSet.
Method %GetDimensions() As %Integer [ CodeMode = expression ]
{
}

/// Delete data currently in the dataSet.
Method %Clear()
{
}

/// Get the value of a label at position <var>n</var>
/// in dimension <var>dim</var> within the dataSet.
Method %GetLabel(n As %Integer = 1, dim As %Integer = 1) As %String [ CodeMode = expression ]
{
}

/// Return current size of a dimension.
Method %GetDimSize(dim As %Integer = 1) As %Integer [ CodeMode = expression ]
{
}

/// Set the value of a label at position <var>n</var>
/// in dimension <var>dim</var> within the dataSet.
Method %SetLabel(pLabel As %String, n As %Integer = 1, dim As %Integer = 1)
{
}

/// Get the value of a cell within the dataSet.
Method %GetValue(d1 As %Integer = 1, d2 As %Integer = 1, d3 As %Integer = 1) As %String [ CodeMode = expression ]
{
}

/// Set the value of a cell within the dataSet.
/// Updates dimension size as needed.
Method %SetValue(pValue As %String, d1 As %Integer = 1, d2 As %Integer = 1, d3 As %Integer = 1)
{
}

/// Copy the contents of this dataSet into a local
/// array.
Method %GetArray(Output pArray)
{
}

/// Set the contents of this dataSet from a local
/// array. The local array must have the same dimensionality
/// as the dataSet and must have the correct number and
/// type of subscripts.<br>
/// The caller is also responsible for supplying the sizes of
/// each dimension.
Method %SetArray(ByRef pArray, s1 As %Integer = 1, s2 As %Integer = 1, s3 As %Integer = 1)
{
}

/// Print out contents of this dataSet to the current device.
Method %Print()
{
}

/// Make sure client data is prepared.
Method %OnObjectSynch() As %Status
{
}

/// Deserialize additional values from the client.
Method %OnZENDeserialize() As %Status
{
}

/// Called just before we serve property values to the client.
Method %OnDrawObjectProperties() As %Status
{
}

/// Convert internal arrays to a serialized strings for use on the client.
Method %SerializeData(pDelim As %String = {$C(5)}) As %Status
{
}

/// Clear contents of this dataSet.
ClientMethod clear() [ Language = javascript ]
{
}

/// Update size of dataSet to new dimensions and size.
ClientMethod redim(dims, sz1, sz2, sz3) [ Language = javascript ]
{
}

/// Swap the contents of 2 "slices" of the dataSet within
/// the specified dimension.<br>
/// For example, swap the contents of 2 rows within a 2D dataSet.
/// If <var>labels</var> is true, then swap labels as well.
ClientMethod swap(dim, item1, item2, labels) [ Language = javascript ]
{
}

/// Insert a new "slice" into the dataSet within
/// the specified dimension just before item <var>index</var> (0-based).<br/>
/// If <var>index</var> is -1, then insert at the end.
ClientMethod insert(dim, index) [ Language = javascript ]
{
}

/// Remove a "slice" from the dataSet within
/// the specified dimension at position <var>index</var> (0-based).<br/>
ClientMethod remove(dim, index) [ Language = javascript ]
{
}

/// Return the number of dimensions in the dataSet.
ClientMethod getDimensions() [ Language = javascript ]
{
}

/// Return the number of items in the specified dimension
/// (dim is 1,2, or 3).
ClientMethod getDimSize(dim) [ Language = javascript ]
{
}

/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod getLabel(n, dim) [ Language = javascript ]
{
}

/// Return the data contained in the specified location.
/// Location is 0-based;
ClientMethod getData(d1, d2, d3) [ Language = javascript ]
{
}

/// Set the value of the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod setLabel(label, n, dim) [ Language = javascript ]
{
}

/// Set the data contained in the specified location.
/// Location is 0-based;
ClientMethod setData(value, d1, d2, d3) [ Language = javascript ]
{
}

}
