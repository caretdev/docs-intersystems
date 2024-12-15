/// Manifest document for a installer manifest.
Class %Installer.Manifest Extends %XGEN.AbstractDocument [ ServerOnly = 1, System = 3 ]
{

/// This is the XML namespace for INSTALLER documents.
Parameter NAMESPACE = "INSTALLER";

/// This is the XML name of this document.
Parameter XMLNAME = "Manifest";

/// This is the value to be used for the XMLNamespace keyword for XData
/// blocks containing this type of document.
Parameter XMLNAMESPACE As STRING = "INSTALLER";

Parameter ROOTCLASSES As STRING = "%Installer.Manifest:Manifest";

/// Title of this installer manifest
Property Title As %String(MAXLEN = 512);

/// Enable to capture I/O for logging purposes
Property CaptureIO As %Boolean [ InitialExpression = 0 ];

/// Generate starting code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

/// Generate ending code for this document.
Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
