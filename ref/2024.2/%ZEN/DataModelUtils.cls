/// Utility class used by the <class>%ZEN.DataModel.DataModel</class>
/// classes.
Class %ZEN.DataModelUtils Extends %RegisteredObject [ Deprecated, System = 2 ]
{

/// Generate code needed for the GetPropertyInfo method of a DataModel.
/// Given the definition of a property within a DataModel.
ClassMethod GeneratePropInfoCode(pName As %String, pClass As %String, pProperty As %String, pCode As %CharacterStream, pLocalize As %Boolean = 0) As %Status [ Internal ]
{
}

/// Given a class and property name, fill in an array of information that
/// can be used to create a ZEN control to display the property.<br>
/// This is used both by code generators and run-time code to create forms
/// on the "fly".
ClassMethod GetControlForProperty(pClass As %String, pProperty As %String, Output pInfo As %String) As %Status
{
}

/// Generate and return a default SQL search query for a given
/// object reference property.
ClassMethod GetSQLForProperty(pClass As %String, pProperty As %String) As %String [ Internal ]
{
}

/// Generate and return a default SQL lookup query for a given
/// object reference property.
ClassMethod GetSQLLookupForProperty(pClass As %String, pProperty As %String) As %String [ Internal ]
{
}

/// Return the SQL table name for the given class name.
ClassMethod GetSQLTableName(pClass As %String) As %String
{
}

/// Get normalized type (class name) of given property definition
/// This is a duplicate of the same method in %ZEN.Generator.
ClassMethod GetPropertyType(pdef As %Dictionary.CompiledProperty) As %String
{
}

/// Get normalized type (class name) of the given property.
ClassMethod GetNormalizedPropertyType(pClass As %String, pProperty As %String) As %String
{
}

}
