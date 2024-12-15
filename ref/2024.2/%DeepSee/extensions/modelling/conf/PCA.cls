Class %DeepSee.extensions.modelling.conf.PCA Extends (%SerialObject, Operator) [ System = 4 ]
{

Parameter IMPLEMENTINGCLASS = "%DeepSee.extensions.modelling.PCA";

Property DimReductionMargin As %Double [ InitialExpression = 0.9 ];

Property ClassifierClass As %String;

Property NumberOfPC As %Integer;

Property ErrorOnMaxPC As %Integer [ InitialExpression = 1 ];

}
