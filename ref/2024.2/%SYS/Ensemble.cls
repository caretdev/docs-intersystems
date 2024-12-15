Class %SYS.Ensemble [ Abstract, Final, System = 4 ]
{

/// Secure wrapper for the StartProduction API in <class>Ens.Director</class>.
ClassMethod StartProduction(pProductionName As %String) As %Status
{
}

/// Secure wrapper for the UpdateProduction API in <class>Ens.Director</class>.
ClassMethod UpdateProduction(pTimeout As %Numeric = 10, pForce As %Boolean = 0, pCalledByScheduleHandler As %Boolean = 0) As %Status
{
}

/// Secure wrapper for the StopProduction API in <class>Ens.Director</class>.
ClassMethod StopProduction(pTimeout As %Numeric = 10, pForce As %Boolean = 0) As %Status
{
}

/// Method to get the status of productions in all known production-enabled namespaces on this system.<br>
/// Note that data is NOT retrieved from remote databases. <br>
/// This list will not include namespaces if the default global database for the namespace is not mounted.<br>
/// The output status array is subscripted by namespace and with a value for each namespace that is a $List with 5 components:
/// <ol><li>Production Name of last used Production if any</li>
/// <li>Localized Status text</li>
/// <li>1 if the Production is Running, Stopped or Suspended, 0 otherwise, indicating 'not known to be OK'</li>
/// <li>'HS' if the namespace is HealthShare enabled, otherwise empty</li>
/// <li>The numeric state value representing the production's status</li></ol>
ClassMethod GetStatusAll(Output nsStatus) As %Status [ Internal ]
{
}

/// Wrapper around the SYS.EnsMetrics::GetMainMetrics() API to ensure that all users with
/// USE permissions on %Ens_Dashboard can get this information even if they aren't permitted to
/// directly run code in the system database.
ClassMethod GetEnsMetrics(pID As %String, pCount As %Integer, Output pValues, Output pStatus, Output pMsg, pInterval As %Numeric = 10) As %Status
{
}

/// Wrapper around the Ens.Util.Documentation::CreateDoc() API to ensure that users have sufficient privileges to
/// add the resulting material to the documentation.<br>
/// The parameter <parameter>PDFRenderer</parameter> is deprecated and is ignored.<br>
/// The parameter <parameter>pAllSettings</parameter> defaults to 0 but if set to 1
/// all settings including default values for a host item will be included.<br>
///
ClassMethod CreateDocumentation(pProduction As %String = "", pIntro As %Boolean = 1, pFormat As %String, Output LogFileName As %String, Output URL As %String, Output BookName As %String, PDFFileName As %String, PDFRenderer As %String, ByRef Params As %String, pAllSettings As %Boolean = 0) As %Status
{
}

ClassMethod GlobalInMirroredDB(pGlobal As %String = "", Output pMirrored As %Boolean) As %Status
{
}

/// Common method to ensure that the public methods of this class are correctly invoked.
ClassMethod BasicChecks(pResources As %String = "", pCheckLicense As %Boolean = 1, pCheckNamespace As %Boolean = 1) As %Status [ Internal, Private ]
{
}

/// Correctly determine the expanded Interoperability manager username (used internallly and not for login)
/// if the system is using multiple domains.
/// If multiple domains are in use, then the Interoperability manager username should be present in the default domain.
ClassMethod EnsembleUsername() As %String
{
}

/// This method is used by the portal page EnsPortal.ManagedAlertViewer<br><br>
/// It returns a list of users who are members of the %EnsRole_AlertManager,
/// %EnsRole_AlertOperator or %EnsRole_Alert roles.<br>
/// If the role %EnsRole_Administrator has USE privilege on the %Ens_AlertAdministration
/// resource then users of the role %EnsRole_Administrator will also be listed. <br>
/// Users with %All role will not be listed unless they are explicitly members of
/// one of the roles previously mentioned.<br>
/// The default is to list  all the users in the instance. Pass the namespace in the
/// second parameter to limit the list to the user with write access to the Ens.Alerting.ManagedAlert
/// data in a specific namespace.<br>
/// A user must be permitted to edit alerts to call this API.
ClassMethod ListAlertingUsers(Output pUsers As %String, pLimitToNamespace As %String = "") As %Status
{
}

ClassMethod findAlertMembers(Output pUsers, pLimitToNamespace As %String = "") As %Status [ Internal, Private ]
{
}

/// Internal private method to find all users in ROLE hierarchy for array of roles given by pRoles
ClassMethod findUserMembers(ByRef pRoles, Output pUsers) As %Status [ Internal, Private ]
{
}

/// Find User and Role members for role pRole. Called by findUserMembers
ClassMethod findMembers(pRole As %String, ByRef pUsers, ByRef pRolesAleadyExamined, ByRef pNewRolesToExamine) As %Status [ Internal, Private ]
{
}

/// Internal helper method to identify if user has access to the global
/// Error handling to be trapped by caller.
ClassMethod filterUsersOnGlobalAccess(ByRef pUsers As %String, pNamespace As %String = {$NAMESPACE}, pGlobal As %String = "", pSubscript As %String = "", pAccessMode As %String = "READ") As %Boolean [ Internal, Private ]
{
}

/// Wrapper for getting secondary data. User needs Read access to the DB for 'Password'. Only support Password.
ClassMethod SecondaryGet(pKey As %String = "", pProperty As %String = "", ByRef pSC As %Status) As %String [ Internal ]
{
}

/// Secure wrapper for writing secondary data. Only support Password.
ClassMethod SecondarySet(pValue As %String = "", pKey As %String = "", pProperty As %String = "") As %Status [ Internal ]
{
}

/// Secure wrapper for deleting secondary data.  Only support Password.
ClassMethod SecondaryDelete(pKey As %String = "", pProperty As %String = "") As %Status [ Internal ]
{
}

/// Method used by PEX Components Registration to bounce the server if necessary for ensuring the correct file is used
/// User might not have %Admin_Manage and %DB_IRISSYS privileges
/// Instead require WRITE priv on the %Ens_Code resource in order to gain elevated privileges.
ClassMethod BounceExternalLanguageServer(pServer As %String = "") As %Status
{
}

ClassMethod doELSBounce(pServer As %String = "") As %Status [ Internal, Private ]
{
}

/// Method used by Context Search to get list of External Language Servers
/// User might not have SQL privs on the Config.Gateways::ListShort query
/// Instead require WRITE priv on the %Ens_ProductionConfig resource in order to gain elevated privileges.
ClassMethod GetExternalLanguageServers(ByRef pServers) As %Status
{
}

ClassMethod findExternalLanguageServers(ByRef pServers) As %Status [ Internal, Private ]
{
}

/// Method used by DTL Test page that requires de-serialization of the test input data
/// User might not have SQL privs on the %Dictionary.ParameterDefinition table
/// If the User does not have SQL Select privs on %Dictionary.ParameterDefinition table then user
/// requires USE priv on the %Ens_DTLTest resource in order to gain elevated privileges.
ClassMethod GetMapParent(pInputClass As %String, pIsBatch As %Boolean = 0, Output pSC As %Status = {$$$OK}) As %Status
{
}

ClassMethod findMapParent(pInputClass As %String, pIsBatch As %Boolean = 0, pEscalate As %Boolean = 0, Output pSC As %Status = {$$$OK}) As %Status [ Internal, Private ]
{
}

/// Method used by Ens.Director::CreateBusinessService
/// to aid checking if process originated with a TCP connection so
/// that INTERRUPTs and DISCONNECT detects can be disabled.
/// Checks the current process devices and returns the first one
/// if it is a TCP device. Otherwise it returns empty string.
///
ClassMethod GetFirstDeviceIfTCP(pSC As %Status = {$$$OK}) As %String [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Interface metrics
ClassMethod SetSAMSensorsForInteropInterfaces(pSAMSensors As SYS.Monitor.SAM.Sensors, pStart As %TimeStamp = "", pEnd As %TimeStamp = "", pNamespace As %String = "") As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Database Impact metrics
ClassMethod SetSAMSensorsForInteropCurrentDatabaseImpact(pSAMSensors As SYS.Monitor.SAM.Sensors, pStart As %TimeStamp = "", pEnd As %TimeStamp = "", pDatabase As %String = "") As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Database Impact metrics
ClassMethod SetSAMSensorsForInteropHistoricalDatabaseImpact(pSAMSensors As SYS.Monitor.SAM.Sensors, pStartMonth As %String = "", pEndMonth As %String = "", pDatabase As %String = "") As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Interfaces metrics
ClassMethod SetSAMSensorsForInteropHistoricalInterfaces(pSAMSensors As SYS.Monitor.SAM.Sensors, pStartMonth As %String = "", pEndMonth As %String = "", pNamespace As %String = "") As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Volume metrics
ClassMethod SetSAMSensorsForInteropCurrentVolume(pSAMSensors As SYS.Monitor.SAM.Sensors, pStart As %TimeStamp = "", pEnd As %TimeStamp = "", pNamespace As %String = "") As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Volume metrics
ClassMethod SetSAMSensorsForInteropHistoricalVolume(pSAMSensors As SYS.Monitor.SAM.Sensors, pStartMonth As %String = "", pEndMonth As %String = "", pNamespace As %String = "") As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Range metrics
ClassMethod SetSAMSensorsForInteropCurrentRange(pSAMSensors As SYS.Monitor.SAM.Sensors) As %Status [ Internal ]
{
}

/// Internal method to set SAM Sensors for Interoperability Range metrics
ClassMethod SetSAMSensorsForInteropHistoricalRange(pSAMSensors As SYS.Monitor.SAM.Sensors) As %Status [ Internal ]
{
}

/// Internal method to create XML Schema global
/// for user with appropriate permission
ClassMethod CreateXMLSchemaGlobal() As %Status [ Internal ]
{
}

}
