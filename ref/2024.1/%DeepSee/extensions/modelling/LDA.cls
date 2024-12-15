Class %DeepSee.extensions.modelling.LDA Extends (%RegisteredObject, Base) [ System = 4 ]
{

Property config As %DeepSee.extensions.modelling.conf.LDA;

Property tableConfig As %DeepSee.extensions.modelling.conf.Table;

Method setConfig(conf As %DeepSee.extensions.modelling.conf.LDA) As %Status
{
}

Method apply() As %Status
{
}

Method getLDAModel(Output lda As %DeepSee.extensions.utils.LDA) As %Status
{
}

Method delete() As %Status
{
}

Method LDA() As %Status
{
}

Method SQL4LDA(Output sql As %String, Output n As %Integer) As %Status
{
}

Method printTestSetConfusionMatrix(Output s As %Double) As %Status
{
}

Method printCovectors() As %Status
{
}

Method ldaName() As %String
{
}

}
