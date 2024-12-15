/// This is an "Else" activity within a Manifest document. It executes the
/// code following the "If" statement if said condition is false.
Class %Installer.Else Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
