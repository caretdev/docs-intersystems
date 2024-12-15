/// Object and SQL projection of a UnitTest TestInstance
Class %UnitTest.Result.TestInstance Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {%Developer}, System = 4 ]
{

/// Index of the TestInstance
Property InstanceIndex As %Integer;

/// The time when the UnitTest TestInstance finished running
Property DateTime As %TimeStamp;

/// Total duration of execution of this TestInstance, in seconds
Property Duration As %Numeric(SCALE = 6);

/// Name of the machine on which this test was run
Property MachineName As %String(MAXLEN = "");

/// Name of the InterSystems IRIS configuration in which this test was run
Property ConfigurationName As %String(MAXLEN = "");

/// $zversion value of the InterSystems IRIS instance in which this test was run
Property Version As %String(MAXLEN = "");

/// Namespace in which this test was run
Property Namespace As %String(MAXLEN = "") [ Calculated, SqlComputeCode = { set {*} = $s({namespaceStored}'="":{namespaceStored},1:$namespace) }, SqlComputed ];

/// Private property for the internally stored namespace
Property namespaceStored As %String(MAXLEN = "") [ Private ];

/// Additional information passed in by uer at runtime
Property UserParam As %String(MAXLEN = "");

/// Additional information, like platform, product version, etc. for each TestInstance.
/// This information is indexed so users can query using this information.
Property UserFields As array Of %String(MAXLEN = "");

/// List of the TestSuites in this TestInstance
Relationship TestSuites As %UnitTest.Result.TestSuite [ Cardinality = children, Inverse = TestInstance ];

ClassMethod FileIndicesRecursive(id) As %Status
{
}

ClassMethod BuildIndices() As %Status
{
}

}
