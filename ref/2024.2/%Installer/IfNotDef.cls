/// This is an "IfNotDef" activity within a Manifest document.
/// Similar to "IfDef", this is a conditional statement used
/// to return True if the "Variable" property is not set.
Class %Installer.IfNotDef Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// The variable to check whether it has been defined or not.
Property Var As %String [ Required ];

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %XGEN.AbstractDocument) As %Status [ Internal ]
{
}

}
