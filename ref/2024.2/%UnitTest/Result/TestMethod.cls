/// Object and SQL projection of a UnitTest TestMethod
Class %UnitTest.Result.TestMethod Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {%Developer}, System = 4 ]
{

/// Name of the TestMethod
Property Name As %String;

/// The status of the TestMethod.
Property Status As %Integer(DISPLAYLIST = ",failed,passed,skipped", VALUELIST = ",0,1,2");

/// Duration of the execution of the TestMethod, in seconds
Property Duration As %Numeric(SCALE = 6);

/// If the Status is failed, this is the action that logged the error
Property ErrorAction As %String;

/// If the Status is failed, this is the description of the error
Property ErrorDescription As %String;

/// The parent TestCase containing this TestMethod
Relationship TestCase As %UnitTest.Result.TestCase [ Cardinality = parent, Inverse = TestMethods ];

/// List of TestAsserts in this TestMethod
Relationship TestAsserts As %UnitTest.Result.TestAssert [ Cardinality = children, Inverse = TestMethod ];

ClassMethod FileIndicesRecursive(id) As %Status
{
}

}
