/// This is a "Log" activity within a Manifest document
Class %Installer.Log Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Level
Property Level As %Integer [ Required ];

/// Topic
Property Topic As %String;

/// Message
Property Text As %String(MAXLEN = 32000);

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
