/// Class which lists things coming to or from the client as part of the CCR process
Class %Studio.SourceControl.ItemSet Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

/// This is a workaround for PL 97361.
/// This is an Identity property (name for IDKEY) used to define the ItemSetMap Index needed for server-side processing.
/// ItemSet is marked private and readonly to force the default system assigned id values and to discourage use of this
/// property by applications.
/// The RowId should be referred to as %ID in SQL queries, but by default may also be referred to as ID, IDn is used if
/// ID or ID(n-1) is defined explicitly. Applications should refer to the ID using the %Id() accessor.
Property %PL97361 As %Integer(MINVAL = 1, XMLPROJECTION = "NONE") [ Identity, Internal, Private, ReadOnly, SqlFieldName = %IDKEY ];

/// The <var>MANAGEDEXTENT</var> parameter can be set to 0 (zero) to cause the Extent Manager
/// to ignore this class. If set to 1 then the Extent Manager will register globals used by
/// the class and detect collisions. Unmanaged extents (MANAGEDEXTENT = 0) are not checked.
/// Currently, only classes using default storage (%Storage.Persistent) can be managed.
///
/// This is required since each Namespace will have it's own Change extent
Parameter MANAGEDEXTENT As INTEGER [ Constraint = "0,1", Flags = ENUM ] = 0;

/// This Parameter should be updated when synced from Perforce
Parameter SrcVer = "$Id: //iris/2024.3.0/databases/sys/cls/Studio/SourceControl/ItemSet.xml#1 $";

/// Revision number of this class when compiled as part of the //custom_ccrs/_common/config/... branch.
/// This version will not be updated (by design) when the class is integrated to other branches.
/// This allows the user to tell what version of the Studio client tools are in use.
Parameter Version = 167;

/// This is the string used for naming the default proxy CSPApplication that is referenced for exporting/importing files
Parameter CSPAppLink = "itemsetsourcelink";

/// CCR for which this ItemSet was created
Property CCR As %String;

/// Site Code for which this ItemSet was created
Property SiteCode As %String(XMLPROJECTION = "NONE") [ Calculated, SqlComputeCode = {s {*}=$ZCVT($E({CCR},1,4),"U")}, SqlComputed ];

/// If ItemSet is generated by CCR, this contains a list of changelist numbers that are included in this ItemSet
Property Changelists As %List(XMLPROJECTION = "NONE");

/// Tracks the deployment of the ItemSet to Primary and Secondary Environments by EID using same values as Deployed (0,1,2,3)
/// Does not need abandoned or stale since these are specific to the whole ItemSet
/// <p> a value of 0 means that it has not been deployed
/// <p> a value of 1 means that it has been downloaded but not yet deployed
/// <p> a value of 2 means that it has been deployed successfully
/// <p> a value of 3 means that there has been an attempt to deploy but there was an error
Property ClientResponses As array Of %Integer(XMLPROJECTION = "NONE");

/// Indicates that this ItemSet (created on a Client) has been committed to Perforce by the CCR Server
/// <p> a value of 0 means that it has not been committed
/// <P> a value of 1 means that it is currently being committed
/// <P> a value of 2 means that it has been committed successfully
/// <p> a value of -1 means that it has been aborted
Property Committed As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = "0" ];

/// Time the ItemSet was committed to Perforce
Property CommittedTimestamp As %TimeStamp;

/// User who created or imported this ItemSet; this should be a CCR Username
Property CreatedBy As %String;

/// Time the ItemSet was created
Property CreateTimestamp As %TimeStamp [ InitialExpression = {$zdt($H,3)}, Required ];

/// Indicates the status of the deployment of this ItemSet
/// <p> a value of 0 means that it has not been deployed
/// <p> a value of 1 means that it has been downloaded but not yet deployed
/// <p> a value of 2 means that it has been deployed successfully
/// <p> a value of 3 means that there has been an attempt to deploy but there was an error
/// <p> a value of -1 means that it has been abandoned
Property Deployed As %Integer(XMLPROJECTION = "NONE") [ InitialExpression = "0" ];

/// Time the ItemSet was deployed
Property DeployedTimestamp As %TimeStamp;

/// Environment for/from which this ItemSet was created
Property Environment As %String(VALUELIST = ",BASE,TEST,UAT,LIVE");

/// Time the ItemSet was exported
Property ExportTimestamp As %TimeStamp;

/// Time the ItemSet was imported
Property ImportTimestamp As %TimeStamp;

/// List of Items in this ItemSet, where the key is the item name, and the value is add/edit/delete/failed
Property ItemList As array Of %String(COLLATION = "EXACT");

/// Enables Fast lookup of all ItemSets containing a given Item
/// Index to match items in the itemlist
/// This is called item map because it maps items to the individual itemset
/// When PL97361 is resolved for all supported client versions, the first subscript should be changed from %PL97361 to %%ID
/// Location path and filename on local file system where exported XML for this ItemSet is stored
Property ItemSetFile As %String(MAXLEN = 200, XMLPROJECTION = "NONE");

/// name of ItemSet file for this ItemSet
Property ItemSetFilename As %String [ Calculated, SqlComputeCode = {s {*}=##class(%File).GetFilename({ItemSetFile})}, SqlComputed ];

/// Additional identifying Label for the Payload filename
Property FileLabel As %String;

/// Perforce Job that was exported in this ItemSet; or Job associated with this CCR on this Server
Property Job As %String [ Calculated, SqlComputeCode = {s {*}=$S(($$Sys^%buildccr="CCR")&&('($$IsLIVE^%buildccr)):"dev"_{CCR}_"-"_$piece($system,":"),1:{CCR}) }, SqlComputed ];

/// Global stream storing the most recent Log for this system
Property Log As %Stream.GlobalCharacter(XMLPROJECTION = "NONE");

/// Global stream storing the cumulative logs for this ItemSet on this system
Property LogHistory As %Stream.GlobalCharacter(XMLPROJECTION = "NONE");

/// readable name of this ItemSet; used for file names and project name
Property Name As %String(MAXLEN = 128);

/// Object forthe payload file for this ItemSet
Property Payload As %FileCharacterStream(TRANSLATETABLE = "RAW");

/// Location on local file system where Payload for this ItemSet is stored
Property PayloadFile As %String(MAXLEN = 200, XMLPROJECTION = "NONE");

/// name of Payload for this ItemSet
Property PayloadFilename As %String [ Calculated, SqlComputeCode = {s {*}=##class(%File).GetFilename({PayloadFile})}, SqlComputed ];

/// Transient property to store the server-side ID for this ItemSet
Property ServerItemSetID As %Integer(XMLPROJECTION = "NONE") [ Calculated, SqlComputeCode = {s {*}=$P({Name},"_",*)}, SqlComputed ];

/// Transient property to store the session token to pull this ItemSet from the Server
Property SessionToken As %String(XMLPROJECTION = "NONE") [ Calculated ];

/// Name of the server where this ItemSet was created
Property Source As %String(MAXLEN = 100) [ InitialExpression = {$get(^SYS("SourceControl","ItemSetConfig","Source"),$zu(54,0))} ];

/// System for which this CCR was created
Property System As %String;

/// generic intended destination for this ItemSet
Property Target As %String(VALUELIST = ",Server,Client") [ Required ];

/// the Utility CSPApplication, called '/itemsetsourcelink*' acts as a mechanism to 'tar' and 'untar' ItemSets for transport to/from Server/Client
/// this makes sure that the CSP Application is defined for this namespace, and finds where it points on the file system
ClassMethod GetPathTranslation(ByRef pRoot, ByRef pPath) As %Status
{
}

/// takes an item name (or an array of names), and converts it from the file system representation to the csp application representation, or vice versa
/// if pName includes a Perforce version identifier (e.g. &lt;file&gt;#&lt;ver&gt; ignore the version when validating the file's existence<p>
/// When <argument>pValidate</argument> is '1', the method will confirm that the file exists.
ClassMethod NameCVT(ByRef pNameList = "", pValidate As %Boolean = 0, pDropLeadingSlash As %Boolean = 0) As %Status
{
}

/// as cspapplication paths must be unique, if multiple namespaces on this instance need to send/receive
/// ItemSets, then we may be using a secondary cspApp naming convention which is '/..#CSPAppLink<Namespace>/'
/// When this is the case, this method exchanges the values in an XML file on disk to or from the standard (/..#CSPAppLink/)
/// or local csp application name.
ClassMethod FindReplaceInFile(pFind, pReplace, pFile, pExtensionRename = "", pLog As %Stream.Object = "") As %Status
{
}

/// Method to load an unpacked itemset.  This handles IRIS to Cache conversion
ClassMethod LoadPayload(pPayloadFile, pQspec = "", ByRef pErrorlog, ByRef pLoadedlist, pListOnly = 0, ByRef pToLoad = "") As %Status
{
}

/// Method to create a ItemSet and Payload file which can be passed to another system for import
///  pItems is an array subscripted by the item name (full file name on file system), with a value of add/edit/delete
Method Create(pItems = "", pJob = "", pCreatedBy = "", pLabel = "", pTarget = "Server", pCCR = "", pEnv = "") As %Status
{
}

/// Export the ItemSet to the file system
ClassMethod Export(pID = "", ByRef pItemSetFile) As %Status
{
}

/// Export the ItemSet to the file system
Method ExportToFile(ByRef pItemSetFile) As %Status
{
}

/// Import a ItemSet from the file system
ClassMethod Import(pItemSetFile, ByRef pObj As %Studio.SourceControl.ItemSet = "", pServerISID As %String, pToken As %String) As %Status
{
}

/// Given a list of files on the OS, returns a list of those that are Readonly, and a list of those that are writable
ClassMethod CheckWritableState(pList = "", ByRef pReadOnly, ByRef pReadWrite, ByRef pAbsent, ByRef pLog As %Stream.Object = "") As %Status
{
}

/// method takes a file name, or an array of filenames, and changes the pReadonly state to the pReadOnly value
ClassMethod ChangeWritableState(pList = "", pReadOnly As %Boolean = 0, ByRef pLog As %Stream.Object = "") As %Status
{
}

/// Load the items in this ItemSet into the local file system
/// If the file already exists and is ReadOnly, then it will be changed to ReadWrite, loaded to the OS, and then marked as ReadOnly again
/// If the file exists and is ReadWrite, it will not be overwritten by the ItemSet load, unless pOverwrite is set to true
Method LoadToOS(pQspec As %String = {$get(^SYS("SourceControl","Misc","ImportFlags"),"kvfbryu")}, ByRef pErrorlog As %String, ByRef pLoadedlist As %String, ByRef pReadWrite As %String, pListonly As %Boolean = 0, pOverwrite As %Boolean = 0, pP4user = "", pP4pass = "") As %Status
{
}

/// Loads the files from the file system into the namespace; creates a project and (optionally) compiles the project<P>
/// When pCompileProject=1, the project will be compiled after load is complete<P>
/// When pCompileProject=2, the project will only be compiled after load if the ItemSet does not contain this class in it's payload (i.e. pIncPercent'=2)
Method LoadToNS(pQspec As %String = {$get(^SYS("SourceControl","Misc","ImportFlags"),"kvfbryu")}, pLoadedlist, pListonly As %Boolean = 0, pCompileProject As %Boolean = 0, ByRef pIncPercent As %String, ByRef pProjectName As %String) As %Status
{
}

/// Logic used on the server to submit contents of a ChangeList to Perforce
Method P4SubmitItemSet(pQspec As %String = "kvfbryu", ByRef pErrorlog As %String, ByRef pLoadedlist As %String, pP4user As %String = "", pP4pass As %String = "") As %Status
{
}

Method P4Revert(SCs = "", changelist = "", perforceBranch = "", pP4user, pP4pass) As %Status
{
}

/// Wrapper that calls List WebService to get a result-set listing ItemSets for a given pJob and pEnv
ClassMethod WSList(pJob As %String = "", pEnv As %String = "", pToken As %String = "", ByRef pRS As %XML.DataSet) As %Status
{
}

/// Wrapper that calls Download WebService to download an ItemSet XML for a given ID to the local filesystem
ClassMethod WSDownload(pJob As %String = "", pEnv As %String = "", pToken As %String = "", pDir As %String = "", pISID As %String = "", ByRef pFilename As %String) As %Status
{
}

/// Wrapper that calls ConfirmLoad WebService to send back the results of an ItemSetLoad
ClassMethod WSConfirmLoad(pISID As %String = "", pJob As %String = "", pEnv As %String = "", pToken As %String = "", pLoadStatus As %Status = "", ByRef pLog As %GlobalCharacterStream) As %Status
{
}

/// Wrapper that calls Upload WebService to upload an ItemSet XML for a given ID to the ItemSet Server
ClassMethod WSUpload(pItemSetFile As %String = "", pCCR As %String = "", pToken As %String = "", pEmailRecipient As %String = "") As %Status
{
}

ClassMethod WSCanUpload(pCCR As %String, pOrg As %String, pSystem As %String, ByRef pReasonString As %String = "") As %Status
{
}

ClassMethod WSDetails(pCCR As %String, pToken As %String, Output pDataSet As %XML.DataSet) As %Status
{
}

/// Method to validate a CCR for Upload given a CCR ID and Token
ClassMethod ValidateCCR(siteCode As %String, sysCode As %String, state As %String, Output reasonString) As %Boolean
{
}

/// Wrapper method for interactively downloading list of ItemSets from server via Web Service, and then selecting and saving one to disk
ClassMethod Download(pLoad As %Boolean = 1)
{
}

/// Wrapper method for importing, loading to file system (OS), loading to namespace and compiling ItemSet into this namespace
/// Can be either interactive or scripted
ClassMethod Load(pInteractive As %Boolean = 1, pItemSetFile = "", pLoadToOS As %Boolean = "", pOverwrite As %Boolean = 0, pLoadToNS As %Boolean = "", pCompile As %Boolean = "", pQspec = {$get(^SYS("SourceControl","Misc","ImportFlags"),"kvfbryu")}, pP4user, pP4pass, ByRef pNewID As %String, pServerISID = "", pToken = "") As %Status
{
}

/// Wrapper method for bundling pending changes, and added them to an ItemSet which can be uploaded to CCR for check-in
/// Can be either interactive or scripted
ClassMethod Bundle(pInteractive As %Boolean = 1, pIncludeAllUncommitted As %Boolean = 0, pCCR = "", pCreatedBy, pPerformUpload = 1, pEmailRecipient = "") As %Status
{
}

/// Wrapper method for Uploading uncommitted changes to CCR for check-in
/// Can be either interactive or scripted
ClassMethod Upload(pInteractive As %Boolean = 1, pCCR, pToken, pItemSetFile, pEmailRecipient = "") As %Status
{
}

/// Utility method to change mount setting for IRISLIB; passing no mode argument will return the current status
ClassMethod IRISLIBReadOnly(mode = "") As %Boolean
{
}

/// Utility method to check the OS username of the current process make sure for UNIX it matches the username that the Super Server is running as
ClassMethod IsValidOSProcessName(ByRef pCurrentProcess, ByRef pSServer) As %Boolean
{
}

/// check for and return Instance Wide Primary Namespace if it is definted and exists
ClassMethod HasInstancePrimaryNamespace(Output namespace As %String) As %Boolean
{
}

/// Proxy configuration for un-authenticated proxy connection
ClassMethod SetUpProxyUnauth(ByRef ws As %SOAP.WebClient)
{
}

/// Returns the count of ItemSets destined for the Server
ClassMethod ServerItemSetCount(pCCR) As %Integer
{
}

/// Displays the LogHistory of an ItemSet
ClassMethod DisplayLog(pID) As %Status
{
}

Method ServerItemSetIDSet(val) As %Status
{
}

Method ServerItemSetIDGet() As %String
{
}

Method SessionTokenSet(val) As %Status
{
}

Method SessionTokenGet() As %String
{
}

/// Version string used to append to environment name when transmitting data to the CCR Server web services.  Uses '@' as postfix piece separator and avoids
/// use of ":" which can be used to indicate a secondary postfix of EnvID
ClassMethod VersionPostfix() As %String [ CodeMode = expression ]
{
}

/// Logging instance method for this object; redirects IO to ..Log, and then saves it to ..LogHistory and saves the object when logging is turned off
Method LogToggle(ByRef pIO = "")
{
}

/// Logging class method; redirects IO to either a %Stream.GlobalCharacter or a %Stream.FileCharacter
ClassMethod LogToggleCore(ByRef pIO = "", ByRef pLog As %Stream.Object)
{
}

/// holder method for output redirect tags; returns the name of the compiled routine where these tags exist
/// [Previously private]
ClassMethod LogTags() As %String [ ProcedureBlock = 0 ]
{
}

/// Handles all compile-time logic for this class
/// [Previously private]
ClassMethod OnToolsCompile() [ CodeMode = objectgenerator, Internal ]
{
}

/// Returns value the Major.Minor version for this instance, so it can be used in comparison code which makes sure certain features are used in appropriate versions
ClassMethod InstanceVersion() As %Numeric [ CodeMode = expression ]
{
}

/// Check indexes defined in this class build them if they have never been built.
/// Any errors are thrown as an exception.
ClassMethod BuildNewIndexes() [ CodeMode = objectgenerator, Internal ]
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

}