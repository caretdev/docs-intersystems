///
///
///
/// This class is designed to map an existing global named <B> ^["%SYS"]ISCcspPerformance </B>
///
/// which contains data about the CSP/ZEN Performance as long as the <B>PAGETIMING parameter
///
/// is set to 1 </B>in the page.
///
///
///
/// It contais data about each time a CSP/ZEN page is executed: Day, Time Slot, Hits,
///
/// Global References, Lines Executed, and Maximum, Minimum and Total Execution Time.
///
///
///
/// This class will allow SQL access to the data. Some sample queries are provided.
///
/// One step further will be DeepSee enable it, to be able to use DeepSee against this data.
///
Class %CSP.Util.Performance Extends %Persistent [ StorageStrategy = CspPerformance, System = 4 ]
{

///
/// Indicates the type of the event (currently there is only one event named 'Page')
Property Event As %String(TRUNCATE = 1);

///
/// The full CSP page name, includes the application name
Property Page As %String(MAXLEN = 256, TRUNCATE = 1);

///
/// Date in YYYY-MM-DD format
Property Day As %String(TRUNCATE = 1);

///
/// The particular Slot within the Day the hit occured
///
/// The total number of Time Slots in a day is defined in the page with the <B>TIMINGSLOTS parameter</B>
Property Slot As %Integer;

///
/// Number of times the page was executed
Property Hits As %Numeric(SCALE = 0);

///
/// Number of global references (read/write)
Property Globals As %Numeric(SCALE = 0);

///
/// Number of lines of COS code executed
Property Lines As %Numeric(SCALE = 0);

Property GlobalsPerHit As %Integer [ Calculated, SqlComputeCode = { set {GlobalsPerHit}=({Globals}/{Hits})}, SqlComputed ];

Property LinesPerHit As %Integer [ Calculated, SqlComputeCode = { set {LinesPerHit}=({Lines}/{Hits})}, SqlComputed ];

///
/// Maximum Page execution time
Property MaxTime As %Numeric(SCALE = 6);

///
/// Minimum Page execution time
Property MinTime As %Numeric(SCALE = 6);

///
/// Total accumulated Page execution time
Property TotalTime As %Numeric(SCALE = 6);

///
/// top pages in number of Hits in a period of time
}
