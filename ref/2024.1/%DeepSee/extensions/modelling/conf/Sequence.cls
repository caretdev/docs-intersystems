Class %DeepSee.extensions.modelling.conf.Sequence Extends (%SerialObject, Operator) [ System = 4 ]
{

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.ReadSequence";

Parameter APPLYMETHOD = "populate";

Property type As %EnumString(VALUELIST = ",ResultSet,table,array,sql", XMLPROJECTION = "ATTRIBUTE");

Property InstanceIdColumn As %String;

Property AttributeValuesColumn As %String;

Property IgnoreInvalidAttributes As %Boolean [ InitialExpression = 0 ];

Property CorrespondenceColumn As %String [ InitialExpression = "Contribution" ];

Property CorrespondenceType As %String(VALUELIST = ",frequency,spread,contrib,value") [ InitialExpression = "spread" ];

Property OutcomeColumn As %String;

Property InputTable As %String;

Property OutputClass As %String;

Property SQL As %String(MAXLEN = 1024);

/// If <property>InsertOnly</property> is true, the sequence operation will insert new records
/// without checking if one already exists for the Instance ID in the retrieved resultset. This
/// requires the resultset to be sorted by Instance ID !
Property InsertOnly As %Boolean(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1 ];

}
