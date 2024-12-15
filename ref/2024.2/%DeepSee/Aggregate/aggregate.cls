/// Base class for calculating MDX aggregates. This provides the basic interface for aggregartes as used in the MDX engine.
Class %DeepSee.Aggregate.aggregate Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// Keeps a running count of values processed
Property Count As %Integer [ InitialExpression = 0 ];

/// Array of processed values
Property data As array Of %Double;

/// ProcessValue is called sequentially on each value in a target set. The default behavior of this method is to file the
/// value in the data array in order of arrival.
Method ProcessValue(pValue As %Double) As %Status
{
}

/// GetResult is invoked after every target value has been processed to return
/// the final value of the aggregate.
Method GetResult(Output pStatus As %Status) As %Double
{
}

/// Perform any specific validation or other preprocessing just before adding the value to the set
ClassMethod %PreProcessValue(value As %Double)
{
}

/// Perform any specific validation or other postprocessing just before returning the final value
ClassMethod %PostProcessValue(result As %Double)
{
}

}
