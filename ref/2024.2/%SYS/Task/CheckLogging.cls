/// This Task will check that no logging mechanisms (either ^%ISCLOG or ISCSOAP) have
/// been left on unintentionally. You may specify how many consecutive days of activity will
/// create an alert, and how many will result in automatically shutting off the logging.
/// Entering "0" for either DaysForAlert or DaysForShutoff will disable that action.
///
Class %SYS.Task.CheckLogging Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "CheckLogging";

/// The number of consecutive days of active logging which will create an alert.
/// A value of "0" will disable the check.
Property DaysForAlert As %Integer [ InitialExpression = 2 ];

/// The number of consecutive days of active logging which will cause the logging to be shut off.
/// A value of "0" will disable the check.
Property DaysForShutoff As %Integer [ InitialExpression = 0 ];

/// Check activity for ^%ISCLOG and ISCSOAP
Method OnTask() As %Status
{
}

}
