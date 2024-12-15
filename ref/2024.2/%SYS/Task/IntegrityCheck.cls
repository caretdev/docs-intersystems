/// Perform an Integrity Check for all databases. The task will create an output log file,
/// parse the log for errors and report failures in messages.log (which will send email if it's configured).
Class %SYS.Task.IntegrityCheck Extends %SYS.Task.Definition [ System = 4 ]
{

Parameter TaskName = "IntegrityCheck";

/// The directory where the Integrity Check logs will be kept.
/// Note that the logs here can be automatically purged using the KeepDays property
Property Directory As %String [ InitialExpression = {$zu(12)} ];

/// The file name to be used for the log. Leaving this blank will cause the file name
/// to be automatically generated in the the format INTEGRIT-YYYYMMDD_sec.LOG. Files
/// which are generated in this format can be automatically purged using the KeepDays property.
Property Filename As %String;

/// Number of days to keep files before puring - 0 means never purge
Property KeepDays As %Integer [ InitialExpression = 0 ];

ClassMethod DirectoryIsValid(Directory As %String) As %Status [ Internal ]
{
}

/// Execute $$CheckList^Integrity() for all databases. Create an output log file, check for errors
/// and report failure in messages.log. Purge old INTEGRIT-*.LOG files if KeepDays is set.
Method OnTask() As %Status
{
}

}
