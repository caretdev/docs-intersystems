/// Object and SQL projection of a UnitTest TestAssert
Class %UnitTest.Result.TestAssert Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {%Developer}, System = 4 ]
{

/// The index of the TestAssert
Property Counter As %Integer;

/// The Status of the TestAssert
Property Status As %Integer(DISPLAYLIST = ",failed,passed,skipped", VALUELIST = ",0,1,2");

/// The name of the action of the TestAssert
Property Action As %String;

/// The description of the TestAssert
Property Description As %String;

/// The location of the TestAssert in the source document in label[+offset]^[|"ns"|]doc.ext format
Property Location As %String;

/// The parent TestMethod containing this TestAssert
Relationship TestMethod As %UnitTest.Result.TestMethod [ Cardinality = parent, Inverse = TestAsserts ];

ClassMethod FileIndicesRecursive(id) As %Status
{
}

}
