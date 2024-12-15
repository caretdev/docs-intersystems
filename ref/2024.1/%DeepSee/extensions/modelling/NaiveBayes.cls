Class %DeepSee.extensions.modelling.NaiveBayes Extends (%RegisteredObject, Base) [ System = 4 ]
{

Property config As %DeepSee.extensions.modelling.conf.NaiveBayes;

Property tableConfig As %DeepSee.extensions.modelling.conf.Table;

Method setConfig(conf As %DeepSee.extensions.modelling.conf.NaiveBayes) As %Status
{
}

Method apply() As %Status
{
}

Method getNaiveBayesModel() As %Status
{
}

Method delete() As %Status
{
}

Method generatePMML() As %Status
{
}

Method SQL4NaiveBayes(Output pFields, Output sql As %String) As %Status
{
}

Method printConfusionMatrix(dsName As %String = "", Output s1 As %Double, Output s2 As %Double) As %Status
{
}

ClassMethod getSpecificity(g, Output sc As %Status, ByRef confusion) As %Double
{
}

Method pmmlClassName() As %String
{
}

}
