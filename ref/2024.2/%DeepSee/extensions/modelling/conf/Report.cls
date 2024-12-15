Class %DeepSee.extensions.modelling.conf.Report Extends (%SerialObject, Operator) [ System = 4 ]
{

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.ContributionReport";

Property type As %EnumString(VALUELIST = ",text,html,csv", XMLPROJECTION = "ATTRIBUTE");

Property classifierType As %EnumString(VALUELIST = ",lda,pca", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property classifierName As %String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property strict As %Boolean(XMLPROJECTION = "ATTRIBUTE");

Property ClassifierClass As %String [ Required ];

Property File As %String;

Property Margin As %Double [ InitialExpression = 0.9 ];

Property TargetValue As %String [ Required ];

Property TargetValue2 As %String;

Method getType() As %String
{
}

}
