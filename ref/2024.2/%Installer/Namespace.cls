/// This is a "namespace" activity within a Manifest document
Class %Installer.Namespace Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]
{

/// Namespace name
Property Target As %String(XMLNAME = "Name") [ Required ];

/// Code Database
Property Code As %String;

/// Data Database
Property Data As %String;

/// Create flags
Property Create As %String(VALUELIST = ",yes,no,overwrite") [ InitialExpression = "yes" ];

/// Production-enabled flag<br>
/// <p> This property determines if the namespace will be production-enabled.
/// If you plan on using a namespace for a production, you must enable it for productions.</p>
///
/// the new namespace is production-enabled. If you set the property to 0, then the installer does
/// not run EnableNamespace() and the new namespace is not production-enabled.</p>
///
Property Ensemble As %String;

/// InterSystems IRIS portal suffix
Property EnsemblePortalSuffix As %String(MAXLEN = 256);

/// InterSystems IRIS portal prefix
Property EnsemblePortalPrefix As %String(MAXLEN = 256);

/// InterSystems IRIS portal cookie path
Property EnsemblePortalCookiePath As %String(MAXLEN = 256);

/// Resource(s) granted when logged in
Property EnsemblePortalGrant As %String(MAXLEN = 512);

/// Authentication flags (4=Kerberos, 32=Password, 64=Unauthenticated)
Property EnsemblePortalAuthMethods As %String [ InitialExpression = "36" ];

/// Generate starting code for this document.
Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

/// Generate code for this document.
Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
