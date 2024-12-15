/// This is a "var" activity within a Manifest document
Class %Installer.Var Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Variable name
Property Target As %String(MAXLEN = 128, XMLNAME = "Name") [ Required ];

/// Variable value
Property Value As %String(MAXLEN = 32000);

/// Directory property
Property Dir As %String(MAXLEN = 1024);

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
