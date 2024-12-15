Class %DeepSee.XMLA.PropertiesRowset Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

Property PropertyName As String;

Property PropertyDescription As String;

Property PropertyType As String;

Property PropertyAccessType As String;

Property IsRequired As String;

Property Value As String;

ClassMethod Populate(filename As %String) As %Status
{
}

}
