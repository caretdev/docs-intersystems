/// This class represents a section identified when executing a TT model.
Class %iKnow.TextTransformation.OutputSection Extends %SerialObject [ Deprecated, System = 4 ]
{

Property Header As %String(MAXLEN = 1000);

Property Text As %String(MAXLEN = "");

Property Location As OutputLocation;

Property KeyValues As list Of OutputKeyValue [ Internal ];

Method AddKeyValue(pKeyValue As OutputKeyValue) As %Status
{
}

Method GetKeyValueCount() As %Integer
{
}

Method GetKeyValueAt(pPosition As %Integer) As OutputKeyValue
{
}

}
