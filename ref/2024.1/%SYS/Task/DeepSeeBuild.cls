Class %SYS.Task.DeepSeeBuild Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "Cube Manager Build";

/// This method is responsible for executing the task.<br>
/// At the scheduled time, the Task Manager creates an instance of this object,
/// sets any property values using the stored "settings" for the task, and then
/// invokes this method to execute the task.<br>
/// In order to execute a real task, override this method in a subclass.
Method OnTask() As %Status
{
}

/// This method will make sure the task is registered with the
/// Task Manager to run on the schedule defined by the arguments. <br><br>
/// If there is currently no task scheduled, this will create one, otherwise
/// it will modify any pre-existing task. The default settings will run the
/// build task once a day
ClassMethod Schedule(pSuspend = 0, pTimePeriod = 0, pTimePeriodEvery = 1, pTimePeriodDay = "", pStartTime = 0) As %Status
{
}

}
