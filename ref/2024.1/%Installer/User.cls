/// This is a "User" activity within a Manifest document
Class %Installer.User Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Username
Property Username As %Library.Username [ Required ];

/// Roles
Property Roles As %String [ Required ];

/// Password variable name (passwords must come from a %Installer var for security reasons)
Property PasswordVar As %String [ Required ];

/// User's full name
Property Fullname As %String [ Required ];

/// Namespace
Property Namespace As %String;

/// Routine
Property Routine As %String;

/// Expiration date
Property ExpirationDate As %String;

/// Force user to change password
Property ChangePassword As %Installer.Boolean;

/// User Enabled
Property Enabled As %Installer.Boolean;

/// Comment
Property Comment As %String;

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
