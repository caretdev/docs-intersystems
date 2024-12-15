/// This is an "Error" activity within a Manifest document.
/// It throws an exception--note that the ${} and #{} syntax
/// is not available for this activity.
Class %Installer.Error Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Status (note: ${} and #{} expansion doesn't work here) passed
/// in as a first argument into the $$$ERROR macro.
Property Status As %String [ Required ];

/// Source passed in as a last argument into the $$$ERROR macro.
Property Source As %String(MAXLEN = 128);

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
