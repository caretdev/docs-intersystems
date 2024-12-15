/// This is a "ForEach" activity within a Manifest document
Class %Installer.ForEach Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Index key
Property Index As %String(MAXLEN = 512) [ Required ];

/// Values to loop over
Property Values As %String(MAXLEN = 32000) [ Required ];

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %XGEN.AbstractDocument) As %Status [ Internal ]
{
}

}
