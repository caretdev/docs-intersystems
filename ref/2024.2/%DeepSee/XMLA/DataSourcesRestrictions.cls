Class %DeepSee.XMLA.DataSourcesRestrictions Extends (%RegisteredObject, %XML.Adaptor) [ System = 4 ]
{

Property DataSourceName As String;

Property URL As String;

Property ProviderName As String;

Property ProviderTypeList As list Of String(XMLPROJECTION = "none");

Property ProviderType As String(MAXLEN = 32000);

Property AuthenticationMode As String;

Method Normalize() As %Status
{
}

}
