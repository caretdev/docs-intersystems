Class %Monitor.System.Diskspace Extends %Monitor.System.Adaptor [ System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Parameter INDEX [ Internal ] = "Directory";

/// Name of directory
Property Directory As %Monitor.String(MAXLEN = 255);

/// Name of database
Property Database As %Monitor.String;

/// Disk space available (MB)
Property Diskspace As %Monitor.Integer;

/// Disk status
Property Diskstatus As %Monitor.Integer;

Property sfn As %Integer [ Internal ];

/// Initialize routine metrics.
Method Initialize() As %Status
{
}

/// Get routine metric sample.<br>
/// A return code of $$$OK indicates there is a new sample instance.<br>
/// A return code of 0 indicates there is no sample instance.
Method GetSample() As %Status
{
}

}
