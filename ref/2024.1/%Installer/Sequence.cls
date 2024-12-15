/// This is the base class for a sequence of activities.
Class %Installer.Sequence Extends %XGEN.AbstractSequence [ Abstract, ServerOnly = 1, System = 3 ]
{

Parameter NAMESPACE = "INSTALLER";

Parameter XGENDOCUMENT = "%Installer.Manifest";

/// Reduces the amount of generated code
Parameter XMLFORMAT = "literal";

Method findChild(pName As %String, pIndex As %Integer = 1) As %XGEN.AbstractElement [ Internal ]
{
}

}
