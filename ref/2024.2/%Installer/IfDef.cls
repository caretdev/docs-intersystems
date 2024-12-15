/// This is an "IfDef" activity within a Manifest document.
/// The distinction between "IfDef" and "If" lies on the
/// fact that this is a conditional "If" statement used when
/// the variable is already set.
Class %Installer.IfDef Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Condition
Property Var As %String [ Required ];

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %XGEN.AbstractDocument) As %Status [ Internal ]
{
}

}
