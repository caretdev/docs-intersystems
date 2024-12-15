/// This is a "Default" activity within a Manifest document.
/// It sets the variable value if it hasn't been set.
Class %Installer.Default Extends %Installer.Var [ ServerOnly = 1, System = 3 ]
{

/// Variable name to define
Property Target As %String(MAXLEN = 128, XMLNAME = "Name") [ Required ];

/// Variable value if not already defined
Property Value As %String(MAXLEN = 32000);

/// Directory property (if the value is a filename). Overrides
/// Value if set.
Property Dir As %String(MAXLEN = 1024);

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
