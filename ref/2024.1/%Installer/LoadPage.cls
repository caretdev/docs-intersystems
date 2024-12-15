/// This is a "LoadPage" activity within a Manifest document.
/// It loads a CSP file by calling $System.CSP.LoadPage(Name, Flags)
/// and $System.CSP.LoadPageDir(Dir, Flags).
Class %Installer.LoadPage Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Page name
Property Target As %String(MAXLEN = 1024, XMLNAME = "Name");

/// Directory
Property Dir As %String(MAXLEN = 1024);

/// Flags value
Property Flags As %String [ InitialExpression = "ck" ];

/// Ignore errors flag
Property IgnoreErrors As %String [ InitialExpression = "0" ];

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}