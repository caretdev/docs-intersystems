/// Manipulate the System security settings.
/// <br><br>
/// The table for this class should be manipulated only through object access, the published API's
/// or through the System Management Portal. It should not be updated through direct SQL access.<br>
Class Security.System Extends (%Persistent, %SYSTEM.Help, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/System.xml#2 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/18 10:38:24 $"_$c(13,10)_"Changelist #:  $Change: 7293289 $"};

Parameter EMSSERVICE [ Internal ] = "Security";

Parameter VERSION [ Internal ] = 4;

Parameter VERSIONSYSTEM [ Internal ] = 2024.3;

/// Enable auditing.<br>
/// Setting this to property to 1 will turn on the audit subsystem, and cause
/// audit records to be written to the audit file. Installing with "Minimal" security
/// will cause auditing to be off (0). Installing with "Normal" or "Locked Down"
/// security will cause auditing to be turned on.
Property AuditEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Encrypt audit file.<br>
/// Setting this property to 1 will cause the audit database to be encrypted. In order
/// to encrypt the audit database, a valid database encryption key must be loaded on
/// the system.
/// Note that if encryption is enabled, the existing audit database and any data it
/// contains will be deleted as soon as the property is modified. If encryption is
/// changed from enabled to disabled, the existing audit database and any data it
/// contains will also be deleted. By default, this property is set to 0
/// during installation.
Property AuditEncrypt As Security.Datatype.BooleanYN(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Flags to govern audit behavior.<br>
/// Bit 0 - Freeze system on audit write failure.<br>
/// If the freeze system bit is turned on, any failure to write to the audit file
/// will cause the system to freeze by setting the WDSTOP bit. Failures could include
/// a file full, disk full, or disk write error condition. To fix this condition, you
/// must force the system down, and either free up disk space, or replace the audit
/// IRIS.DAT file with a new, smaller one. If you enable this parameter, make sure
/// that you have lots of disk space allocated for the audit database. You probably
/// also do not want to set a max size on the audit database either (i.e. leave the
/// max database size set to its default of 0.)
Property AuditFlags As %Integer [ InitialExpression = 0 ];

/// Authentication and CSP Session options enabled for the system.<br>
/// Bit 0 = AutheK5CCache<br>
/// Bit 1 = AutheK5Prompt<br>
/// Bit 2 = AutheK5API<br>
/// Bit 3 = AutheK5KeyTab<br>
/// Bit 4 = AutheOS<br>
/// Bit 5 - AuthePassword<br>
/// Bit 6 = AutheUnauthenticated<br>
/// Bit 7 = AutheKB<br>
/// Bit 8 = AutheKBEncryption<br>
/// Bit 9 = AutheKBIntegrity<br>
/// Bit 10 = AutheSystem<br>
/// Bit 11 = AutheLDAP<br>
/// Bit 12 = AutheLDAPCache<br>
/// Bit 13 = AutheDelegated<br>
/// Bit 14 = LoginToken<br>
/// Bit 15-19 reserved<br>
/// Bit 20 = TwoFactorSMS<br>
/// Bit 21 = TwoFactorPW<br>
/// Bit 22-24 reserved<br>
/// Bit 25 = MutualTLS<br>
/// Depending on the installation security options selected, these different
/// authentication and CSP Session options may be either enabled or disabled. These options govern
/// at the system wide level what authentication and CSP session options are available for the system.
/// If an authentication or CSP session option is disabled at the system level, it will also be disabled
/// for all the services and CSP applications. If the authentication or CSP Session option is enabled at the system level,
/// it may be individually enabled or disabled for each service and CSP application on the system, if the
/// service or CSP application supports that method. See the Security.Services class
/// for enabling/disabling authentication for each individual service, and the Security.Applications
/// class for CSP applications. Note that
/// these bits correspond to the same bit numbers in the Security.Services and Security.Applications class.
Property AutheEnabled As Security.Datatype.Authentication;

/// No longer used
/// DEPRECATED
Property BypassSecurity As Security.Datatype.BooleanYN(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal ];

/// Configuration security enabled.<br>
/// If configuration security is enabled, then if the system detects that
/// the .CPF configuration file has been changed externally (outside of the Management Portal),
/// the system will inform the user that the configuration has changed, and will prompt
/// for a username/password when it next starts up. The username
/// entered must own the %Admin_Manage:Use resource in order for the new configuration
/// to start. If they do not, or the authentication fails, the previous good
/// configuration is used to start the system, and the new configuration changes which
/// were not activated are written to a backup file. By default, this property is set to 0
/// during installation.
Property ConfigurationSecurityEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

Property DBEncAlgorithm As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = 1, Internal ];

/// Encrypt IRISTemp database.<br>
/// If the encrypt IRISTemp database property is enabled, the next time the system is
/// restarted the IRISTemp database will be recreated as encrypted. In order
/// to encrypt the IRISTemp database, a valid database encryption key must be loaded on
/// the system. If this parameter is changed from enabled to disabled, the next
/// time the system restarts the database will be created unencrypted. By default,
/// this property is set to 0 during installation.
Property DBEncIRISTemp As Security.Datatype.BooleanYN(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Database encryption key ID to use for new encrypted databases.
Property DBEncDefaultKeyID As %String(MAXLEN = 64, XMLPROJECTION = "NONE");

/// Database encryption key ID to use for encrypting journal files.
Property DBEncJournalKeyID As %String(MAXLEN = 64, XMLPROJECTION = "NONE");

/// Encrypt Journal files.<br>
/// If the encrypt journal files property is enabled, the journal file will be switched,
/// and the new journal file will be created as encrypted. In order
/// to encrypt the journal file, a valid database encryption key must be loaded on
/// the system. If this parameter is changed from enabled to disabled, the journal file
/// is switched, and the new journal file will be created unencrypted. By default,
/// this property is set to 0 during installation.
Property DBEncJournal As Security.Datatype.BooleanYN(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Default length (in bytes) for new database encryption keys
Property DBEncKeyLength As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = 16, Internal ];

/// Not used
Property DBEncStartConfigFile As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Internal ];

/// Properties for database encryption key activation at startup
/// Mode: 1=Interactive with key file, 2=Unattended with key file, 3=Unattended with KMIP server
Property DBEncStartMode As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal ];

/// Key file name (modes 1 and 2)
Property DBEncStartKeyFile As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Internal ];

/// Stored username and password (mode 2)
Property DBEncStartUsername As %String(MAXLEN = 128, XMLPROJECTION = "NONE") [ Internal ];

Property DBEncStartPassphrase As %Binary(MAXLEN = 256, XMLPROJECTION = "NONE") [ Internal ];

/// KMIPServer instance name (mode 3)
Property DBEncStartKMIPServer As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Internal ];

/// Whether or not successful key activation is required for Cache to start
Property DBEncStartRequired As Security.Datatype.BooleanYN(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal ];

/// Default domain system belongs to.<br>
/// This property is the default kerberos security domain which the system will
/// use for kerberos authentication. During installation, the system will attempt
/// to set this property to the correct value. If you decide to use kerberos
/// authentication, you may need to modify this value.
Property DefaultSecurityDomain As %String(MAXLEN = 128, MINLEN = 1);

/// The default hashing algorithm to use for digital signatures if no hashing
/// algorithm is explicitely specified which is the usual case.
/// This default is used for creating signatures based on RSA keys or HMAC and
/// the default is set during signature creation.<br>
/// The valid values for DefaultSignatureHash are SHA1, SHA256, SHA384 and SHA512.
/// Previously the default was SHA1, but is now changed to SHA256 in accord with the NIST recommendation.<br>
/// <pre>
/// - The default digest method is used as the DigestMethod for each referenced element to sign.
///     %XML.Security.Signature.DigestMethodAlgorithm defaults based on the value of DefaultSignatureHash
///     SHA1:   $$$SOAPWSsha1   ("http://www.w3.org/2000/09/xmldsig#sha1")
///     SHA256: $$$SOAPWSsha256 ("http://www.w3.org/2001/04/xmlenc#sha256")
///     SHA384: $$$SOAPWSsha384 ("http://www.w3.org/2001/04/xmldsig-more#sha384")
///     SHA512: $$$SOAPWSsha512 ("http://www.w3.org/2001/04/xmlenc#sha512")
/// - Signature based based on RSA keys is created by %XML.Security.Signature:CreateX509.
///     %XML.Security.Signature.SignatureMethod.Algorithm defaults based on the value of DefaultSignatureHash
///     This is the signing algorithm to be used.
///     SHA1:   $$$SOAPWSrsasha1   ("http://www.w3.org/2000/09/xmldsig#rsa-sha1")
///     SHA256: $$$SOAPWSrsasha256 ("http://www.w3.org/2001/04/xmldsig-more#rsa-sha256")
///     SHA384: $$$SOAPWSrsasha384 ("http://www.w3.org/2001/04/xmldsig-more#rsa-sha384")
///     SHA512: $$$SOAPWSrsasha512 ("http://www.w3.org/2001/04/xmldsig-more#rsa-sha512")
/// - Signature based based on HMAC is created by %XML.Security.Signature:Create.
///     %XML.Security.Signature.SignatureMethod.Algorithm defaults based on the value of DefaultSignatureHash
///     This is the signing algorithm to be used.
///     SHA1:   $$$SOAPWShmacsha1   ("http://www.w3.org/2000/09/xmldsig#hmac-sha1")
///     SHA256: $$$SOAPWShmacsha256 ("http://www.w3.org/2001/04/xmldsig-more#hmac-sha256")
///     SHA384: $$$SOAPWShmacsha384 ("http://www.w3.org/2001/04/xmldsig-more#hmac-sha384")
///     SHA512: $$$SOAPWShmacsha512 ("http://www.w3.org/2001/04/xmldsig-more#hmac-sha512")
/// <pre>
Property DefaultSignatureHash As %String(VALUELIST = ",SHA1,SHA256,SHA384,SHA512,", XMLPROJECTION = "NONE") [ InitialExpression = "SHA256" ];

/// Description of the system parameters.<br>
Property Description As %String [ InitialExpression = "System security parameters", Internal, Required ];

/// The Authentication timeout for Escalated logins. <br>
/// For interactive processes, when the user is logging in to an Escalation Role (via $system.Security.EscalateLogin()),
/// the user will not be asked to authenticate if the user has previously logged in within the Authentication timeout.
/// A value of '0' indicates that the user should always be prompted to authenticate. A value greater than zero indicates
/// the number of seconds for which the previous login is considered valid. This timeout only applies to escalated logins.
Property EscalateAuthTimeout As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

/// The timeout for Escalated logins.<br>
/// For interactive processes, if the user is in the escalated shell ($System.Security.EscalateLogin())
/// and is inactive for longer than this number of seconds, the screen will be locked,
/// and the user will need to re-authenticate before continuing.
Property EscalateLoginTimeout As %Integer(MINVAL = 0) [ InitialExpression = 300, Required ];

/// Inactive login limit.<br>
/// This property is the number of days a InterSystems IRIS security user account can be inactive
/// before it is disabled. Setting this property to 0 will disable account inactivation.
Property InactiveLimit As %Integer(MINVAL = 0) [ InitialExpression = 90, Required ];

/// Invalid login limit.<br>
/// This property is the number of consecutive times a user can attempt to log
/// into a InterSystems IRIS security account and fail. Once this limit is reached, the process
/// attempting to log in will start to "hang" for longer periods of time before an
/// access denied message is returned to the user. Setting this property to 0 will
/// disable this feature.
Property InvalidLoginLimit As %Integer(MINVAL = 0) [ InitialExpression = 5, Required ];

/// Action to take when the InvalidLoginLimit is reached for a user.<br>
/// Bit 0 - Disable user account<br>
Property InvalidLoginAction As %Integer(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0 ];

Property KeyEncKeyIterations As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = 65536, Internal ];

Property KeyEncKeyLength As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = 16, Internal ];

Property KeyEncKeySaltLength As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = 64, Internal ];

/// Deprecated, See Security.LDAPConfigs class
/// List of additional LDAP attributes to return from LDAP Server.<br>
/// This property contains a list of additional LDAP User attributes for which
/// you want values returned when a user authenticates himself via LDAP. For example,
/// you may want to return a user's mail address from the LDAP server. You would
/// set one of the list values to "mail" which is an LDAP attribute for a user. The
/// values for the set of attributes are written to the user's authentication record,
/// and may be retrieved by using the Security.Users class, Attributes property.
Property LDAPAttributes As list Of %String(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
/// LDAP attribute name where the "Comment" field is retrieved.<br>
Property LDAPAttributeComment As %String(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
/// LDAP attribute name where the "FullName" field is retrieved.<br>
Property LDAPAttributeFullName As %String(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
/// LDAP attribute name where the "NameSpace" field is retrieved.<br>
Property LDAPAttributeNameSpace As %String(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
/// LDAP attribute name where the "Routine" field is retrieved.<br>
Property LDAPAttributeRoutine As %String(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
/// LDAP attribute name where the "Roles" field is retrieved.<br>
Property LDAPAttributeRoles As %String(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPBaseDN As %String(MAXLEN = 128, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPCACertFile As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPClientTimeout As %Integer(XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPHostNames As %String(MAXLEN = 128, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPDomainName As %String(MAXLEN = 128, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPFlags As %Integer(XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPInstanceId As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPGroupId As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPSearchPassword As Security.Datatype.Password(MAXLEN = 64, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPSearchUsername As %String(MAXLEN = 256, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPServerTimeout As %Integer(XMLPROJECTION = "NONE") [ Deprecated, Internal ];

/// Deprecated, See Security.LDAPConfigs class
Property LDAPUniqueDNIdentifier As %String(MAXLEN = 128, XMLPROJECTION = "NONE") [ Deprecated, Internal ];

Property LoginCookieTimeout As %Integer [ InitialExpression = 0 ];

/// By default "SYSTEM".<br>
/// It must not be modified.
Property Name As %String [ InitialExpression = {$$$SystemSecurityName}, Internal, Required ];

/// Password expiration period.<br>
/// This property governs how long a password for a user can be used
/// before it expires. Once a password expires, the user must change their
/// password before they can log in the next time. If this property is set to 0,
/// passwords will not expire on the system.
Property PasswordExpirationDays As %Integer [ InitialExpression = 0, Required ];

/// Target work factor for storing PBKDF2 password hashes.  Higher values increase the result's resistance to attack, as well as CPU count required to authenticate passwords.  If a user logs in via password, and the work factor of their hash does not match this value, it will be re-calculated and re-stored appropriately.  This allows frictionless migration to new PBKDF2 standards as users log in over time.
///
Property PasswordHashWorkFactor As %Integer(MINVAL = 10000) [ InitialExpression = 10000, Required ];

/// Target hash algorithm for storing PBKDF2 password hashes.  More secure hashes increase the result's resistance to attack.  If a user logs in via password, and their hash was calculated using a different algorithm, it will be re-calculated and re-stored appropriately.  This allows frictionless migration to new PBKDF2 standards as users log in over time.
///
Property PasswordHashAlgorithm As Security.Datatype.PBKDF2Alg [ InitialExpression = "SHA512", Required ];

/// Password Pattern.<br>
/// When a user is created in the InterSystems IRIS security database, or a user changes
/// their password, the password is pattern matched
/// against the pattern stored in this property to determine if it matches. If it matches,
/// then the password is allowed. By default, the password must be between 3 and 32
/// characters, with alphanumerics and punctuations. A security setting of
/// "locked down" selected during install requires it to be a minimum of 8 characters long.
/// The Password pattern may be set to null meaning no pattern match on the password.
Property PasswordPattern As %String(MAXLEN = 64) [ InitialExpression = "3.128ANP" ];

/// Password validation routine.<br>
/// When a user is created in the InterSystems IRIS security database, or a user changes their
/// password, the specified routine
/// is called to validate the password. A tag reference may also be included in the
/// property. The routine should be provided by the
/// user, and must exist in the %SYS namespace (it may be mapped to a different
/// database however.) The routine will take 2 parameters, a Username and new password,
/// and should return a %Status code of $$$OK for successful password validation, or
/// an error code formatted into a %Status variable. The username passed into the
/// function will be in all lowercase, and will contain the domain name if
/// multiple domains are enabled for the system.<br><br>
/// Here is an example of a password validation routine. Enter CHECK^PASSWORD into this property
/// to call it:<br>
/// <pre>
/// PASSWORD ; Validate a user's password
/// #include %occInclude
/// CHECK(Username,Password) PUBLIC {
///   ; See if the password was previously used. If it was, return an error.
///   ; Allow the user to change it to the same one as current.
///   ; Store the list of previously used passwords for the user as a hashed value.
///   s PasswordHash=$System.Encryption.SHA1Hash(Password)
///   i $d(^PASSWORDLIST(Username,PasswordHash)){
///     i ^PASSWORDLIST(Username,"Current")'=PasswordHash {
///       q $$$ERROR($$$GeneralError,"Password was previously used")
///     }
///   }
///   s ^PASSWORDLIST(Username,PasswordHash)=$h
///   s ^PASSWORDLIST(Username,"Current")=PasswordHash
///   q $$$OK
/// }
/// </pre>
Property PasswordValidationRoutine As %String(MAXLEN = 128);

/// Allow writing to % globals.<br>
/// When this property is set to 1, any user on the system is allowed to write to any
/// "%" global (like ^%IS) mapped to the IRISSYS database. When this property is set to
/// 0, only users with write access to the %DB_IRISSYS resource can write to "%"
/// globals. During intallation this is set to 1 for "Minimal" security, 0 for "Normal"
/// and "Locked Down" security.
Property PercentGlobalWrite As %Integer [ InitialExpression = 0 ];

/// Required role to log into system.<br>
/// Setting this value to a valid role will require any user logging into the system
/// to own this role as part of their login roles. If the user does not own this role,
/// they will receive an "Access denied" message when they try to log in.
/// This is usually used when the system is configured for LDAP or User defined
/// authentication to restrict unauthorized users from accessing a system. When using
/// LDAP or user defined authentication, user roles are assigned from the LDAP database
/// or the user defined security database. For example, if this property is set to
/// "ACCOUNTSPAYABLE", then the user logging in must be assigned the ACCOUNTSPAYABLE
/// role on the LDAP server, or from the user defined database. Leave as "" if not
/// required. Note that if the user logging in is assigned the "%All" role from the LDAP
/// server or user defined database, then that will override any role entered here.
Property RequiredRole As %String(MAXLEN = 64);

/// Allow multiple security domains.<br>
/// This property should only be set to 1 if you are using kerberos, and wish to
/// allow cross domain realm authentication. Turning it on will cause all usernames to
/// include the domain from which they are logging in. Thus a $username such as "Steve"
/// will then be displayed and used as Steve@domainname.com.
Property SecurityDomains As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Use SSL/TLS for SuperServer connections.<br>
/// 0 = None<br>
/// 1 = Accept<br>
/// 2 = Require
Property SSLSuperServer As %Integer(MAXVAL = 2, MINVAL = 0) [ Deprecated, InitialExpression = 0, Internal ];

/// Use SSL/TLS for Telnet Server connections (Windows only.)<br>
/// 0 = None<br>
/// 1 = Accept<br>
/// 2 = Require
Property SSLTelnetServer As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];

/// Use SSL/TLS for ECP Server connections.<br>
/// 0 = None<br>
/// 1 = Accept<br>
/// 2 = Require
Property SSLECPServer As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];

/// Password for sending email
Property SMTPPassword As %String;

/// Server DNS name for sending email
Property SMTPServer As %String;

/// Username for sending email
Property SMTPUsername As %String;

/// Enable two-factor authentication system-wide<br>
/// No longer used, moved to AutheEnabled property.<br>
Property TwoFactorEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0, Internal ];

/// "From:" field for two-factor security token messages
Property TwoFactorFrom As %String;

Property TwoFactorPWIssuer As %String(MAXLEN = 256) [ InitialExpression = {$p($zv," ",1)_"-"_$zu(110)_"-"_$p($zu(86),"*",2)} ];

/// Timeout for receiving security token in two-factor authentication, in seconds
Property TwoFactorTimeout As %Integer [ InitialExpression = 180 ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Version number of Security Tables. <br>
Property VersionSystem As %Decimal(SCALE = 2) [ Internal ];

Property PrivateJWKS As %String(MAXLEN = 2048);

Property PublicJWKS As %String(MAXLEN = 2048);

Property JWTSigAlg As %String(VALUELIST = ",RS256,RS384,RS512,ES256,ES384,ES512") [ InitialExpression = "ES256" ];

Property JWTIssuer As %String(MAXLEN = 1024);

/// Check the security tables and update or initialize if necessary.
ClassMethod CheckSecurityTables(Install = 1, samplesInstall = 1) As %Status [ Internal ]
{
}

/// This converts the SQL role indices from Cache to IRIS.<br>
/// Previous conversions in the code above were partially incomplete. This is the correct
/// conversion, and fixes any issues with previous conversions.
ClassMethod ConvertSQLIndicesToIRIS() [ Internal ]
{
}

/// Convert a VMS undefined record type file to stream.<br>
ClassMethod Convert(FileName As %String, InFile As %String) As %Status [ Internal ]
{
}

/// Delete the installation username information file.
ClassMethod DeleteInstallationInfo() As %Status [ Internal ]
{
}

/// System security configuration exists.<br>
/// Used to get a handle to the Security.System object.<br>
/// Parameters:<br>
/// Name - Always "SYSTEM".<br>
/// Return values:<br>
/// If Value of the method = 0 (System config does not exist, or some error occured)<br>
/// System = Null<br>
/// Status = System does not exist, or other error message<br><br>
/// If Value of the method = 1 (System config exists)<br>
/// System = Object handle to System config<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String = {$$$SystemSecurityName}, ByRef System As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports the System security record to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
ClassMethod Export(FileName As %String = "SystemExport.xml", ByRef NumExported As %Integer) As %Status
{
}

/// Export All Security records to an xml file.<br>
/// Parameters:<br>
/// FileName - Output file name<br>
/// NumExported (byref) - Returns number of records exported for each
/// type of security record:<br>
/// <ul>
/// <li>NumExported("System")</li>
/// <li>NumExported("Event")</li>
/// <li>NumExported("Service")</li>
/// <li>NumExported("Resource")</li>
/// <li>NumExported("Role")</li>
/// <li>NumExported("User")</li>
/// <li>NumExported("Application")</li>
/// <li>NumExported("SSLConfig")</li>
/// <li>NumExported("PhoneProvider")</li>
/// <li>NumExported("X509Credentials")</li>
/// <li>NumExported("OpenAMIdentityService")</li>
/// <li>NumExported("SQLPrivileges")</li>
/// <li>NumExported("X509Users")</li>
/// <li>NumExported("DocDB")</li>
/// <li>NumExported("LDAPConfig")</li>
/// <li>NumExported("KMIPConfig")</li>
/// </ul>
/// Flags - What type of records to export to the file, -1 = ALL<br>
/// <ul>
/// <li>Bit 0 - System</li>
/// <li>Bit 1 - Events</li>
/// <li>Bit 2 - Services</li>
/// <li>Bit 4 - Resources</li>
/// <li>Bit 5 - Roles</li>
/// <li>Bit 6 - Users</li>
/// <li>Bit 7 - Applications</li>
/// <li>Bit 8 - SSL Configs</li>
/// <li>Bit 9 - PhoneProvider</li>
/// <li>Bit 10 - X509Credential</li>
/// <li>Bit 11 - OpenAMIdentityService</li>
/// <li>Bit 12 - SQL privileges</li>
/// <li>Bit 13 - X509Users</li>
/// <li>Bit 14 - DocDBs</li>
/// <li>Bit 15 - LDAPConfig</li>
/// <li>Bit 16 - KMIPServer</li>
/// <li>Bit 17 - Servers</li>
/// </ul>
/// To export records for a particular area, specify a value of Flags that is 2 to the number of the relevant bit. For example, to export only a list of all roles (Bit 5), specify 32 (2**5, that is, 2 to the 5th power) as the value of Flags; for all applications (Bit 7), specify a value of 128 (2**7).<p>
/// To export records for multiple areas, sum the values for the relevant areas. For example, to export both roles and applications, specify a value of 160 (32 for roles plus 128 for applications); to export roles, users, and applications, specify a value of 224 (32 for roles, plus 64 for users, plus 128 for applications).
ClassMethod ExportAll(FileName As %String = "SecurityExport.xml", ByRef NumExported As %String, Flags As %Integer = -1) As %Status
{
}

/// Get the system security properties.<br>
/// Parameters:<br>
/// Name - Name of system parameter record, currently always "SYSTEM"<br>
/// Properties (byref) - Array of system properties<br>
ClassMethod Get(Name As %String = {$$$SystemSecurityName}, ByRef Properties As %String) As %Status
{
}

/// Get the system security properties.<br>
ClassMethod GetProperties(System As %ObjectHandle, ByRef Properties As %String) As %Status
{
}

/// Get the information passed in by the installer.<br>
/// Return values:<br>
/// Info (by ref) - Array of installation information subscripted
/// as follows:<br>
/// "InstallUsername" - Username of the installer<br>
/// "DomainNameFQ" - Fully qualified domain name<br>
/// "InitialSecuritySettings" - Minimal, Normal, or LockedDown
ClassMethod GetInstallationInfo(ByRef Info As %String) As %Status [ Internal ]
{
}

/// Return the Security settings which the instance was initially installed with.<br>
/// Security Setting - (by ref) Contains the security setting installed, one of these possible values:<br>
/// "None" - Minimal settings selected<br>
/// "Normal" - Normal settings selected<br>
/// "Locked Down" - Locked down setting selected<br>
/// "Unknown" - Cannot determine settings. This would only be the case if the system was initially
/// installed as 2010.2 or earlier, and the settings cannot be determined by examining the security database.<br>
///
ClassMethod GetInstallationSecuritySetting(ByRef SecuritySetting As %String) As %Status
{
}

/// Import System security record from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import System security record from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "SystemExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Import All Security records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import security records from<br>
/// NumImported (byref) - Returns number of records imported for each
/// type of security record:<br>
/// NumImported("System")<br>
/// NumImported("Event")<br>
/// NumImported("Service")<br>
/// NumImported("Resource")<br>
/// NumImported("Role")<br>
/// NumImported("User")<br>
/// NumImported("Application")<br>
/// NumImported("SSLConfig")<br>
/// NumImported("PhoneProvider")<br>
/// NumImported("X509Credentials")<br>
/// NumImported("OpenAMIdentityService")<br>
/// NumImported("SQLPrivileges")<br>
/// NumImported("X509Users")<br>
/// NumImported("DocDB")<br>
/// NumImported("LDAPConfig")<br>
/// NumImported("KMIPServer")<br>
/// NumImported("Server")<br>
/// Type - What type of records to import from the file, -1 = ALL<br>
/// Bit 0 - System<br>
/// Bit 1 - Events<br>
/// Bit 2 - Services<br>
/// Bit 4 - Resources<br>
/// Bit 5 - Roles<br>
/// Bit 6 - Users<br>
/// Bit 7 - Applications<br>
/// Bit 8 - SSL Configs<br>
/// Bit 9 - PhoneProvider<br>
/// Bit 10 - X509Credential<br>
/// Bit 11 - OpenAMIdentityService<br>
/// Bit 12 - SQL privileges<br>
/// Bit 13 - X509Users<br>
/// Bit 14 - DocDBs<br>
/// Bit 15 - LDAPConfigs<br>
/// Bit 16 - KMIPServer<br>
/// Bit 17 - Servers<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return counts<br>
/// Note: On failure, no records will be imported<br>
ClassMethod ImportAll(FileName As %String = "SecurityExport.xml", ByRef NumImported As %String, Type As %Integer = -1, Flags As %Integer = 0) As %Status
{
}

/// Initialize the capabilities matrix.
ClassMethod InitCapMatrix(Startup As %Integer = 0) As %Status [ Internal ]
{
}

/// Determine if auditing is enabled.<br>
ClassMethod IsAuditingEnabled() As %Boolean [ Internal ]
{
}

/// Modify the system security properties.<br>
/// Modifies the system security properties from the security database.<br>
/// Parameters:<br>
/// Name - Name of system parameter record, currently always "SYSTEM"<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// then the property is not modified.
ClassMethod Modify(Name As %String = {$$$SystemSecurityName}, ByRef Properties As %String) As %Status
{
}

ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Start the security system.
ClassMethod Start() As %Status [ Internal ]
{
}

/// Initialize an EMS client when a system parameter changes
ClassMethod StartEMS() As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked when the current object is added to the SaveSet,
/// either because %Save() was invoked on this object or on an object that references this object.
/// %OnAddToSaveSet can modify the current object. It can also add other objects to the current
/// SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet.
///
/// <P>If this method returns an error status then %Save() will fail and the transaction
/// will be rolled back.
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
/// [Previously private]
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private, ProcedureBlock = 1 ]
{
}

/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// Handles %New for EMS 'full' upload test.
ClassMethod EMSNew(init As %String) As Security.System [ Internal ]
{
}

}
