Class %DeepSee.extensions.modelling.conf.NaiveBayes Extends (%SerialObject, Operator) [ System = 4 ]
{

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.NaiveBayes";

Property name As %String(XMLPROJECTION = "ATTRIBUTE");

Property PMMLClassName As %String;

Property verbose As %Boolean(XMLPROJECTION = "ATTRIBUTE");

Property ClassifierClass As %String;

Property Truncate As %Integer;

Property TrainingSetPredicate As %String(MAXLEN = 512) [ InitialExpression = "(c.%ID # 3) > 0" ];

Property TestSetPredicate As %String(MAXLEN = 512);

Property DimReduction As %EnumString(VALUELIST = ",none,pca") [ InitialExpression = "none" ];

Property Values As %String(MAXLEN = 1024);

}
