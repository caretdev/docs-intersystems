/// NLS tables can be divided into I/O (also called translation)
/// and Internal tables, each type having a set of categories:<br><br>
///
/// I/O tables<ul>
///  <li>Process</li>
///  <li>InterSystems IRIS Terminal</li>
///  <li>Other terminal</li>
///  <li>File</li>
///  <li>Magtape</li>
///  <li>TCP/IP</li>
///  <li>DSM-DDP</li>
///  <li>DTM-DCP</li>
///  <li>System call</li>
///  <li>Printer</li></ul>
///
/// 	Internal tables<ul>
///  <li>Pattern match</li>
///  <li>Identifier</li>
///  <li>Uppercase</li>
///  <li>Lowercase</li>
///  <li>Titlecase</li>
///  <li>Accent</li>
///  <li>Collation</li>
///  <li>$X/$Y action</li></ul>
///
/// For each category, a locale defines a set of available
/// tables and selects one of them to be used as the system
/// default. InterSystems distributes a set of read-only
/// locales but users can create their own locales.<br><br>
///
/// A configuration allows a different system default
/// to be selected among the available tables. Configuration
/// defaults are optional and independent of the locale.
/// They persist across system reboots and updates.<br><br>
///
/// At startup, the system defaults are set either from the
/// configured defaults or from the locale defaults. Configuration
/// defaults have precedence if defined; otherwise the locale
/// defaults are used.<br><br>
///
/// When a process starts
/// it inherits all the system defaults. The process
/// setting for I/O tables can still be overriden when
/// opening a device by specifying "K\TableName\" in the
/// OPEN parameters.<br><br>
///
/// This class has properties that represent each of
/// the above categories.<br><br>
///
/// To get the Configured defaults, instantiate an object with<br><br>
///
/// <code>Set obj=##class(%SYS.NLS.Table).%New("Config")</code><br><br>
///
/// To get the loaded System defaults, instantiate an object with<br><br>
///
/// <code>Set obj=##class(%SYS.NLS.Table).%New("System")</code><br><br>
///
/// To get the loaded Process settings, instantiate an object with<br><br>
///
/// <code>Set obj=##class(%SYS.NLS.Table).%New("Process")</code><br><br>
///
/// Changing a property for a Process object immediately
/// changes the corresponding setting in the process, but it
/// is not possible to change the properties of a system object.
/// Changes to a Config object will only affect the next system
/// reboot.<br><br>
///
/// For generic locale properties see <class>%SYS.NLS.Locale</class>.<br>
/// For current device NLS properties see <class>%SYS.NLS.Device</class>.<br>
/// For date, time and number format properties see <class>%SYS.NLS.Format</class>.<br>
Class %SYS.NLS.Table Extends %RegisteredObject [ System = 4 ]
{

Property Process As %String;

Property IRISTerminal As %String;

Property OtherTerminal As %String;

Property File As %String;

Property Magtape As %String;

Property TCPIP As %String;

Property DSMDDP As %String;

Property DTMDCP As %String;

Property SystemCall As %String;

Property Printer As %String;

Property PatternMatch As %String;

Property Identifier As %String;

Property Uppercase As %String;

Property Lowercase As %String;

Property Titlecase As %String;

Property Accent As %String;

Property Collation As %String;

Property XYAction As %String;

Property CSP As %String;

/// True if translation is ON
Property State As %Boolean;

Property IsSystem As %Boolean [ Internal ];

Property IsConfig As %Boolean [ Internal ];

Method ProcessGet() As %String [ Internal ]
{
}

Method ProcessSet(table As %String) As %Status [ Internal ]
{
}

Method IRISTerminalGet() As %String [ Internal ]
{
}

Method IRISTerminalSet(table As %String) As %Status [ Internal ]
{
}

Method OtherTerminalGet() As %String [ Internal ]
{
}

Method OtherTerminalSet(table As %String) As %Status [ Internal ]
{
}

Method FileGet() As %String [ Internal ]
{
}

Method FileSet(table As %String) As %Status [ Internal ]
{
}

Method MagtapeGet() As %String [ Internal ]
{
}

Method MagtapeSet(table As %String) As %Status [ Internal ]
{
}

Method TCPIPGet() As %String [ Internal ]
{
}

Method TCPIPSet(table As %String) As %Status [ Internal ]
{
}

Method DSMDDPGet() As %String [ Internal ]
{
}

Method DSMDDPSet(table As %String) As %Status [ Internal ]
{
}

Method DTMDCPGet() As %String [ Internal ]
{
}

Method DTMDCPSet(table As %String) As %Status [ Internal ]
{
}

Method SystemCallGet() As %String [ Internal ]
{
}

Method SystemCallSet(table As %String) As %Status [ Internal ]
{
}

Method PrinterGet() As %String [ Internal ]
{
}

Method PrinterSet(table As %String) As %Status [ Internal ]
{
}

Method PatternMatchGet() As %String [ Internal ]
{
}

Method PatternMatchSet(table As %String) As %Status [ Internal ]
{
}

Method IdentifierGet() As %String [ Internal ]
{
}

Method IdentifierSet(table As %String) As %Status [ Internal ]
{
}

Method UppercaseGet() As %String [ Internal ]
{
}

Method UppercaseSet(table As %String) As %Status [ Internal ]
{
}

Method LowercaseGet() As %String [ Internal ]
{
}

Method LowercaseSet(table As %String) As %Status [ Internal ]
{
}

Method TitlecaseGet() As %String [ Internal ]
{
}

Method TitlecaseSet(table As %String) As %Status [ Internal ]
{
}

Method AccentGet() As %String [ Internal ]
{
}

Method AccentSet(table As %String) As %Status [ Internal ]
{
}

Method CollationGet() As %String [ Internal ]
{
}

Method CollationSet(table As %String) As %Status [ Internal ]
{
}

Method XYActionGet() As %String [ Internal ]
{
}

Method XYActionSet(table As %String) As %Status [ Internal ]
{
}

Method CSPGet() As %String [ Internal ]
{
}

ClassMethod GetCSPTable() As %String [ Internal ]
{
}

Method CSPSet(table As %String) As %Status [ Internal ]
{
}

Method StateGet() As %Boolean [ Internal ]
{
}

Method StateSet(state As %Boolean) As %Status [ Internal ]
{
}

/// Gets the name of an I/O table<br><br>
/// Parameter: index - table index<ol start="0">
///  <li>Process</li>
///  <li>InterSystems IRIS Terminal</li>
///  <li>Other terminal</li>
///  <li>File</li>
///  <li>Magtape</li>
///  <li>TCP/IP</li>
///  <li>DSM-DDP</li>
///  <li>DTM-DCP</li>
///  <li>System call</li>
///  <li>Printer</li></ol>
Method GetIOTable(index As %Integer) As %String
{
}

Method SetIOTable(index As %Integer, table As %String) As %Status [ Internal ]
{
}

/// Gets the name of an Internal table<br><br>
/// Parameter: index - table index<ol start="0">
///  <li>Pattern match</li>
///  <li>Identifier</li>
///  <li>Uppercase</li>
///  <li>Lowercase</li>
///  <li>Titlecase</li>
///  <li>(reserved)</li>
///  <li>(reserved)</li>
///  <li>Accent</li>
///  <li>Collation</li>
///  <li>$X/$Y action</li></ol>
Method GetInternalTable(index As %Integer) As %String
{
}

Method SetInternalTable(index As %Integer, table As %String) As %Status [ Internal ]
{
}

/// Get the name of a loaded collation
ClassMethod GetCOL(col As %Integer) As %String [ Internal ]
{
}

/// Get the table name associated with a shm offset
ClassMethod GetOffName(off As %Integer, typ As %String) As %String [ Internal ]
{
}

/// Gets character set of current locale
ClassMethod GetCharset() As %String [ Internal ]
{
}

/// Converts an external character set name to its internal name<br><br>
/// Parameter:<ul>
///    <li>ext - External charset name (eg: "ISO-8859-2").
///          If it is already an internal name (eg: "UTF8"),
///          it is returned unchanged (except that "Latin1"
///          is returned as "RAW").</li></ul>
/// Returns:<ul>
///    <li>Internal name equivalent to ext (eg: "Latin2")</li>
///    <li>"" if there is no internal equivalent to 'ext'</li></ul>
ClassMethod DisplayToLogical(ext As %String) As %String
{
}

/// Converts an internal character set name to its preferred external name<br><br>
/// Parameter:<ul>
///    <li>int - Internal charset name (eg: "Latin2")</li></ul>
/// Returns:<ul>
///    <li>Preferred external name (eg: "ISO-8859-2")</li>
///    <li>"" if there is no internal charset 'int'.</li></ul>
ClassMethod LogicalToDisplay(int As %String) As %String
{
}

Method %OnNew(src As %String) As %Status [ Internal ]
{
}

}
