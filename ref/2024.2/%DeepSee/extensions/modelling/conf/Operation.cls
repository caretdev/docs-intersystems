Class %DeepSee.extensions.modelling.conf.Operation Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

Property name As %String(XMLPROJECTION = "ATTRIBUTE");

Property type As %String(XMLPROJECTION = "ATTRIBUTE");

Property id As %String(XMLPROJECTION = "ATTRIBUTE");

Property control As %String(XMLPROJECTION = "ATTRIBUTE");

Property args As %Integer(XMLPROJECTION = "ATTRIBUTE");

Property perform As %String(XMLPROJECTION = "ATTRIBUTE");

Property Operations As array Of Operation(XMLKEYNAME = "order");

Method GetOpId() As %String
{
}

Method GetType() As %String
{
}

}
