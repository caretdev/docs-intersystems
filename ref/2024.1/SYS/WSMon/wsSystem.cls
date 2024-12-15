/// General information about a InterSystems IRIS instance.
Class SYS.WSMon.wsSystem Extends SYS.WSMon.wsResource [ System = 4 ]
{

/// The name given to the InterSystems IRIS instance.
Property Name As %String;

/// The system name where the InterSystems IRIS instance is installed.
Property System As %String;

/// The path and file name of the current configuration file used by this InterSystems IRIS instance.
Property ConfigFile As %String;

/// The path for the directory where this InterSystems IRIS instance is installed.
Property Directory As %String;

/// Version string ($ZV) for this InterSystems IRIS instance.
Property Version As %String(MAXLEN = 256);

/// The number of current users on this InterSystems IRIS instance.
Property CurrentUsers As %String;

/// The size of the routine cache in MB for this InterSystems IRIS instance .
Property RoutineCache As %Integer;

/// The size of the database cache in MB for this InterSystems IRIS instance.
Property DatabaseCache As %Integer;

/// The current number of licenses available on this InterSystems IRIS instance.
Property LicenseAvailable As %Integer;

/// The current number of licenses used on this InterSystems IRIS instance.
Property LicenseUsed As %Integer;

/// The high-water mark for licenses used on this InterSystems IRIS instance.
Property LicenseHigh As %Integer;

/// Instantiate the class and fill in current values for all properties.
ClassMethod Sample() As SYS.WSMon.wsSystem
{
}

}
