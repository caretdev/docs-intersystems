/// This is a "Configuration" activity within a Manifest document
Class %Installer.Configuration Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

/// Generate code for a specific item
Method generateCode(pNode As %XGEN.AbstractElement, pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

/// Generate code for this document.
Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
