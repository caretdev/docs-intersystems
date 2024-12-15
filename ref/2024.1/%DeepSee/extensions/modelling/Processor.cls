Class %DeepSee.extensions.modelling.Processor Extends %RegisteredObject
{

Parameter CONFPACKAGE = "%DeepSee.extensions.modelling.conf.";

ClassMethod applyModel(class As %String, verbose As %Boolean = 1, Output pmml As %DeepSee.PMML.Definition.PMML, ByRef p1 As %RawString = "", ByRef p2 As %RawString = "", ByRef p3 As %RawString = "", ByRef p4 As %RawString = "", ByRef p5 As %RawString = "", ByRef p6 As %RawString = "", ByRef p7 As %RawString = "", ByRef p8 As %RawString = "") As %Status
{
}

ClassMethod readModel(class As %String, Output model As %XML.Adaptor) As %Status
{
}

ClassMethod readConfig(class As %String, id As %String, type As %String, Output conf As %XML.Adaptor) As %Status
{
}

ClassMethod applyOperation(class As %String, opId As %String, type As %String, custom As %String, ByRef pmml As %DeepSee.PMML.Definition.PMML, numargs As %Integer = 0, control As %String, operations As %ObjectHandle, ByRef p1 As %RawString = "", ByRef p2 As %RawString = "", ByRef p3 As %RawString = "", ByRef p4 As %RawString = "", ByRef p5 As %RawString = "", ByRef p6 As %RawString = "", ByRef p7 As %RawString = "", ByRef p8 As %RawString = "") As %Status
{
}

ClassMethod execNArgs(operator As %ObjectHandle, method As %String, numargs As %Integer = 0, ByRef p1 As %RawString = "", ByRef p2 As %RawString = "", ByRef p3 As %RawString = "", ByRef p4 As %RawString = "", ByRef p5 As %RawString = "", ByRef p6 As %RawString = "", ByRef p7 As %RawString = "", ByRef p8 As %RawString = "") As %Status
{
}

}
