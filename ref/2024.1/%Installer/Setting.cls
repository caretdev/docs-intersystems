/// This is a "Setting" activity within a Manifest document.
/// It configures an "Item" in a production by
/// making a call tothe Ens.Production:ApplySettings method.
Class %Installer.Setting Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Item name
Property Item As %String(MAXLEN = 128) [ Required ];

/// Target name
Property Target As %String(MAXLEN = 128, VALUELIST = ",Item,Host,Adapter") [ Required ];

/// Setting name
Property Setting As %String(MAXLEN = 128) [ Required ];

/// Variable value
Property Value As %String(MAXLEN = 32000) [ Required ];

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
