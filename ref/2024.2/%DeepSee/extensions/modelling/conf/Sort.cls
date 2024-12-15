Class %DeepSee.extensions.modelling.conf.Sort Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

Property order As %EnumString(VALUELIST = ",desc,asc", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "desc" ];

Property column As %String(XMLPROJECTION = "ATTRIBUTE");

Method toSQL() As %String
{
}

}
