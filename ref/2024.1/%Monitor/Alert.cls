/// This class allows user applications to generate an alert using one of the
/// supported external monitoring protocols. See the External() class method
/// for details.
Class %Monitor.Alert Extends (%Persistent, %CSP.Page) [ Not Hidden, Inheritance = right, System = 3 ]
{

/// Alert application
Property ApplicationName As %String(TRUNCATE = 1) [ Internal, Required ];

/// Alert name
Property Name As %String(TRUNCATE = 1) [ Internal, Required ];

/// Alert once<br>
/// If FALSE (the default) the alert is notified each time the alert is signalled.<br>
/// If TRUE the alert is only notified once.
Property NotifyOnce As %Boolean [ InitialExpression = 0, Internal ];

/// If TRUE the alert has been notified.
Property Notified As %Boolean [ InitialExpression = 0, Internal, Transient ];

/// Flag indicating if this alert is active
Property Activated As %Boolean [ InitialExpression = 1, Internal ];

/// Alert action
Property AlertAction As %Integer [ InitialExpression = 0, Internal ];

/// Metrics class
Property MetricClass As %String [ Internal ];

/// Metric application
Property MetricApp As %String [ Internal ];

/// Metric group
Property MetricGroup As %String [ Internal ];

/// Metrics property list<br>
/// A comma-separted string of property names whose values
/// are passed as a list to the evaluation method
Property PropertyList As %String(MAXLEN = 132) [ Internal ];

/// Method to be invoked during sampling to determine if an alert should be raised
Property EvalMethod As %String [ Internal ];

Property EvalClass As %String [ Internal ];

/// Method to be invoked if notify type = METHOD [optional]
Property NotifyMethod As %String [ Internal ];

/// Expression to be evaluated [optional]
Property Expression As %String(MAXLEN = 132) [ Internal ];

Property NotifyClass As %String [ Internal ];

Property ItemGroup As %Monitor.ItemGroup [ Internal, Transient ];

/// The application definition for this group
Relationship Application As %Monitor.Application [ Cardinality = parent, Internal, Inverse = Alert ];

/// Unique key index for alert
ClassMethod Create(name As %String = "", appname As %String = "", action As %Integer = 0, nmethod As %String = "", nclass As %String = "", mclass As %String = "", prop As %String = "", expr As %String = "", once As %Boolean = 0, evalmethod As %String = "") As %Status [ Internal ]
{
}

/// Delete an alert
ClassMethod Delete(name As %String = "", appname As %String = "") As %Status [ Internal ]
{
}

/// Validate the alert definition
Method Check() As %Status [ Internal ]
{
}

/// Returns the object id for the alert
ClassMethod GetId(name As %String, ByRef id As %String) As %Status [ Internal ]
{
}

/// This class method allows a application to send an alert using an external
/// monitoring or management interface, currently just SNMP. This call may
/// be used within the Alert Evaluation Method to forward alerts generated by the
/// Monitor, or from anywhere within the application itself to simply create
/// an SNMP Trap.<p>
/// <p>
/// The parameters used are:<p>
/// <p>
/// <var>type</var> = use 'SNMP' to indicate how to send the alert<p>
/// <var>appname</var> = a brief string (MAXLEN=20) to identify the source or application creating the alert<p>
/// <var>severity</var> = a severity code where 0=info, 1=warning, 2=severe, 3=fatal<p>
/// <var>msg</var> = a text message (MAXLEN=1024) which describes the problem or event<p>
///
/// For SNMP, the alert is sent using the cacheAppAlert trap, with each of the
/// parameters attached as auxiliary objects (see the ISC-CACHE.MIB).
ClassMethod External(type As %String = "SNMP", appname As %String = "", severity As %Integer = 0, msg As %String = "") As %Status
{
}

/// Query for data values for all alerts
/// Returns all Alerts defined in this namespace
/// A list of all Alerts for an Application (called by SNMP)
/// Returns all Alerts defined for a given Metrics Class
}
