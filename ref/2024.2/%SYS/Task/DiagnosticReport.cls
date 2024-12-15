/// Task provided by the WRC to automate the collection of reports, and to automate them being sent to the WRC for achival and configuration history
Class %SYS.Task.DiagnosticReport Extends (%SYS.Task.Definition, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter TaskName = "DiagnosticReport";

Parameter XMLNAME = "ProfilerData";

/// if this field is filled, then the files are left in the local Archive
Property ArchiveDirectory As %String(XMLPROJECTION = "NONE");

/// flag to indicate if this should be Advanced Report; default is to collect a Basic report
Property AdvancedReport As %Boolean [ InitialExpression = 0 ];

/// used to populate the "From:" field in the email generated to send the Diagnostic Report
Property EmailCC As %String(XMLPROJECTION = "NONE");

/// used to populate the "From:" field in the email generated to send the Diagnostic Report
Property EmailFrom As %String(XMLPROJECTION = "NONE") [ InitialExpression = "DefaultDiagnosticReport@InterSystems.com" ];

/// used to populate the "Reply-To:" field in the email generated to send the Diagnostic Report
Property EmailReplyTo As %String(XMLPROJECTION = "NONE");

/// name of SMTP server to use for sending Diagnostic Report; if this is blank, the Diagnostic Report will not be sent to InterSystems
Property SMTPServer As %String(XMLPROJECTION = "NONE");

/// name of SMTP Authenticated User
Property SMTPUser As %String(XMLPROJECTION = "NONE");

/// password of SMTP Authenitcated User
Property SMTPPass As %SYS.Task.Password(XMLPROJECTION = "NONE");

/// port for SNMTP server
Property SMTPPort As %String(XMLPROJECTION = "NONE") [ InitialExpression = 25 ];

/// flag to indicate if Diagnostic Report should be emailed to the WRC when collected and not associated with a WRC issue#
Property WRCHealthCheckEnabled As %Boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// WRC Issue Number to be included in subject; NOTE: This is cleared after a Diagnostic Report is sent with this in the Subject line, and needs to be reinitilized through the System Management Portal
Property WRCIssueNumber As %Integer(XMLPROJECTION = "NONE");

/// if there are any Adhocs applies as changed files only, which didn't update the $ZV string, they should be listed here
Property zInfoAdhocNotListedInZV As %String(XMLNAME = "AdhocNotListedInZV");

/// manual field indicating the types of backups used on this InterSystems IRIS instance
Property zInfoBackupType As %String(XMLNAME = "BackupType");

/// manual field indicating the type and quantity of CPU(s) used on this system
Property zInfoCPUDetails As %String(XMLNAME = "CPUDetails");

/// manual field indicating the type of hardware that this system is running on
Property zInfoHardwareType As %String(MAXLEN = 500, XMLNAME = "HardwareType");

/// manual property indicates what the primary use is for this InterSystems IRIS instance: Development, Testing, QA or Production
Property zInfoPrimaryPurpose As %String(DISPLAYLIST = ",Development,Testing,Quality Assurance,Production,", VALUELIST = ",Dev,Test,QA,Prod,", XMLNAME = "PrimaryPurpose");

/// total physical memory on the machine
Property zInfoTotalPhysicalMemory As %String(XMLNAME = "TotalPhysicalMemory");

/// any special notes that the customer wants included with the Diagnostic Report
Property zzInfoNotesFromCustomer As %String(MAXLEN = 500, XMLNAME = "NotesFromCustomer");

ClassMethod ArchiveDirectoryIsValid(ArchiveDirectory As %String) As %Status
{
}

/// This method is responsible for executing the task
/// At the scheduled time, the Task Manager
/// - creates an instance of this object,
/// - Sets any property values using the stored "Settings" for the task,
/// - and invokes this method to execute the task.
Method OnTask() As %Status
{
}

}
