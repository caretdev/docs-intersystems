/// The auditing system allows the user to capture events
/// which occur on the system, and log them to an audit file.
/// <br><br>
/// When running SQL queries on the audit log, it is helpful to use the UTCTimestamp
/// in the WHERE clause to speed up the query, and minimize the amount of data
/// which is returned. For example: <br><br>
///
/// 	SELECT SystemID,AuditIndex,UTCTimeStamp,EventSource,EventType,Event,Pid,CSPSessionID,Username,Description<br>
/// 	FROM %SYS.Audit<br>
/// 	WHERE UTCTimeStamp BETWEEN :UTCBeginDateTime AND :UTCEndDateTime<br>
/// 	ORDER BY UTCTimeStamp DESC, SystemID DESC, AuditIndex DESC<br>
/// 	<br>
/// 	The UTCTimeStamp is the UTC time in ODBC format. To convert a local $H time to this format use
/// 	the following:<br><br>
/// 	s x=##Class(%SYS.Audit).ConvertLocalHToUTC($H)
/// 	<br>
/// 	The UTCTimeStamp which is returned as part of the record, can be converted to local time
/// 	with the following:<br><br>
/// 	s x=##Class(%SYS.Audit).ConvertUTCToLocal(UTCTimeStamp)<br><br>
///
/// Access to all the audit class methods require the %Admin_Secure:"Use" privilege.<br><br>
/// If you wish to modify an audit record, use the Modify() class method. If you wish to modify it using direct object
/// you must first use the OpenAuditRecord() class method and then the %Save() method. Note that saving the object in
/// this way also requires that the user have write access to the Audit database resource.<br>
///
Class %SYS.Audit Extends (%Persistent, %SYSTEM.Help, %XML.Adaptor) [ Inheritance = right, StorageStrategy = Audit, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/latest/databases/sys/cls/Security/Users.xml#66 $"_$c(13,10)_"Last Change:   $DateTime: 2022/06/08 09:18:09 $"_$c(13,10)_"Changelist #:  $Change: 5432096 $"};

Property AuditIndex As %BigInt;

/// Authentication method process used.
Property Authentication As Security.Datatype.Authentication;

/// Executable name on the client machine.
Property ClientExecutableName As %String(MAXLEN = 128);

/// IP address of the client, as passed from client. This corresponds to the ClientIPAddress in %SYS.ProcessQuery.
Property ClientIPAddress As %String(MAXLEN = 128);

/// Session ID of the process if a CSP process.
Property CSPSessionID As %String(MAXLEN = 16);

/// Description of the audit event.<br>
/// Control characters less than $c(32) are not allowed in this data except
/// for CR,LF, and tab.
Property Description As %SYS.AuditString(MAXLEN = 128);

ClassMethod DescriptionLogicalToDisplay(Description As %String) As %String [ Internal ]
{
}

/// Name of the audit event.
Property Event As %String(MAXLEN = 64);

/// EventData -- arbitrary data associated with this event.<br>
/// Control characters less than $c(32) are not allowed in this data except
/// for CR,LF, and tab.
Property EventData As %SYS.AuditString(MAXLEN = 16384);

ClassMethod EventDataLogicalToDisplay(EventData As %String) As %String [ Internal ]
{
}

/// Event Source (system events all have "%System" here).
Property EventSource As %String(MAXLEN = 64);

/// EventType.
Property EventType As %String(MAXLEN = 64);

/// Group of the audit event.
Property GroupName As %String(MAXLEN = 64);

/// Job ID
Property JobId As %String(MAXLEN = 16);

/// Job Number
Property JobNumber As %Integer [ Calculated, SqlComputeCode = { set {*}=$zb({JobId},65535,1)}, SqlComputed, SqlFieldName = JobNumber ];

/// Namespace process was executing in.
Property Namespace As %String(MAXLEN = 128);

ClassMethod NamespaceLogicalToDisplay(Namespace As %String) As %String [ Internal ]
{
}

/// Operating system username of process.<br>
/// Username given to the process by the operating system when the process
/// is created. When displayed, it is truncated to 16 characters. Note that the real O/S
/// username is only returned when connecting to UNIX or VMS systems; For Windows, it
/// will return the O/S username for a console process, but for telnet it will return
/// the $USERNAME of the process. For client connections, it contains the O/S username
/// of the client.
Property OSUsername As %String(MAXLEN = 16);

/// Process ID.<br>
/// Note that on VMS system, the Hex pid is stored internally as a decimal value, i.e. $zh(pid).
Property Pid As %String(MAXLEN = 16);

/// $ROLES value that was active when the audit event occurred.
Property Roles As %String(MAXLEN = 2048);

/// Routine running including DB and System.
Property RoutineSpec As %String(MAXLEN = 512);

/// IP address of the client, as detected on the TCP channel by the server process.
/// This corresponds to the StartupClientIPAddress in %SYS.ProcessQuery.
Property StartupClientIPAddress As %String(MAXLEN = 128);

/// Any %Status variable passed into the call.
Property Status As %Status [ InitialExpression = 1 ];

/// SystemName:ConfigurationName of where the event was generated.<br>
/// This is useful when merging separate audit streams from different systems.
Property SystemID As %String(MAXLEN = 128);

/// User info field
Property UserInfo As %String(MAXLEN = 64);

/// Username from $Username that was active when audit event occurred.
Property Username As %SYS.AuditString(MAXLEN = 160);

/// UTC $ZTIMESTAMP value when the audit event occurred.
Property UTCTimeStamp As %String(MAXLEN = 64);

/// Apply the audit header to the audit file.<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod ApplyAuditHeader() As %Status [ Internal ]
{
}

/// Determine if any records in the audit header are prior to EndDateTime.
ClassMethod CheckHeader(EndDateTime As %String) As %Integer [ Internal, Private ]
{
}

/// Converts Audit records to the current IRIS format.<br>
/// This is called before any of the Audit methods runs and also during an upgrade to make sure that the audit global
/// is in the current format.<br>
/// It will also check if there are any audit records in Cache' format (stored in the ^CacheAuditD
/// global) and merge those globals into the current IRIS audit global.<br>
/// Note that journaling is turned off for the process during the conversion.<br>
/// <br>
/// Parameters:<br>
/// Count (byref) - Returned count of number of audit records converted.<br>
/// 0 - Version already matches.<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Convert(ByRef Count As %Integer) As %Status
{
}

/// Convert the local $H time to an ODBC format string in UTC.<br>
/// When using SQL, use this function to convert a local time in $h to UTC time to
/// use in your SELECT statement.<br>
ClassMethod ConvertLocalHToUTC(LocalH As %String) As %String
{
}

/// Convert a UTCTimeStamp in ODBC format to Local Time in ODBC format.<br>
ClassMethod ConvertUTCHToLocal(UTC As %String) As %String
{
}

ClassMethod ConvertUTCToLocal(UTC As %String) As %String [ Internal ]
{
}

/// Copy matching audit records to a defined namespace.<br>
/// Parameters:<br>
/// BeginDateTime - $zdatetime($H,3) value of the first audit record to copy, "" = first record<br>
/// EndDateTime - $zdatetime($H,3) value of the Last audit record to copy, "" = Last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// Namespace - Valid namespace to copy audit records to<br>
/// Flags - Bit 0 - Delete audit record after copy<br>
/// Return values:<br>
/// NumCopied (byref) - Number of audit records copied<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Copy(ByRef NumCopied As %Integer, Namespace As %String, Flags As %Integer = 0, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*") As %Status
{
}

/// Creates the audit globals with the correct collation.
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod CreateGlobals(Directory As %String) As %Status [ Internal ]
{
}

/// Delete matching audit records.<br>
/// Parameters:<br>
/// BeginDateTime - $zdatetime($H,3) value of the first audit record to delete,
/// use "" to begin with the first record<br>
/// EndDateTime - $zdatetime($H,3) value of the Last audit record to delete.
/// Audit records will be deleted up through, but not including, this value. Use "" to delete through last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// JSONSearch - String to search for in the JSON Data field
/// Return values:<br>
/// NumDeleted (byref) - Number of audit records deleted<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Delete(ByRef NumDeleted As %Integer, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*", JSONSearch As %String = "") As %Status
{
}

/// Erase the audit file.<br>
/// Flags:
///  0 - Erase all contents<br>
///  1 - Erase and create new audit file<br>
///  2 - Erase and create new audit file, treat as encryption state changed<br>
/// Note that bit 1 infers that ALL data in the audit database will be deleted, not just Audit data<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Erase(Flags As %Integer = 0) As %Status
{
}

/// Audit record exists.<br>
/// This method checks for the existence of an Audit record in the security database.<br>
/// Parameters:<br>
/// UTCTimeStamp - UTC timestamp of the audit record<br>
/// SystemID - System ID of the audit event, usually NODE:CFGNAME<br>
/// AuditIndex - Index number of the audit record<br>
/// Return values:<br>
/// If Value of the method = 0 (Audit record does not exist, or some error occured)<br>
/// Audit = Null<br>
/// Status = Audit "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (Audit record exists)<br>
/// Audit = Object handle to Audit record<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
/// If you wish to modify the returned object, use the Modify() method.<br>
ClassMethod Exists(UTCTimeStamp As %String = "", SystemID As %String = "", AuditIndex As %Integer = 0, ByRef Audit As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// Export matching records to an xml file.<br>
/// Parameters:<br>
/// FileName - Valid filename to copy audit records to<br>
/// Flags - Bit 0 - Delete audit record after export<br>
/// BeginDateTime - $zdatetime($H,3) value of the first audit record to copy, "" = first record<br>
/// EndDateTime - $zdatetime($H,3) value of the Last audit record to copy, "" = Last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// Username - Comma separated list of user names to copy, "*" = All<br>
/// Return values:<br>
/// NumCopied (byref) - Number of audit records exported.<br>
/// Note: Two audit record will get written out when this is called in case the first one
/// is deleted as part of the export operation.<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Export(FileName As %String, ByRef NumExported As %Integer, Flags As %Integer = 0, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*") As %Status
{
}

/// Get the Audit properties.<br>
/// Parameters:<br>
/// SystemID - System ID of the audit event, usually NODE:CFGNAME<br>
/// AuditIndex - Index number of the audit record<br>
/// Return values:<br>
/// Properties - Array of properties<br>
/// Properties("AuditIndex")<br>
/// Properties("ClientExecutableName")<br>
/// Properties("ClientIPAddress")<br>
/// Properties("CSPSessionID")<br>
/// Properties("Description")<br>
/// Properties("Event")<br>
/// Properties("EventData")<br>
/// Properties("EventSource")<br>
/// Properties("EventType")<br>
/// Properties("JobId")<br>
/// Properties("Namespace")<br>
/// Properties("Pid")<br>
/// Properties("Roles")<br>
/// Properties("RoutineSpec")<br>
/// Properties("StartupClientIPAddress")<br>
/// Properties("SystemID")<br>
/// Properties("Username")<br>
/// Properties("UTCTimeStamp")<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Get(UTCTimeStamp As %String, SystemID As %String, AuditIndex As %Integer, ByRef Properties As %String) As %Status
{
}

/// Get audit database (directory) using $$$GetAuditDatabase or the name of the database
/// where we would audit to if it were turned on.  Code copied from ..Erase() for use by
/// shadowing.
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod GetAuditDatabase() As %String [ Internal ]
{
}

/// Get the Audit properties.<br>
/// Parameters:<br>
/// Audit - Object handle to an audit record
/// Properties
/// Get the Audit properties.<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod GetProperties(Audit As %ObjectHandle, ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Import audit records from an xml file.<br>
/// Parameters:<br>
/// FileName - Valid filename to import audit records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
/// Audit records may not be imported into the %SYS namespace<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Import(FileName As %String, ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Modify an Audit record's properties.<br>
/// Modifies an Audit records properties from the security database.<br>
/// Parameters:<br>
/// UTCTimeStamp - UTC timestamp of the audit record<br>
/// SystemID - System ID of the audit event, usually NODE:CFGNAME<br>
/// AuditIndex - Index number of the audit record<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified.<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Modify(UTCTimeStamp As %String, SystemID As %String, AuditIndex As %Integer, ByRef Properties As %String) As %Status
{
}

/// Stops auditing.<br>
/// Called when the system audit parameters change, and at shutdown.
/// Do not call directly to stop auditing.
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod Stop() As %Status [ Internal ]
{
}

/// Start/Stop/Switch the Audit file based on the contents of the audit configuration.<br>
/// Called only when the audit parameters are changed in the Security.System class.
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod UpdateAuditFile() As %Status [ Internal ]
{
}

/// Write a record to the audit file.<br>
/// Used internally by the Config.* and Security.* methods.
ClassMethod WriteToAuditFile(Source As %String, Type As %String, Name As %String, EventData As %String, Description As %String, Force As %Integer = 0) As %Boolean [ Internal ]
{
}

/// List all audit records, brief display, reverse order. <br>
/// Parameters:
/// BeginDateTime - $zdatetime($H,3) value of the first audit record, "" = first record<br>
/// EndDateTime - $zdatetime($H,3) value of the last audit record, "" = Last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// Pids - Comma separated list of Pids,VMS systems passed in Hex<br>
/// Groups - Comma separated list of Groups (currently unused)<br>
/// Authentication - Comma separated list of authentication types<br>
/// Flags - 0=Descending (most recent first) 1=Ascending (earliest first)<br>
/// JSONSearch - String to search for in the JSON Data field
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*", Pids As %String = "*", Groups As %String = "*", Authentications As Security.Datatype.Authentication = "*", Flags As %Integer = 0, JSONSearch As %String = "") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// List audit records ordered by Username.
/// Parameters:
/// BeginDateTime - $zdatetime($H,3) value of the first audit record, "" = first record<br>
/// EndDateTime - $zdatetime($H,3) value of the Last audit record, "" = Last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod ListByUserExecute(ByRef %qHandle As %Binary, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*", Pids As %String = "*", Groups As %String = "*", Authentications As Security.Datatype.Authentication = "*") As %Status [ Internal ]
{
}

ClassMethod CheckAuthentication(Select, Data) As %Boolean [ Internal, SqlProc ]
{
}

ClassMethod ListByUserFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListByUserExecute ]
{
}

ClassMethod ListByUserClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListByUserExecute ]
{
}

/// List audit records ordered by Event Source, Event Type, and Event.<br>
/// Parameters:<br>
/// BeginDateTime - $zdatetime($H,3) value of the first audit record, "" = first record<br>
/// EndDateTime - $zdatetime($H,3) value of the Last audit record, "" = Last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod ListByEventExecute(ByRef %qHandle As %Binary, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*", Pids As %String = "*", Groups As %String = "*", Authentications As Security.Datatype.Authentication = "*") As %Status [ Internal ]
{
}

ClassMethod ListByEventFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListByEventExecute ]
{
}

ClassMethod ListByEventClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListByEventExecute ]
{
}

/// List audit records ordered by Pid.<br>
/// Parameters:<br>
/// BeginDateTime - $zdatetime($H,3) value of the first audit record, "" = first record<br>
/// EndDateTime - $zdatetime($H,3) value of the Last audit record, "" = Last record<br>
/// The following parameters may be specified as a comma separated list as follows:<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note that these are all case insensitive matches<br>
/// EventSources - Comma separated list of valid event sources<br>
/// EventTypes - Comma separated list of valid event types<br>
/// Events - Comma separated list of event names<br>
/// Usernames - Comma separated list of user names<br>
/// SystemIDs - Comma separated list of System:Config names<br>
/// Requires %Admin_Secure:"Use" privilege.<br>
ClassMethod ListByPidExecute(ByRef %qHandle As %Binary, BeginDateTime As %String = "", EndDateTime As %String = "", EventSources As %String = "*", EventTypes As %String = "*", Events As %String = "*", Usernames As %String = "*", SystemIDs As %String = "*", Pids As %String = "*", Groups As %String = "*", Authentications As Security.Datatype.Authentication = "*") As %Status [ Internal ]
{
}

ClassMethod ListByPidFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListByPidExecute ]
{
}

ClassMethod ListByPidClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListByPidExecute ]
{
}

/// Open an Audit Log item, given its ID information (UTC date, system ID, and audit index). <br>
/// Requires %Admin_Secure:"Use" privilege.<br>
/// If you wish to modify the returned object, use the Modify() method.<br>
ClassMethod OpenAuditItem(UTCTimeStamp As %String, SystemID As %String, AuditIndex As %BigInt) As %SYS.Audit
{
}

Method %OnOpen() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

}
