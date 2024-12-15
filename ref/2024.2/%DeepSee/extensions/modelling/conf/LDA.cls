Class %DeepSee.extensions.modelling.conf.LDA Extends (%SerialObject, Operator) [ System = 4 ]
{

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.LDA";

Property name As %String(XMLPROJECTION = "ATTRIBUTE");

Property verbose As %Boolean(XMLPROJECTION = "ATTRIBUTE");

Property ClassifierClass As %String;

Property UseMahalanobisDistance As %Boolean;

Property EqualProbabilities As %Boolean [ InitialExpression = 0 ];

Property TargetValue As %String;

Property EffectiveDim As %Integer;

Property TrainingSetPredicate As %String(MAXLEN = 512) [ InitialExpression = "(c.%ID # 3) > 0" ];

Property DimReduction As %EnumString(VALUELIST = ",none,pca") [ InitialExpression = "none" ];

Property Values As %String(MAXLEN = 1024);

}
