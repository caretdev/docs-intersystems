/// This task removes entries in the source journal global that are older
/// than the configured value.<br>
/// It is normally run nightly.
Class %SYS.Task.CleanSourceJournal Extends %SYS.Task.Definition
{

Parameter TaskName = "CleanSourceJournal";

/// Default purge of 2 months
Property KeepDays As %Integer [ InitialExpression = 60 ];

/// Validate KeepDays value
ClassMethod KeepDaysIsValid(KeepDays As %Integer) As %Status
{
}

/// This method is responsible for executing the task.<br>
/// At the scheduled time, the Task Manager creates an instance of this object,
/// sets any property values using the stored "settings" for the task, and then
/// invokes this method to execute the task.<br>
Method OnTask() As %Status
{
}

}
