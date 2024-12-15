/// This activity runs another Installer as a "sub" Installer sequence
/// from the current Installer. Current variables, loglevel and logger
/// parameters are passed in to the child Installer.
Class %Installer.RunInstall Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Class name
Property Class As %String(MAXLEN = 128) [ Required ];

/// Method name
Property Method As %String(MAXLEN = 128) [ Required ];

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
