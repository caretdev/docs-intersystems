/// Implements all installation operations
Class %Installer.Installer Extends %RegisteredObject [ ServerOnly = 1, System = 3 ]
{

/// Variables
Property Variables As %String [ Internal, MultiDimensional, Private ];

/// InterSystems IRIS configuration object
Property Configuration As Config.Configuration [ Internal ];

/// Log level
Property LogLevel As %Integer [ InitialExpression = 0, Internal ];

/// Logger
Property Logger As %Installer.AbstractLogger [ Internal ];

/// Namespace stack
Property NSStack As %String [ Internal ];

/// Default DB resource
Parameter DEFAULTDBRESOURCE As STRING = "%DB_%DEFAULT";

/// Default installer method name
Parameter DEFAULTINSTALLERMETHODNAME As STRING = "setup";

/// Called to load and run an install from the command line
/// The pManifestSpec is the /INSTALLERMANIFEST parameter
/// The pManifestParams is the INSTALLERMANIFESTPARAMS parameter
ClassMethod InstallFromCommandLine(pManifestSpec As %String, pManifestParams As %String = "", ByRef pLogLevel, pLogger As %Installer.AbstractLogger) As %Status [ Internal ]
{
}

/// Run %Installer.InstallFromCommandLine on the first restart after installation or upgrade
ClassMethod InstallOnFirstRestart()
{
}

/// Load a manifest XML from a file
ClassMethod LoadManifestXML(pManifestSpec As %String, pNamespace As %String = {$NAMESPACE}, ByRef pClass As %String, ByRef pMethod As %String) As %Status [ Internal ]
{
}

/// Switch to a new namespace, saving the current one
Method PushNS(pNS As %String) [ Internal ]
{
}

/// Revert to a previous namespace
Method PopNS() [ Internal ]
{
}

/// Check a variable
Method IsVariableDefined(pName As %String) [ CodeMode = expression, Internal ]
{
}

/// Set a variable
Method SetVariable(pName As %String, pValue As %String) [ Internal ]
{
}

/// Delete a variable
Method DeleteVariable(pName As %String) [ Internal ]
{
}

/// Get the value of a variable
Method GetVariable(pName As %String, Output pResult As %String, pEvaluate As %Boolean = 1) As %String [ Internal ]
{
}

/// Evaluate an expression.  Expressions are strings that support 3 flavors of string expansion:
/// <br/>
/// <li><b>${<i>variable</i>}</b>: Expands to the named variable</li>
/// <li><b>${#<i>parameter</i>}</b>: Expands to the named parameter value for the class that contains the XML</li>
/// <li><b>#{<i>expr</i>}</b>: Expands to the CoS expression (must be properly quoted)</li>
/// <br/>
/// Note that ${#...} is expanded at compile time, thus can be nested inside ${} and #{} expressions.
/// Additionally, ${} expressions are expanded before #{} ones, so they can be nested.  For example:
/// <pre>#{$ZCVT("${NAMESPACE}","L")}</pre>
Method Evaluate(pExpr As %String) As %String [ Internal ]
{
}

/// Evaluate X{} variables
Method evalToken(pExpr As %String, pType As %String, pFunction As %String, Output pResult As %String) As %Status [ Internal, Private ]
{
}

/// Evaluate ${} variables
Method evalVars(pExpr As %String, Output pResult As %String) As %Status [ Internal, Private ]
{
}

/// Evaluate #{} variables
Method evalExpr(pExpr As %String, Output pResult As %String) As %Status [ Internal, Private ]
{
}

/// Evaluate a CoS expression
Method eval(pExpr As %String) As %String [ Internal ]
{
}

/// Evaluate @{} variables
Method evalSpecial(pExpr As %String, Output pResult As %String) As %Status [ Internal, Private ]
{
}

/// Evaluate special variables
Method special(pVar As %String) As %String [ Internal ]
{
}

/// Create a database
Method CreateDatabase(pName As %String, pDir As %String, pCreate As %String, pResource As %String = "", pPublicPermissions As %String = "RW", pEncrypted As %Boolean = 0, pEncryptionKeyID As %String = "", pBlockSize As %Integer = "", pInitialSize As %Integer = "", pMaximumSize As %Integer = "", pExpansionSize As %Integer = "", pCollation As %String = "", pStreamLocation As %String = "", pClusterMountMode As %Boolean = "", pMountAtStartup As %Boolean = "", pMountRequired As %Boolean = "") [ Internal ]
{
}

/// Create a namespace
Method CreateNamespace(pNamespace As %String, pCodeDB As %String, pDataDB As %String, pFlags As %String) [ Internal ]
{
}

/// Enable a namespace for Interoperability productions
Method EnableEnsemble(pNamespace As %String, pEnsPortalSuffix As %String = "", pEnsPortalPrefix As %String = "", pGrant As %String, pCookiePath As %String, pAuthMethods As %Integer) [ Internal ]
{
}

/// Create a class mapping into 'pNamespace', of 'pSpec' from the 'pFrom' namespace
Method ClassMapping(pNamespace As %String, pSpec As %String, pFrom As %String)
{
}

/// Create a global mapping into 'pNamespace', of 'pSpec' from the 'pFrom' namespace
Method GlobalMapping(pNamespace As %String, pSpec As %String, pFrom As %String, pCollation As %Integer = "") [ Internal ]
{
}

/// Create a routine mapping into 'pNamespace', of 'pSpec' from the 'pFrom' namespace
Method RoutineMapping(pNamespace As %String, pSpec As %String, pType As %String, pFrom As %String) [ Internal ]
{
}

/// Copy a file
Method CopyFile(pSrc As %String, pTarget As %String, pIgnoreErrors As %Boolean = 0) [ Internal ]
{
}

/// Copy a directory
Method CopyDir(pSrc As %String, pTarget As %String, pIgnoreErrors As %Boolean = 0) [ Internal ]
{
}

/// Copy a class
Method CopyClass(pSrc As %String, pTarget As %String, pReplace As %Boolean = 0) [ Internal ]
{
}

/// Check to see if a class exists
Method ClassExists(pTarget As %String, pNamespace As %String = {$NAMESPACE}) As %Boolean [ Internal ]
{
}

/// Production settings
Method Production(pNamespace As %String, pProduction As %String, pAutoStart As %Boolean, ByRef pSettings, ByRef pCredentials) [ Internal ]
{
}

/// Check to see if a production exists
Method ProductionExists(pTarget As %String, pNamespace As %String = {$NAMESPACE}) As %Boolean [ Internal ]
{
}

/// Create/modify a CSP application
Method CSPApplication(pUrl As %String, pNamespace As %String, pDescription As %String, pDirectory As %String, pResource As %String, pRecurse As %String, pLoginClass As %String, pCookiePath As %String, pAuthMethods As %Integer, pLockCSPName As %Boolean, pEventClass As %String, pDefaultTimeout As %Integer, pDefaultSuperclass As %String, pUseSessionCookie As %Integer, pServeFiles As %Boolean, pServeFilesTimeout As %Integer, pCustomErrorPage As %String, pPackageName As %String, pChangePasswordPage As %String, pGroupById As %String = "", pCspZenEnabled As %Boolean = 1, pInboundWebServicesEnabled As %Boolean = 1, pTwoFactorEnabled As %Boolean = 0, pIsNameSpaceDefault As %Boolean = 0, pPermittedClasses As %String = "", pAutoCompile As %Boolean = 1, pDispatchClass As %String = "", pMatchRoles As %String = "", pGrant As %String = "") [ Internal ]
{
}

/// Import a file (or directory)
Method Import(pNamespace As %String, pTarget As %String, pFlags As %String, pIgnoreErrors As %String = "", pRecurse As %Boolean = 0) [ Internal ]
{
}

/// Load CSP pages
Method LoadPage(pNamespace As %String, pName As %String, pDir As %String, pFlags As %String, pIgnoreErrors As %Boolean = 0) [ Internal ]
{
}

/// Compile
Method Compile(pNamespace As %String, pClass As %String, pFlags As %String, pIgnoreErrors As %Boolean = 0) [ Internal ]
{
}

/// Set a system setting
Method SystemSetting(pItem As %String, pValue As %String) [ Internal ]
{
}

/// Create a security resource
Method CreateResource(pName As %String, pDescription As %String, pPermission As %String, pType As %Integer = 0) [ Internal ]
{
}

/// Create a security role
Method CreateRole(pName As %String, pDescription As %String, pResources As %String, pRolesGranted As %String) [ Internal ]
{
}

/// Create a security user
Method CreateUser(pUsername As %String, pRoles As %String, pPassword As %String, pFullName As %String, pNamespace As %String, pRoutine As %String, pExpirationDate As %String, pChangePassword As %Boolean, pEnabled As %Boolean, pComment As %String, pFlags As %String = 1) [ Internal ]
{
}

/// Activate a configuration
Method ActivateConfiguration(pTargetNS As %String) [ Internal ]
{
}

/// Construct a new instance of a %Installer.Installer object
Method %OnNew(ByRef pConfigFile As %RawString, ByRef pVars, pLogLevel As %Integer = 0, pLogger = {$$$NULLOREF}) As %Status [ Internal, Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Log to the installer log
Method Log(pLevel As %Integer, pTopic As %String, Args...) [ Internal ]
{
}

/// Check to see if a particular log level will cause logging
Method IsLoggable(pLevel As %Integer) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Setup initial variables
Method setupVars(ByRef pVars) [ Internal, Private ]
{
}

/// Process macro arguments for $$$EVAL
ClassMethod macroArgs(pArgs As %List) As %String [ Internal ]
{
}

/// Process a single macro argument for $$$EVAL
ClassMethod macroArg(pArg As %String) As %String [ Internal ]
{
}

/// Pre-evaluate a $$$EVAL argument to expand references to class parameters
ClassMethod preEval(pExpr As %String) As %String [ Internal, Private ]
{
}

/// Quote a string
ClassMethod quote(pValue As %String) As %String [ Internal ]
{
}

/// Convert a parameter list of the form:
///     A=1,B=2,C="3,4,5",D=6,E="7,""Q"",8",F=9
/// Into an array of named/values:
///     a("A")=1
///     a("B")=2
///     a("C")="3,4,5"
///     a("D")=6
///     a("E")="7,""Q"",8"
///     a("F")=9
/// If <var>pNamed</var> is false, then the position is used as a name:
///     1,2,"3,4,5",6,"7,""Q"",8",9
/// Becomes:
///     a(1)=1
///     a(2)=2
///     a(3)="3,4,5"
///     a(4)=6
///     a(5)="7,""Q"",8"
///     a(6)=9
ClassMethod processParamsIntoArray(pParams As %String, pNamed As %Boolean, ByRef pArray) As %Status [ Internal ]
{
}

}
