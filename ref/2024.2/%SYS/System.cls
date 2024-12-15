/// The <class>%SYS.System</class> class provides an interface for managing
/// utility functions.<br>
/// <p>You can call help to get a list of all entrypoints:<br>
/// <p>
/// Do $system.Util.Help()
Class %SYS.System Extends %SYSTEM.Help [ Abstract, System = 4 ]
{

/// Returns the location of the Temp directory, where temporary files are kept.
ClassMethod TempDirectory() As %String
{
}

/// State of a switch: 0 (clear) or 1 (set) or -1,Detail (error)
///
ClassMethod GetSwitchState(switch As %Integer) As %Status [ Internal ]
{
}

/// System Switches<br>
/// Switches are used to inhibit certain kinds of processing while utilities
/// such as Backups are being run.<br>
/// Switches 8 & 9 may be of use for specialized customer applications:<br>
/// Switch 8 - Inhibits responding to net requests<br>
/// Switch 9 - Inhibits new network signons<br>
/// The remaining switches are used to quiesce the system or provide a static environment
/// for doing backups or examining the system<br>
/// Switches 10, 12 and 13 are normally set the user is running backups<br>
/// Switch 14 may be used to maintain application consistency or block contention<br>
/// Switch 10 - Inhibits all global access except for the calling job<br>
/// This switch is used with backups to coordinate with Transaction Processing.
/// Use of this switch makes sure there are no transactions open when you clear
/// the journal after you complete your backup.
/// Switch 12 - Inhibit attempts to sign on
/// Switch 13 - Inhibit sets, kills, and zsaves
/// Switch 14 - Inhibit access to globals and routines
/// <br>
/// The following system functions for manipulating switches are provided:<br>
/// Toggle a switch (from set to clear or clear to set) on local system<br>
/// Set a switch on local system (error if switch is already set)<br>
/// Clear a switch on local system (error if switch is already clear)<br>
///
/// Toggle a switch (from set to clear or clear to set) on local system
ClassMethod ToggleSwitch(switch As %Integer, NewState As %Integer) As %Status
{
}

/// Set a switch on local system (error if switch is already set)
ClassMethod SetSwitch(switch As %Integer) As %Status
{
}

/// Clear a switch on local system (error if switch is already clear)
ClassMethod ClearSwitch(switch As %Integer) As %Status
{
}

/// Returns instance GUID.
/// <br>
/// An instance GUID is a 16 byte (128 bit) globally unique identifier, assigned per instance of InterSystems IRIS installation.
ClassMethod InstanceGUID() As %String
{
}

/// Returns instance name.<br>
ClassMethod GetInstanceName() As %String
{
}

/// Returns the active CPF file name.<br>
ClassMethod GetCPFFileName() As %String
{
}

/// Returns NodeName:InstanceName.<br>
/// This method returns the Node name of the system followed by a ":" followed by
/// the Instance name. This name will be unique among InterSystems IRIS Instances in your network.<br>
/// Parameters:<br>
/// Flag = 0 (default) - Node name is the capitalized FQDN of the node, which will include
/// the domain name.<br>
/// For example:<br><br>
/// HEARTOFGOLD.INTERNAL.COM:101U<br><br>
/// Flag = 1 - Node name does not contain the domain name.<br>
/// For example:<br><br>
/// HEARTOFGOLD:101U<br>
ClassMethod GetUniqueInstanceName(Flag As %Integer = 0) As %String
{
}

/// Returns the node name of the machine you are running on.<br>
/// Parameters:<br>
/// Flag = 0 (default) - Node name is the capitalized FQDN of the node, which will include
/// the domain name.<br>
/// For example:<br><br>
/// HEARTOFGOLD.INTERNAL.COM<br><br>
/// Flag = 1 - Node name of the machine as defined in the O/S.<br>
/// For example:<br><br>
/// HeartOfGold<br>
ClassMethod GetNodeName(Flag As %Integer = 0) As %String
{
}

/// Returns the total amount of MBs used by global cache.
ClassMethod GetGlobalCache() As %Integer [ Internal ]
{
}

/// Returns the total amount of MBs used as routine cache.
ClassMethod GetRoutineCache() As %Integer [ Internal ]
{
}

/// Write a message to the messages.log file.
/// <br>
/// Flag = 1 - write it to the operator console as well<br>
/// Severity - severity of condition<br>
/// Severity = -2 (Debug2), -1 (Debug), 0 (Information), 1 (Warning), 2 (Severe), 3 (Fatal)
ClassMethod WriteToConsoleLog(Message As %String, Flag As %Integer = 0, Severity As %Integer = 0, Event As %String = "Utility.Event") As %Status
{
}

/// Write a message to the mv.log file.<br>
/// Severity = -2 (Debug2), -1 (Debug), 0 (Information), 1 (Warning), 2 (Severe), 3 (Fatal)
ClassMethod WriteToMVLog(Message As %String, Severity As %Integer = 0) As %Status
{
}

/// Get the DefaultSignatureHash property from Security.System
ClassMethod GetDefaultSignatureHash(defaultSignatureHash As %String) As %Status
{
}

}
