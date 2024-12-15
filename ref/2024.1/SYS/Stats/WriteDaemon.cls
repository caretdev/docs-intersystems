/// This class provides detailed system metrics captured for the Write Daemon(s).
/// Each instance of InterSystems IRIS has a Write Daemon, and on some operating systems may
/// also have Auxiliary Write Daemons. Each instance of this class presents the data
/// for one of these daemons, with the first instance being the main Write Daemon.
/// <br><br>
/// The current values for each class instance may be fetched using the Query
/// 'Sample', and then the current value of each property can be accessed.
/// <br><br>
/// For example:
/// <example>
/// s prop="Index,CurBlk,TotBlk,Cycles,CycleBlk,VolumeQ,Wake,CycleTime" ; list of properties
/// s rset=##class(%ResultSet).%New("SYS.Stats.WriteDaemon:Sample")
/// d rset.Execute()
/// s len=$l(prop,",")
/// ; list properties for all Write Daemons
/// while rset.Next() {
/// 	f i=1:1:len w rset.Data($p(prop,",",i)) w:i<len ","
/// 	w !
/// }
/// </example>
///
Class SYS.Stats.WriteDaemon Extends SYS.WSMon.wsResource [ System = 4 ]
{

/// An index number to uniquely identify this daemon.
Property Index As %Integer;

/// The number of blocks written by current/latest cycle.
Property CurBlk As %Integer;

/// The  cumulative number of blocks written by this daemon.
Property TotBlk As %Integer;

/// The number of active cycles for this daemon.
Property Cycles As %Integer;

/// The average number of blocks written per WD cycle.
Property CycleBlk As %Integer;

/// The list of databases served by this daemon
Property VolumeQ As %String;

/// A flag indicating if this daemon is currently active.
Property Wake As %Boolean;

/// Time that the current write cycle started (returns "" if Wake = 0)
/// This is returned in the same format at $ZTIMESTAMP (UTC date/time)
Property WakeStart As %String;

/// The time (in milliseconds) it took for the last complete write cycle.
Property CycleTime As %Integer;

/// The start time of the last complete write cycle.
/// This is returned in the same format at $ZTIMESTAMP (UTC date/time)
Property CycleStart As %String;

/// Current phase of the Write Daemon.
/// <br><br>
/// This is an integer that represents the current phase of a processing cycle. The phases are:<br>
/// <br>0: Idle
/// <br>1: Cycle initialization
/// <br>2: Lock set, waiting for updaters
/// <br>3: Forming block write list
/// <br>4: Lock clear, waking updaters
/// <br>5: Writing image journal
/// <br>6: Image journal done, starting journal sync
/// <br>7: Commiting WIJ and Journal
/// <br>8: Database write phase
/// <br>9: Commiting database writes to disk
/// <br>10: Clearing WIJ
/// <br>11: Cycle post processing
/// <br>12: Cycle complete
Property Phase As %Integer;

/// Sample counters for all Buffer sizes
ClassMethod SampleExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod SampleClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = SampleExecute ]
{
}

ClassMethod SampleFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = SampleExecute ]
{
}

/// Instantiate the class for an individual Write Daemon and fill in current values for
/// all properties. 'DaemonID' is an integer from 1 to 'n' used to reference each daemon.
/// A number greater than 'n' returns the property 'Index' as zero.
/// <br><br>
/// Allows for XML output of a single WriteDaemon instance.
ClassMethod Sample(DaemonID As %Integer = 1) As SYS.Stats.WriteDaemon
{
}

/// Convert WD start times stored internally to $ZTIMESTAMP format.
ClassMethod Time(time As %String) As %String [ Internal ]
{
}

}
