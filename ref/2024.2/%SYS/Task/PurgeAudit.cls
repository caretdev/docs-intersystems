/// This task is schedule to run daily after the journal switch (by default At Midnight)
/// The default purge is 2 months (62 days) but can be changed by setting KeepDays to another
/// value in the System Managment Portal.
Class %SYS.Task.PurgeAudit Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "PurgeAudit";

/// Default purge of 2 months
Property KeepDays As %Integer [ InitialExpression = 62 ];

/// Validate KeepDays value
ClassMethod KeepDaysIsValid(KeepDays As %Integer) As %Status
{
}

/// Default purge code
Method OnTask() As %Status
{
}

}
