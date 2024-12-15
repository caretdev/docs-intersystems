/// This is a "Invoke" activity within a Manifest document
Class %Installer.Invoke Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Class name
Property Class As %String(MAXLEN = 128) [ Required ];

/// Method name
Property Method As %String(MAXLEN = 128) [ Required ];

/// Place to store return value
Property Return As %String;

/// Check for status on return
Property CheckStatus As %Boolean;

/// Generate code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
