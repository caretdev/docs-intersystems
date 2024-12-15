Class %SYS.Task.ShadowPurge Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "ShadowPurge";

Property ShadowID As %String;

/// This method is responsible for executing the task.<br>
/// At the scheduled time, the Task Manager creates an instance of this object,
/// sets any property values using the stored "settings" for the task, and then
/// invokes this method to execute the task.<br>
/// In order to execute a real task, override this method in a subclass.
Method OnTask() As %Status
{
}

}
