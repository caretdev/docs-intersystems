/// This is a "ClassMapping" activity within a Manifest document
Class %Installer.ClassMapping Extends %Installer.Mapping [ ServerOnly = 1, System = 3 ]
{

/// Package to map
Property Package As %String(MAXLEN = 128) [ Required ];

/// Source namespace
Property From As %String [ Required ];

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
