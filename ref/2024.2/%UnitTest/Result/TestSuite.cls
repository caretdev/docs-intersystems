/// Object and SQL projection of a UnitTest TestSuite
Class %UnitTest.Result.TestSuite Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {%Developer}, System = 4 ]
{

/// Name of the TestSuite
Property Name As %String;

/// The status of the TestSuite.
Property Status As %Integer(DISPLAYLIST = ",failed,passed,skipped", VALUELIST = ",0,1,2");

/// Duration of the execution of the TestSuite, in seconds
Property Duration As %Numeric(SCALE = 6);

/// If the Status is failed, this is the action that logged the error
Property ErrorAction As %String;

/// If the Status is failed, this is the description of the error
Property ErrorDescription As %String;

/// The parent TestInstance containing this TestSuite
Relationship TestInstance As %UnitTest.Result.TestInstance [ Cardinality = parent, Inverse = TestSuites ];

/// List of TestCases in this TestSuite
Relationship TestCases As %UnitTest.Result.TestCase [ Cardinality = children, Inverse = TestSuite ];

ClassMethod FileIndicesRecursive(id) As %Status
{
}

}
