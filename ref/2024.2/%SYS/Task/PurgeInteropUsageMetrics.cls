Class %SYS.Task.PurgeInteropUsageMetrics Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "Purge Interoperability Usage Metrics";

/// Number of months of active interoperability usage metrics data to keep.
Property KeepActiveMonths As %Integer(MINVAL = 1) [ InitialExpression = 12 ];

/// Number of months of consolidated interoperability usage metrics data to keep.
Property KeepConsolidatedMonths As %Integer(MINVAL = 1) [ InitialExpression = 24 ];

/// This method is responsible for executing the task.<br>
/// At the scheduled time, the Task Manager creates an instance of this object,
/// sets any property values using the stored "settings" for the task, and then
/// invokes this method to execute the task.<br>
/// In order to execute a real task, override this method in a subclass.
Method OnTask() As %Status
{
}

}
