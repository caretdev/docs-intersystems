Class %Monitor.System.Freespace Extends %Monitor.System.Adaptor [ System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Parameter INDEX [ Internal ] = "DBName";

/// Name of dataset
Property DBName As %Monitor.String;

/// Name of directory
Property Directory As %Monitor.String(MAXLEN = 255);

/// Maximum size (MB. -1 indicates Unlimited).
Property MaxSize As %Monitor.Integer;

/// Current size (MB)
Property CurSize As %Monitor.Integer;

/// Freespace available (MB)
Property FreeSpace As %Monitor.Integer;

/// Disk space available (MB)
Property DiskFreeSpace As %Monitor.Integer;

Property Rspec As %Library.ResultSet [ Internal ];

Property NSpace As %String [ Internal ];

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
