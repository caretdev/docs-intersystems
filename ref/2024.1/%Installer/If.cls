/// This is an "If" activity within a Manifest document
Class %Installer.If Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Condition
Property Condition As %String(MAXLEN = 512) [ Required ];

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %XGEN.AbstractDocument) As %Status [ Internal ]
{
}

}
