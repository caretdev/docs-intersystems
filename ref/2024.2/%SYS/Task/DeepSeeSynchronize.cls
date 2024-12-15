Class %SYS.Task.DeepSeeSynchronize Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "Cube Manager Synch";

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
/// synch task every 60 minutes.
ClassMethod Schedule(pSuspend = 0, pDailyFrequency = 1, pDailyFrequencyTime = 0, pDailyIncrement = 60, pStartTime = 0, pEndTime = 0) As %Status
{
}

}
