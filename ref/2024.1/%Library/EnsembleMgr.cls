Class %Library.EnsembleMgr [ System = 4 ]
{

/// Portal homepage for this version
Parameter PORTALHOMEPAGE As STRING = "%25CSP.Portal.Home.zen";

/// Default CSP authentication methods
Parameter DEFAULTCSPAUTHMETHODS As INTEGER = 32;

/// Default database resource name
Parameter DEFAULTDBRESOURCE As STRING = "%DB_%DEFAULT";

/// Remove ENSLIB namespace if it already exists AND doesn't reference
/// any data or routines mapped from other databases.
Parameter REMOVEEENSLIBNAMESPACE As BOOLEAN = 1;

/// Create the ENSLIB namespace during upgrades/installs.
Parameter CREATEENSLIBNAMESPACE As BOOLEAN = 0;

/// Default ENSLIB
Parameter ENSLIB As STRING = "ENSLIB";

/// Default HSLIB
Parameter HSLIB As STRING = "HSLIB";

/// where the viewer will get installed
Parameter VIEWERLIB As STRING = "VIEWERLIB";

/// Suffix for temporary global database
Parameter TEMPSUFFIX As STRING = "ENSTEMP";

/// Suffix for secondary global database
Parameter SECONDARYSUFFIX As STRING = "SECONDARY";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Checks for Interoperability installation
ClassMethod IsEnsembleInstalled() As %Boolean [ CodeMode = expression ]
{
}

/// Checks if DICOM is installed
ClassMethod IsDICOMInstalled() As %Boolean [ CodeMode = expression ]
{
}

/// Checks for HealthShare installation
ClassMethod IsHealthShareInstalled() As %Boolean [ Internal ]
{
}

/// Deprecated, retained for backward compatibility
ClassMethod IsFoundationInstalled() As %Boolean [ Internal ]
{
}

/// Checks if current namespace is production-enabled
ClassMethod IsEnsembleNamespace(pNamespace = {$namespace}) As %Boolean
{
}

/// Checks if current namespace is HealthShare-enabled
ClassMethod IsHealthShareNamespace(pNamespace = {$namespace}) As %Boolean
{
}

/// Get the directory or implicit namespace for the ENSLIB database.
/// <var>pImplicit</var> indicates whether the full implicit namespace should be returned,
/// and <var>pNormalized</var> indicates whether the directory should be normalized.
ClassMethod GetENSLIB(pImplicit As %Boolean = 0, pNormalized As %Boolean = 1) As %String [ CodeMode = expression ]
{
}

/// Returns the "path" portion of the Interoperability management URL for a given namespace. If the namespace
/// is *not* production-enabled, then it will return empty string.
/// If <var>pAppendHomePage</var> is false, it will only return the CSP application path.
/// This does not prepend a non empty optional URLPrefix.
ClassMethod DetermineMgmtURLForNamespace(pNamespace As %String = {$namespace}, pAppendHomePage As %Boolean = 1) As %String
{
}

ClassMethod OnSystemStartup(Output pConsoleLog As %String, pIsStartup As %Boolean = 0) As %Boolean
{
}

ClassMethod OnSystemShutdown(Output pConsoleLog As %String, Output pCancelShutdown As %Boolean) As %Boolean
{
}

/// Internal method to make parallel production stop requests for a given group.
ClassMethod stopProductionsByGroup(ByRef pNameSpacesToStopByGroup, pShutdownGroup As %Integer = 0, ByRef pConsoleLog, Output pCancelShutdown As %Boolean) [ Internal ]
{
}

/// Helper method which provides a quick heuristic to determine whether any Interoperability jobs
/// are running on a system. If more than two jobs are running in a namespace under the _Ensemble
/// user, then the namespace is considered to contain running Interoperability jobs.
ClassMethod findEnsembleJobs(Output pNamespaces As %String) As %Status [ Internal, Private ]
{
}

/// Called by ^STU during an installation, update or when becoming primary (which can happen during installation/update or failover).
ClassMethod CheckForInstall() [ Internal ]
{
}

/// Deprecated method. Use dataUpgradeSteps() instead.
ClassMethod mirrorUpgradeSteps(pTargetNS As %String, pVerbose As %Boolean = 0, pCompileCSPPages As %Boolean = 0) As %Status [ CodeMode = call, Internal ]
{
}

/// Perform Interoperability upgrade steps that modify data and thus need to occur when the instance
/// has write access to the data. The separation is used for mirrors where the primary mirror
/// member needs to complete the upgrade for the mirror set.
ClassMethod dataUpgradeSteps(pTargetNS As %String, pVerbose As %Boolean = 0, pCompileCSPPages As %Boolean = 0) As %Status [ Internal ]
{
}

/// Builds array of interoperability namespaces that are mirrored.  Optionally will take pNamespaces argument (comma delimited) to check one or namespaces specifically (which ignores whether it is interoperability)
ClassMethod findMirroredNamespaces(Output pMirNamespaces As %String, pNamespaces As %String = "") As %Status [ Internal ]
{
}

ClassMethod Install(pUpgrade As %Boolean = 0, pProduct As %String = "", pSrcDir As %String = "") As %Status
{
}

ClassMethod configureEnsembleAutoStart(pValue As %Boolean = 1) As %Status
{
}

/// Initialize HealthShare
ClassMethod InitializeHealthShare(pVerbose As %Boolean = 0, pHSLib As %String = {..#HSLIB}, ByRef pIsPrimary As %Boolean = 1) As %Status
{
}

ClassMethod getVersion() As %List
{
}

ClassMethod getVersionIdentifier() As %String [ Internal, Private ]
{
}

ClassMethod InitializeEnsemble(pVerbose As %Boolean = 0, ByRef pIsPrimary As %Boolean = 1) As %Status [ PublicList = InstallBootStrap ]
{
}

/// Validate an Interoperability installation in ENSLIB
ClassMethod ValidateEnsemble(pEnsLib As %String = {..#ENSLIB}, pVerbose As %Boolean = 0) As %Status
{
}

/// Validate an installation by checking for specific classes in a namespace
ClassMethod validateInstallation(pNS As %String, ByRef pCheck, pVerbose As %Boolean = 0) As %Status [ Internal, Private ]
{
}

ClassMethod Upgrade(pVerbose As %Boolean = 0, ByRef pIsPrimary As %Boolean = 1) As %Status
{
}

ClassMethod UpgradeNamespace(pNS As %String, pVerbose As %Boolean = 0, ByRef pIsPrimary As %Boolean = 1) As %Status
{
}

ClassMethod cleanupOldNamespace(pNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// The following parameters are for internal use:<br/>
/// <li> pIsPrimary can be an array and will be calculated if not passed in</li>
/// Top node is whether this is a primary node or not. It is true if not in a mirror.<br/>
/// Subscripts are namespaces that have one or more mirrored databases.<br/>
/// <li> pFromInstall indicates it is enabling all the existing production-enabled namespaces.</li>
/// <li> pUpgrade only has meaning when pFromInstall is true.</li>
ClassMethod EnableNamespace(pTargetNS As %String, pVerbose As %Boolean = 0, ByRef pIsPrimary, pFromInstall = 0, pUpgrade = 0) As %Status
{
}

/// This method is called after a namespace is deleted
ClassMethod DisableNamespace(pTargetNS As %String, pVerbose As %Boolean = 0, pKeepNamespaceAsSystem As %Boolean = 0) As %Status
{
}

/// This method can be used after making a namespace Interoperability
/// enabled such that it cannot be used to support running a production
/// (for example, does not appear in the Interoperability Management Portal)
/// but the namespace (<parameter>pTargetNS</parameter>) is left with the
/// mappings to ENSLIB
ClassMethod MakeInteropSystemNamespace(pTargetNS As %String) As %Status [ Internal ]
{
}

/// pProductionName argument is the production to start automatically on instance startup
/// in the namespace given by argument pTargetNS. <br>
/// Productions are started in descending order of priority followed by alphabetically.<br>
/// pStartupPriority argument is used to set the relative priority for auto start of productions
/// within the instance. The default is the value 0.<br>
ClassMethod SetAutoStart(pTargetNS As %String, pProductionName As %String, pStartupPriority As %Integer = "") As %Status
{
}

ClassMethod ApplySettings(pTargetNS As %String, pProductionName As %String, ByRef pSettings) As %Status
{
}

ClassMethod SetCredential(pTargetNS As %String, pName As %String, pUsername As %String, pPassword As %String, pOverwrite As %Boolean = 0) As %Status
{
}

/// Remove all rule cache routines and recompile all business rules.
ClassMethod upgradeRules(pTargetNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Internal method to validate a namespace: <br/>
/// Name needs to be non empty and not %SYS. <br/>
/// Needs to be defined as a namespace. <br/>
/// Optional check: If <parameter>pIsEnabled</parameter> is true then require
/// namespace is marked as an Interoperability namespace. <br/>
/// Optional check: If <parameter>pCheckIfAvailable</parameter> is true then require
/// namespace can be accessed.<br/>
ClassMethod validateNamespace(ByRef pTargetNS As %String, pIsEnabled As %Boolean = 0, ByRef pSC As %Status, pCheckIfAvailable As %Boolean = 0) As %Boolean
{
}

ClassMethod UpdateAndReloadCPF(pVerbose, pTargetNS) As %Status
{
}

/// Setting pEditGlobals to 0 allows for suppressing globals edits and global collation checks while mapping globals. This may lead to potential global mismatch errors.
/// Setting pEditGlobals to 1 (default) allows the creation of a global directory entry for each local global to be mapped, with same collation as ENSLIB (IRIS standard).
ClassMethod map2enslib(pTargetNS As %String = {$NAMESPACE}, pVerbose As %Boolean = 0, pEditGlobals As %Boolean = 1) As %Status
{
}

ClassMethod unmap2enslib(pTargetNS As %String = {$NAMESPACE}, pVerbose As %Boolean = 0) As %Status
{
}

/// Private helper method to create Interoperability mappings for a particular namespace
/// See ClassMethod map2enslib() for pEditGlobals description.
ClassMethod createMappings(pTargetNS As %String, pEnsLib As %String = {..#ENSLIB}, pVerbose As %Boolean = 0, ByRef pIsPrimary, pEditGlobals As %Boolean = 1) As %Status [ Internal ]
{
}

/// Method to replace map2enslib for use cases where only classes in a namespace need to be mapped to Enslib
ClassMethod mapClasses2enslib(pTargetNS As %String = {$NAMESPACE}, pVerbose As %Boolean = 0) As %Status
{
}

/// Method to replace map2enslib for use cases where only routine in a namespace need to be mapped to Enslib
ClassMethod mapRoutine2enslib(pTargetNS As %String = {$NAMESPACE}, pVerbose As %Boolean = 0) As %Status
{
}

/// Method to replace map2enslib for use cases where only globals in a namespace need to be mapped to Enslib
/// See ClassMethod map2enslib() for pEditGlobals description.
ClassMethod mapGlobals2enslib(pTargetNS As %String = {$NAMESPACE}, pVerbose As %Boolean = 0, pEditGlobals As %Boolean = 1, ByRef pIsPrimary) As %Status
{
}

/// Internal method to create either one of Class, Global or Routine mappings to Enslib namespace
/// pTargetCategory can either be "Class", "Routine" or "Global"
/// See ClassMethod map2enslib() for pEditGlobals description.
ClassMethod mapCategory2enslib(pTargetNS As %String = {$NAMESPACE}, pTargetCategory As %String, pVerbose As %Boolean = 0, ByRef pIsPrimary, pEditGlobals As %Boolean = 1, pEnsLib As %String = {..#ENSLIB}) As %Status [ Internal ]
{
}

/// Internal helper method to create Interoperability mappings for classes for a particular namespace
ClassMethod createClassMappings(pTargetNS As %String, pEnsLib As %String = {..#ENSLIB}, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// Internal helper method to create Interoperability mappings for routine for a particular namespace
ClassMethod createRoutineMappings(pTargetNS As %String, pEnsLib As %String = {..#ENSLIB}, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// Internal helper method to create Interoperability mappings for globals for a particular namespace
/// See ClassMethod map2enslib() for pEditGlobals description.
ClassMethod createGlobalMappings(pTargetNS As %String, pDatabase As %String = {..#ENSLIB}, pVerbose As %Boolean = 0, ByRef pIsPrimary, pEditGlobals As %Boolean = 1) As %Status [ Internal ]
{
}

/// Private helper method to create Interoperability mappings for a particular namespace
ClassMethod deleteMappings(pTargetNS As %String, pEnsLib As %String = {..#ENSLIB}, pVerbose As %Boolean = 0) As %Status
{
}

ClassMethod createPortal(pTargetNS As %String, pVerbose As %Boolean = 0, ByRef pPortalSuffix As %String = "", ByRef pPortalPrefix As %String = "", pGrant As %String = "", pCookiePath As %String = "", pAuthMethods As %String = "", pEnslib As %String = {..#ENSLIB}, ByRef pIsPrimary As %Boolean = 1, pGroupById As %String = {$$$IscMgtPortalId}) As %Status [ Internal ]
{
}

/// Helper to create a CSP portal application
ClassMethod createPortalApp(pPortal As %String, pNS As %String, pPortalDir As %String, pDescription As %String, pResource As %String = "", pRecursive As %Boolean = 1, pLoginPage As %String = "", pGrant As %String = "", pCookiePath As %String = "", pAuthMethods As %String = "", pLockCSPName As %Boolean = 1, pVerbose As %Boolean = 0, pGroupById As %String = "", pCspZenEnabled As %Boolean = 1, pInboundWebServicesEnabled As %Boolean = 1, pTwoFactorEnabled As %Boolean = 0, pIsNameSpaceDefault As %Boolean = 0, pPermittedClasses As %String = "") As %Status
{
}

/// Helper method to modify interop editors app
ClassMethod modifyInteropEditorsAPIApp(pNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Helper method to identify which authentication methods we will enable for the CSP app
ClassMethod DetermineCSPAppSec() As %Integer [ Internal, Private ]
{
}

ClassMethod RemoveLegacyPortal(pTargetNS As %String = "", pPortalDir As %String = "", pPortalApp As %String = "", pFiles As %Boolean = 1, pClasses As %Boolean = 0, pVerbose As %Boolean = 0) As %Status
{
}

ClassMethod setDBRWFlag(dir As %String, flag As %Integer, timeout As %Integer = -1) As %Status [ Internal, Private ]
{
}

/// Create resource pResource if it does not exist already. <br>
/// Assign the resource to the database pDatabase. This call will attempt to mount the db RW if it is mounted read only. <br>
/// If pDatabase is empty string then do not try to update the db label with the resource.<br>
ClassMethod assignResourceToDB(pResource As %String, pDatabase As %String, pPublicPermissions As %String = "RW") As %Status [ Internal ]
{
}

/// Internal method to set DB Resource.
/// If the DB is expanding then the modification will
/// retry at increasing intervals up to 5 attempts over
/// a total maximum wait of 10 seconds. <br>
/// mode can be the internal value for READWRITE or READONLY.
/// Any other mode value not lead to an attempt to change the R/W flag.<br>
/// In order to modify the database the database does need to be mounted R/W <br>
/// The code will set the DB R/W flag first and then call the api to set the resource.<br>
/// For backwards compatibility the code does not reset the DB R/W flag after setting the
/// resource if the R/W flag is changed.<br>
ClassMethod setDBattributes(dir As %String, mode As %String, rnam As %String) [ Internal ]
{
}

ClassMethod getDBRWFlag(dir As %String, ByRef flag As %Integer) As %Status [ Internal, Private ]
{
}

ClassMethod getMappedGlobals(ByRef pGlobals, pDatabase As %String = {..#ENSLIB}, pTargetNS As %String = "") [ Internal, Private ]
{
}

ClassMethod loadMessages(pTargetNS As %String, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod MultiEnsembleInstalled() As %Boolean
{
}

/// Called by HealthShare, can't be private. This is an internal method for internal use only. It deletes databases.
/// pDBsToDelete - CORECGLOBALS (default), MAINGLOBALONLY, ALL
/// 		COREGLOBALS means delete main global database and Interoperability Temporary and Secondary DB if they exist and only if no other namespace references them.
/// 		MAINGLOBALONLY means delete main global database only and only if no other namespace references them.
/// 		ALL means delete all databases used by the namespace and only if no other namespace references them.
/// pRemoveResources 0 (default) or 1. If 1 then delete resources/roles named %DB_<NameOfDatabaseBeingDeleted>
///
ClassMethod deleteNamespace(pTargetNS As %String, pPurgeFiles As %Boolean = 0, pVerbose As %Boolean = 0, pDBsToDelete As %String = "COREGLOBALS", pRemoveResources As %Boolean = 0) As %Status [ Internal ]
{
}

/// Remove a CSP application
/// Called by HealthShare, can't be private
ClassMethod deletePortal(pPortal As %String, pPurgeFiles As %String, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// Classmethod to ensure SearchTable classes are correctly deployed to each Interoperability namespace.
ClassMethod deploySearchTables(pTargetNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Classmethod to upgrade SearchTable metadata which was mapped to ENSLIB in versions prior to 2010.2.
ClassMethod upgradeSearchTables(pTargetNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Ensure that the ^Ens.DocClassMap global has valid data during upgrades from versions where
/// the DocClassMap wasn't used.
ClassMethod upgradeDocClassMap(pTargetNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Check whether any production-enabled UTC indices in a given namespace are in need of repair.
/// If <var>pLogToConsole</var> is true, we will also log a message to messages.log to indicate that
/// the <method>UpgradeUTCIndices</method>() method in this class should be run for this namespace.
ClassMethod CheckUTCIndices(pTargetNS As %String = "", pVerbose As %Boolean = 1, pLogToConsole As %Boolean = 0) As %Status
{
}

/// Get a list of the index globals containing UTC data that needs to be
/// checked for incorrectly normalized values.
ClassMethod getUTCIndexGlobals() As %List [ Private ]
{
}

/// Ensure that timestamps of type Ens.DataType.UTC are correctly stored in various classes.
/// <var>pVerbose</var> controls whether output is written to the current device.
/// <var>pUseBatchMode</var> controls whether the operation should run in batch mode. This ensures
/// that the process uses a limited number of global buffers, which is likely to be crucial on a running system.
ClassMethod UpgradeUTCIndices(pTargetNS As %String = "", pVerbose As %Boolean = 1, pUseBatchMode As %Boolean = 1) As %Status
{
}

/// Helper method that uses a simple heuristic to loop over the index global supplied
/// in <var>pIndexGlobal</var> and check whether any entries include trailing zeroes.
/// By default, we only look at a thousand nodes, as the probability of encountering such a timestamp
/// is 10%, so 1000 should be more than enough entries to check.
ClassMethod indexNeedsRepair(pIndexGlobal As %String = "", pCount As %Integer = 1000) As %Boolean
{
}

/// Convert searches saved as instances of CSPX.EnsMsgFilterForm to instances of EnsPortal.MsgFilter.SavedSearch.
ClassMethod convertCSPXSearches(pTargetNS As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Create the auditing events used by productions
ClassMethod CreateEnsembleAuditingEvents() As %Status
{
}

/// The defineAudit* methods below return literals with the names for the Interoperability auditing events
/// with the format of a single string containing Source/Type/Name.
/// They return the values to be used when creating the audit events at installation/upgrade time by this class,
/// and also to define macros by routine EnsConstants.inc in ENSLIB.
ClassMethod defineAuditModifyProductionConfiguration() As %String
{
}

/// The defineAudit* methods below return literals with the names for the Interoperability auditing events
/// with the format of a single string containing Source/Type/Name.
/// They return the values to be used when creating the audit events at installation/upgrade time by this class,
/// and also to define macros by routine EnsConstants.inc in ENSLIB.
ClassMethod defineAuditStartStopProduction() As %String
{
}

/// The defineAudit* methods below return literals with the names for the Interoperability auditing events
/// with the format of a single string containing Source/Type/Name.
/// They return the values to be used when creating the audit events at installation/upgrade time by this class,
/// and also to define macros by routine EnsConstants.inc in ENSLIB.
ClassMethod defineAuditModifyDefaultSetting() As %String
{
}

/// The defineAudit* methods below return literals with the names for the Interoperability auditing events
/// with the format of a single string containing Source/Type/Name.
/// They return the values to be used when creating the audit events at installation/upgrade time by this class,
/// and also to define macros by routine EnsConstants.inc in ENSLIB.
ClassMethod defineAuditModifySchema() As %String
{
}

/// The defineAudit* methods below return literals with the names for the Interoperability auditing events
/// with the format of a single string containing Source/Type/Name.
/// They return the values to be used when creating the audit events at installation/upgrade time by this class,
/// and also to define macros by routine EnsConstants.inc in ENSLIB.
ClassMethod defineAuditViewMessageContents() As %String
{
}

/// The defineAudit* methods below return literals with the names for the Interoperability auditing events
/// with the format of a single string containing Source/Type/Name.
/// They return the values to be used when creating the audit events at installation/upgrade time by this class,
/// and also to define macros by routine EnsConstants.inc in ENSLIB.
ClassMethod defineAuditResendMessage() As %String
{
}

/// Method to create production-related Resources and Roles, in addition to
/// upgrading existing users with access to the legacy portal through the
/// %Admin_Manage resource so that they retain full access to the new portal
/// after the installation completes.
ClassMethod InstallEnsembleSecurity(pIsPrimary As %Boolean = 1, pVerbose As %Boolean = 0) As %Status
{
}

/// Helper method to recursively locate all users who are assigned a role
/// directly and indirectly.
ClassMethod findUsersForRole(pRole As %String, ByRef pUsers, pVerbose As %Boolean = 0, pRoles As %List) As %String [ Internal, Private ]
{
}

/// Add SQL privileges on core production-related tables to the base production-related Roles.
/// When possible, this should use %Installer-generated code.
ClassMethod addEnsembleSQLPrivileges(pNamespace As %String = "", pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// Add SQL privileges for the %InteropMetrics_Operator role
/// This is added separately from other Ensemble SQL privileges because it is in the %SYS namespace
ClassMethod addInteropMetricsSQLPrivileges(pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// Helper method to add privileges to users. Note that the default behaviour is to have
/// the _Ensemble system user grant privileges, and the GRANT option is false.
ClassMethod addSQLPrivilege(pNamespace As %String, pSQLObject As %String, pPrivilege As %String, pGrantee As %String, pGrantable As %Boolean = 0, pGrantor As %String = "_Ensemble") As %Status [ Private ]
{
}

ClassMethod CreateEnsembleResources(ByRef pVars, pLogLevel As %Integer, pInstaller As %Installer.Installer) As %Status [ CodeMode = objectgenerator ]
{
}

ClassMethod CreateEnsembleRoles(ByRef pVars, pLogLevel As %Integer, pInstaller As %Installer.Installer) As %Status [ CodeMode = objectgenerator ]
{
}

/// Internal method subject to change that returns array of non
/// system databases used by a namespace.
/// The list can be limited using the pWhichDBs parameter:
/// CORECGLOBALS (default), MAINGLOBALONLY, ALL
/// 	COREGLOBALS means main global database and Interoperability Temporary and Secondary DB if they exist and only if no other namespace references them.
/// 	MAINGLOBALONLY means main global database only and only if no other namespace references it.
/// 	ALL means all databases used by the namespace and only if no other namespace references them.
/// It is the callers responsibility to be in %SYS and to handle any privilege restrictions.
ClassMethod getNSPSoleUseNonSysDBs(pTargetNS As %String, pWhichDBs As %String, Output pDBs As %String) As %Status [ Internal ]
{
}

XData EnsembleResources [ XMLNamespace = INSTALLER ]
{
}

XData EnsembleRoles [ XMLNamespace = INSTALLER ]
{
}

/// Helper method to check whether <var>pRole</var> already has the resource/permission pairs
/// in <var>pResources</var>, and adds them if not. Note that <var>pResources</var> should have the following format:
/// [Resource]:[Permissions]. Multiple pairs should be separated by commas.
/// The return value is in the format: [Error Message]_$char(0)_[Resources Added]
ClassMethod addResourcesToRole(pRole As %String = "", pResources As %String = "", Output pStatus As %Status) As %String [ Private ]
{
}

/// Helper method to get the resources and permissions assigned to the role specified in <var>pRole</var>.
ClassMethod getExistingResources(pRole As %String = "", Output pExistingResources) As %Status [ Private ]
{
}

/// Helper method to specify the permissions for a set of resources in <var>pRole</var>.
/// <var>pResources</var> should have the following format: [Resource]:[Permissions].
/// Multiple pairs should be separated by commas. If <var>pRole</var> already has a set
/// of permission specified for a given resource, the permissions will be replaced by those
/// specified. If the permission is omitted, then all permissions for the given resource will
/// be removed from the role.
/// The return value is in the format: [Error Message]_$char(0)_[Resources Removed]_$char(0)_[Resources Added]
ClassMethod setResourcesForRole(pRole As %String = "", pResources As %String = "", Output pStatus As %Status) As %String [ Private ]
{
}

/// Set configuration flags in namespace pTargetNS,<br>
/// pVerbose report <br>
/// pFlagsSet is an array returned with flags set or it can be passed in to say which flags to set.<br>
/// This is called when a new namespace is made. Flags that need to be set during upgrade are set in UpgradeNamespace()<br>
ClassMethod setConfigFlags(ByRef pFlagsSet As %String, pTargetNS As %String = "", pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// <p>Creates new database that  is used to store credential passwords and maps ^Ens.SecondaryData* to it.
/// This API is run by EnableNamespace() when creating new namespaces.</p>
/// <p>When you call this method, you must ensure that the production is not running and no changes are made to the credentials.<p>
/// <p>The new database is created in a subdirectory of the Namespace's default database for Globals. The name of the new database
/// and the subdirectory is the name of the Namespace's default database for Globals with "SECONDARY" appended. For example if the
/// default globals database is LABS then the new secondary database is called LABSSECONDARY. The new database is protected by a
/// resource named after the database (e.g. %DB_LABSSECONDARY) without public access. No user needs to have privileges to this resource.</p>
/// <p>After creating the secondary database, the call creates a global mapping for Ens.SecondaryData* and moves
/// any existing data to the new location.</p>
/// <p>An exception is that if Ens.SecondaryData* is already mapped before you make the call, the call does not create the database,
/// change the mapping, or move the data.</p>
/// <p>If the namespace globals database is mirrored, you must also ensure that the secondary database is also mirrored.
/// When you are creating a production-enabled namespace on a primary mirror and specify that the globals database is to be mirrored,
/// the secondary database is automatically marked as mirrored. But if you are creating a secondary database for any existing
/// namespace, you must explicitly set the secondary database to be mirrored. In this case, you should treat the secondary database
/// as an existing database when creating it on a backup mirror.</p>
/// This will not create the database if the default global database is remote.</p>
ClassMethod CreateNewDBForSecondary(pNamespace As %String = "", pVerbose As %Boolean = 0, pCheckValidNSP As %Boolean = 1) As %Status
{
}

/// Check if global already mapped and target database already exists,
/// If database already defined then accept as OK and proceed to mapping else create
/// If Database file already exist use it
/// Create the database
/// Create/Assign resource here since DB definition may already exist if not mirrored or mirrored and primary
/// Before creating the mapping see if any data in the globals covered by tGbl pattern and move over to new DB. Only if not mirrored or if primary
/// Make overall mapping
/// Creates new non journalled database and maps ^IRIS.Temp.Ens* to it. This is called by EnableNamespace()<br>
/// This will not create the database if the default global database is remote.</p>
ClassMethod createNewDBForEnsTemp(pNamespace As %String = "", pVerbose As %Boolean = 0) As %Status
{
}

/// Check if temporary global database is not CACHETEMP, globals already mapped and target database already exists
/// If database already defined then accept as OK and proceed to mapping else create
/// If Database file already exist use it
/// Create the database non journalled and assign resource the same as the default global database.
/// Make overall mapping. Keep Public in CACHETEMP first
/// Create the IRISMETRICS database for Interoperability Usage Metrics if it does not already exist,
/// ensure that it is added to the CPF file,
/// and create mappings from %SYS to the IRISMETRICS database.
/// Mappings from other databases to IRISMETRICS occurs when EnableNamespace is called.
ClassMethod CreateNewDBForMetrics(pVerbose As %Boolean = 0) As %Status
{
}

/// Helper method to populate pIsPrimary.<br>
/// <li> pIsPrimary can be an array and will be calculated if not passed in</li>
/// Top node is whether this is a primary node or not. It is true if not in a mirror.<br/>
/// Subscripts are namespaces that have one or more mirrored databases.<br/>
ClassMethod populateIsPrimary(ByRef pIsPrimary) As %Status [ Internal ]
{
}

ClassMethod moveToFromInstallTemp(pDirection As %String = "To", pNSP As %String = "", pGlbName As %String = "", Output pDataMoved As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod deleteEnsTempData(ByRef pConsoleLog As %String) [ Internal, Private ]
{
}

/// This method returns an ordered list of ensemble namespaces in order of startup priority.<br>
/// The value returned is a $List structure of namespace and its startup relative priority. <br>
/// If a production is not set to Auto Start in a namespace the relative priority returned will be 0. <br>
/// The list returns the names of all production-enabled namespaces that the caller has READ access to
/// the global ^Ens.AutoStart in the the namespace. <br>
ClassMethod GetNamespacesByStartupPriority(Output pNamespacesByStartupPriority) As %Status
{
}

/// internal helper method to check an ordered list of production-enabled namespaces does have all production-enabled namespaces
ClassMethod checkOrderedList(ByRef pNamespacesByStartupPriority As %String) As %Status [ Internal ]
{
}

/// Internal helper method to identify if user has access to the global
/// Error handling to be trapped by caller.
ClassMethod canAccessGlobal(pNamespace As %String = {$NAMESPACE}, pGlobal As %String = "", pSubscript As %String = "", pAccessMode As %String = "READ") As %Boolean [ Internal ]
{
}

/// Query to display order of productions set for auto start by order of startup priority for those namespaces caller allowed to inspect.
/// This Query is used in EnsPortal.AutoStartProduction but is only shown if the user has access to all. [GetNamespacesByStartupPriority() does not return an error]
ClassMethod ListProductionsByAutoStartPriorityExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod ListProductionsByAutoStartPriorityFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod ListProductionsByAutoStartPriorityClose(ByRef qHandle As %Binary) As %Status
{
}

/// This method returns an ordered list of production-enabled namespaces in order of Shutdown Group.<br>
/// The value returned is a $List structure of namespace and its relative shutdown group. <br>
/// If a production is not assigned a shutdown group in a namespace the relative shutdown group
/// returned will be 2 (see $$$ensDefaultShutdownGroup in EnsConstants.inc). <br>
/// The list returns the names of all production-enabled namespaces that the caller has READ access to
/// the global/subscript given by $$$EnsProdShutdownGroup in the the namespace $$$EnsConfigurationGbl("ShutdownGroup")]. <br>
ClassMethod GetNamespacesByShutdownGroup(Output pNamespacesByShutdownGroup) As %Status
{
}

/// Query to display order of productions ordered by Shutdown Group for those namespaces caller allowed to inspect.
/// This Query is used in EnsPortal.ProductionShutdownGroup but is only shown if the user has access to all production namesapces. [GetNamespacesByShutdownGroup() does not return an error]
ClassMethod ListProductionsByShutdownGroupExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod ListProductionsByShutdownGroupFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod ListProductionsByShutdownGroupClose(ByRef qHandle As %Binary) As %Status
{
}

/// This method is called by EnableNamespace (via dataUpgradeSteps) to update Activity Dashboard meta data.
ClassMethod upgradeDashboards(pTargetNS As %String, pVerbose As %Boolean = 0, pValidateNamespace As %Boolean = 1) As %Status
{
}

ClassMethod namespaceProductionType() As %String [ Internal ]
{
}

ClassMethod technologyType() As %String [ Internal ]
{
}

/// Private method to load localized messages into enslib.<br>
/// This will be removed when building of the kit includes loading
/// messages to enslib.
ClassMethod loadENSLIBMessages(pEnsLibRW As %Boolean = 0, pEnsLibDir As %String = "", pVerbose = 0) As %Status [ Internal, Private ]
{
}

/// Mechanism to check if the Interoperability framework is
/// being started up - OnSystemStartup()
/// Does not know if OnSystemStartup() has not been invoked
/// yet.
ClassMethod SystemStartupInProgress() As %Boolean [ Internal ]
{
}

}
