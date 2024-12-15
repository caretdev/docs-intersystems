/// This class represents a key-value pair identified when executing a TT model.
Class %iKnow.TextTransformation.OutputKeyValue Extends %SerialObject [ Deprecated, System = 4 ]
{

Property Header As %String(MAXLEN = 1000);

Property Key As %String(MAXLEN = 1000);

Property Value As %String(MAXLEN = 2000);

Property Location As OutputLocation;

}
