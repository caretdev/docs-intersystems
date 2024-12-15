Class %DeepSee.extensions.modelling.PCA Extends (%RegisteredObject, Base) [ System = 4 ]
{

Property config As %DeepSee.extensions.modelling.conf.PCA;

Method setConfig(conf As %DeepSee.extensions.modelling.conf.PCA) As %Status
{
}

Method apply() As %Status
{
}

Method print() As %Status
{
}

Method PCAAnalysis(Output pca As %DeepSee.extensions.components.PCA) As %Status
{
}

Method ClassifierPCA(verbose As %Boolean = 1, Output d1 As %Integer, Output d2 As %Integer, Output pca As %DeepSee.extensions.components.PCA) As %Status
{
}

Method GetNPC(Output n As %Integer) As %Status
{
}

ClassMethod PCA(table As %String, input As %String, out As %String, print As %Boolean = 1, margin As %Double = "", Output d1 As %Integer, Output d2 As %Integer, Output pca As %DeepSee.extensions.components.PCA) As %Status
{
}

}
