/// Represents a single "record" of data for the models defined in a <class>%DeepSee.PMML.Definition</class>
/// class. A subclass of this class is generated upon compiling a PMML definition, which can then
/// be instantiated to run the predictive models against. See the %Execute method in
/// <class>%DeepSee.PMML.Model.AbstractModel</class> for more details.
Class %DeepSee.PMML.Data Extends %SerialObject [ Abstract, System = 3 ]
{

Property %Properties [ Internal, MultiDimensional, Private ];

Method %SetPropertyStatus(pProperty As %String, pStatus As %String(VALUELIST=",valid,invalid,missing,predicted")) As %Status [ Internal, Private ]
{
}

Method %GetPropertyValue(pProperty As %String) As %String [ Internal ]
{
}

Method %SetPropertyValue(pProperty As %String, pValue As %String) As %Status [ Internal ]
{
}

Method %GetPropertyStatus(pProperty As %String) As %String
{
}

Method %IsMissing(pProperty As %String) As %Boolean
{
}

Method %IsInvalid(pProperty As %String) As %Boolean
{
}

/// Instantiates an object from this class based on the values in the supplied array.
ClassMethod %CreateFromArray(ByRef pArray, Output pSC As %Status = {$$$OK}) As %DeepSee.PMML.Data [ Final ]
{
}

/// Loads the property values in the supplied array, overwriting existing values for those properties.
Method %LoadData(ByRef pArray) As %Status [ Abstract, Internal ]
{
}

/// Instantiates an object from this class based on the property values of the supplied object.
ClassMethod %CreateFromObject(pObject, Output pSC As %Status = {$$$OK}) As %DeepSee.PMML.Data [ Final ]
{
}

/// Loads the property values from the supplied object, overwriting existing values for those properties.
Method %LoadObject(pObject) As %Status [ Abstract, Internal ]
{
}

Method %ResetDerivedFields() As %Status [ Internal ]
{
}

/// Loads all data fields into pArray, which ensures their *Get methods are invoked so
/// their values are populated and status info is available.
Method %GetAsArray(Output pArray, Output pStatus, pSkipMissing As %Boolean = 1) As %Status [ Abstract, Internal ]
{
}

/// Loads all derived fields into pArray, which ensures their *Get methods are invoked so
/// their values are populated and status info is available.
Method %GetDerivedFields(ByRef pArray = "") As %Status [ Internal ]
{
}

/// Instantiates an object from this class based on the dimension level and measure values
/// of a DeepSee fact, using the mapping described in <var>pDataSource</var>
ClassMethod %CreateFromDeepSee(pFactId As %Integer, Output pData As %DeepSee.PMML.Data, pDataSource As %String = "") As %Status
{
}

ClassMethod %GetDeepSeeSpec(pPropertyName As %String, pDataSource As %String = "") As %String [ Internal ]
{
}

/// Instantiates an object of this class based on the <i>current</i> record of the supplied
/// ResultSet object. If a <var>pFieldMap</var> is supplied, it takes precedence over the value
/// of <var>pDataSource</var> for mapping the ResultSet's columns to data fields.
ClassMethod %CreateFromResultSet(pResultSet As %SQL.StatementResult, Output pData As %DeepSee.PMML.Data, ByRef pFieldMap, pDataSource As %String = "") As %Status [ Internal ]
{
}

ClassMethod %GetResultSetColumn(pPropertyName As %String, pDataSource As %String = "") As %String [ Internal ]
{
}

ClassMethod %CreateDataset(pDataSource As %String = "", Output pDataset As %DeepSee.PMML.Dataset) As %Status [ Internal ]
{
}

}
