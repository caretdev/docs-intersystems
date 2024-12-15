/// This class retrieves and stores information about the use of the analytics items on the system.
Class %DeepSee.CubeManager.Audit Extends %Persistent [ System = 4 ]
{

/// UserID initiating the audit event
Property UserID As %String;

/// Time the audit event occurred
Property AuditTime As %String;

/// Dashboard that fired the AuditCode
Property Dashboard As %String;

/// This Method does the work of recording audit information collected in the context
/// of ^DeepSee.AuditCode. See the documentation for the use cases of this global.
ClassMethod AuditCode()
{
}

}
