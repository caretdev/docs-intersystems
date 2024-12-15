Class %DeepSee.extensions.modelling.conf.Call Extends (%SerialObject, Operator) [ System = 4 ]
{

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.Call";

Property className As %String(XMLPROJECTION = "ATTRIBUTE");

Property method As %String(XMLPROJECTION = "ATTRIBUTE");

Property parameters As list Of %String(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

}
