/// Object and SQL projection of a UnitTest TestCase
Class %UnitTest.Result.TestCase Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {%Developer}, System = 4 ]
{

/// Name of the TestCase
Property Name As %String;

/// The status of the TestCase.
Property Status As %Integer(DISPLAYLIST = ",failed,passed,skipped", VALUELIST = ",0,1,2");

/// Duration of the execution of the TestCase, in seconds
Property Duration As %Numeric(SCALE = 6);

/// If the Status is failed, this is the action that logged the error
Property ErrorAction As %String;

/// If the Status is failed, this is the description of the error
Property ErrorDescription As %String;

/// The parent TestSuite containing this TestCase
Relationship TestSuite As %UnitTest.Result.TestSuite [ Cardinality = parent, Inverse = TestCases ];

/// List of TestMethods in this TestCase
Relationship TestMethods As %UnitTest.Result.TestMethod [ Cardinality = children, Inverse = TestCase ];

ClassMethod FileIndicesRecursive(id) As %Status
{
}

}
