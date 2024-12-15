Class %DeepSee.extensions.modelling.conf.Table Extends (%SerialObject, Operator) [ System = 4 ]
{

Property ClassName As %String;

Property hasOutcome As %Boolean(XMLPROJECTION = "ATTRIBUTE");

Property InstanceType As %String [ InitialExpression = "%String" ];

Property OutcomeColumn As %String [ InitialExpression = "Outcome" ];

Property OutcomeType As %String [ InitialExpression = "%String" ];

Property MaxPC As %Integer [ InitialExpression = 0 ];

Property Attributes As Attributes;

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.TableGenerator";

}
