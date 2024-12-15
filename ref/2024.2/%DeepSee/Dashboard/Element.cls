/// This class represents the saved state of a dashboard element.
/// Instances are stored using a generic name-value pair mechanism to provide maximum flexibility.
Class %DeepSee.Dashboard.Element Extends %RegisteredObject [ System = 3 ]
{

/// Internal property used to track if this object is modified.
Property %changed As %ZEN.Datatype.boolean [ InitialExpression = 0, Internal, Transient ];

/// Parent storage location (if any).
Property %parentGLVN As %String [ Internal, Transient ];

/// For child element, this the type of its container (or containing array key).
Property %container As %String [ Internal, Transient ];

/// Id used to save the element (based on the name).
Property %id As %String(MAXLEN = 255) [ Internal ];

/// User-specified name of the element.
Property %name As %String(MAXLEN = 255);

/// Type of this element.
Property %type As %String(MAXLEN = 255);

/// Time this element was created.
Property %createTime As %TimeStamp;

/// Time this item was most recently modified.
Property %modifiedTime As %TimeStamp;

/// Holder of name/value pairs.
Property %data [ Internal, MultiDimensional ];

/// Property dispatch method to catch references to
/// virtual properties.<br>
/// This should not be called directly.<br>
Method %DispatchGetProperty(pProperty As %String) [ Final, Internal ]
{
}

/// Property dispatch method to catch references to
/// virtual properties.<br>
/// This should not be called directly.<br>
Method %DispatchSetProperty(pProperty As %String, pValue As %String) [ Final, Internal ]
{
}

/// Delete all name/value pairs currently in this object.
Method %Clear() [ Final ]
{
}

/// Copy the name/value pairs in this element into
/// a local array subscripted by property name.
Method %CopyToArray(Output pArray) [ Final ]
{
}

/// Copy the values from a local array
/// (subscripted by property name) into
/// this element.
Method %CopyFromArray(ByRef pArray) [ Final ]
{
}

/// Save this element.
Method %Save() As %Status [ Final ]
{
}

/// Open this element given its unique name.
ClassMethod %ExistsId(pID As %String) As Element [ CodeMode = expression, Final ]
{
}

/// Delete all elements.
ClassMethod %KillExtent() As %Status [ Final ]
{
}

/// Open this element given its unique name.
ClassMethod %OpenId(pID As %String, Output pSC As %Status) As Element [ Final ]
{
}

/// Delete this element given it unique name.
Method %DeleteId(pID As %String) As %Status [ Final ]
{
}

/// Copy data from an object into this element.
Method %CopyFromObject(pObject As %RegisteredObject) As %Status
{
}

/// Copy data from this element to an object.
Method %CopyToObject(pObject As %RegisteredObject) As %Status
{
}

/// Get settings meta-data for the given element type.
ClassMethod %GetSettings(pType As %String, Output pSettings) As %Status
{
}

}
