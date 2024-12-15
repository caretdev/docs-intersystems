Class %DeepSee.extensions.modelling.conf.Attributes Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

Property input As %EnumString(VALUELIST = ",ResultSet,table,array,sql,$list", XMLPROJECTION = "ATTRIBUTE");

Property dim As %Integer(XMLPROJECTION = "ATTRIBUTE");

Property InputTable As %String;

Property SQL As %String(MAXLEN = 2048);

Property ValueList As %String(MAXLEN = 2048);

Property DisplayList As %String(MAXLEN = 2048);

Property Type As %String [ InitialExpression = "%Integer" ];

Property IdColumn As %String;

Property ValueColumn As %String;

Property TypeColumn As %String;

Property Sort As Sort;

}
