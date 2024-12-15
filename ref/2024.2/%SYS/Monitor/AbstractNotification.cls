/// Abstract class for a Notifier<p>
/// User classes inherit from this class to become a Notifier for System Monitor.
Class %SYS.Monitor.AbstractNotification Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// logfile
Property Logfile As %String [ InitialExpression = {$zu(12)_"SystemMonitor.log"}, Internal ];

Property Notifications [ MultiDimensional ];

/// Runtime state
Property State As %String [ InitialExpression = " " ];

/// USER MAY IMPLEMENT THIS METHOD
/// This method is called when the notifier class is created.
Method Start() As %Status
{
}

/// USER MUST IMPLEMENT THIS METHOD
/// Post a notification
Method Post() As %Status [ Abstract ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to clear notifications for the SYS.Monitor Controller
Method ClearNotifications() As %Integer [ Final ]
{
}

Method OpenLog() As %Status [ Final ]
{
}

Method LogMsg(msg As %String = "") As %Status [ Final ]
{
}

Method LogCon(Msg As %String = "", Severity As %Integer = 0) As %Status [ Final ]
{
}

/// Get Next Notification
Method GetNextNotification(ByRef Sensor As %String = "", Output Severity As %Integer, Output Msg As %String) As %Status
{
}

}
