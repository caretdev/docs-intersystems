/// Exposes some NLS properties of the current device.<br><br>
/// Changing a property acts immediately on the current device,
/// not on the device that was current when the object was
/// instantiated.<br><br>
///
/// For generic locale properties see <class>%SYS.NLS.Locale</class>.<br>
/// For system and process NLS table settings see <class>%SYS.NLS.Table</class>.<br>
/// For date, time and number format properties see <class>%SYS.NLS.Format</class>.<br>
Class %SYS.NLS.Device Extends %RegisteredObject [ System = 4 ]
{

/// Translation table associated with current device.
Property XLTTable As %String;

/// Input default action<ul>
/// <li>0 = generate error</li>
/// <li>1 = replace with replacement value/string</li>
/// <li>2 = ignore (replace with original character)</li></ul>
Property InpDefaultAction As %Integer;

/// Input replacement value/string.<br>
/// Substituted in case of error if InpDefaultAction=1
Property InpReplacementValue As %String;

/// If true indicates that a replacement occurred during
/// the last input translation.
Property InpReplaced As %Boolean;

/// Output default action<ul>
/// <li>0 = generate error</li>
/// <li>1 = replace with replacement value/string</li>
/// <li>2 = ignore (replace with original character)</li></ul>
Property OutDefaultAction As %Integer;

/// Output replacement value/string.<br>
/// Substituted in case of error if OutDefaultAction=1
Property OutReplacementValue As %String;

/// If true indicates that a replacement occurred during
/// the last output translation.
Property OutReplaced As %Boolean;

/// State of translation for current device<ul>
/// <li>0 = Off</li>
/// <li>1 = On</li></ul>
Property State As %Boolean;

/// Used with double width characters (e.g. Kanji)
Property Pitch As %Integer;

/// Sets I/O translation table for current device<br><br>
/// This method exists as a convenience only. Calling
/// it is equivalent to instantiating a %SYS.NLS.Device
/// object and setting obj.XLTTable=tabnam<br><br>
/// Parameters:<ul>
///   <li>tabnam - table name</li></ul>
/// Returns: previous table or "" in case of error
ClassMethod SetIO(tabnam As %String) As %String
{
}

Method XLTTableGet() As %String [ Internal ]
{
}

Method XLTTableSet(value As %String) As %Status [ Internal ]
{
}

Method InpDefaultActionGet() As %Integer [ Internal ]
{
}

Method InpDefaultActionSet(value As %Integer) As %Status [ Internal ]
{
}

Method InpReplacementValueGet() As %String [ Internal ]
{
}

Method InpReplacementValueSet(value As %String) As %Status [ Internal ]
{
}

Method InpReplacedGet() As %Boolean [ Internal ]
{
}

Method InpReplacedSet(value As %Boolean) As %Status [ Internal ]
{
}

Method OutDefaultActionGet() As %Integer [ Internal ]
{
}

Method OutDefaultActionSet(value As %Integer) As %Status [ Internal ]
{
}

Method OutReplacementValueGet() As %String [ Internal ]
{
}

Method OutReplacementValueSet(value As %String) As %Status [ Internal ]
{
}

Method OutReplacedGet() As %Boolean [ Internal ]
{
}

Method OutReplacedSet(value As %Boolean) As %Status [ Internal ]
{
}

Method StateGet() As %Boolean [ Internal ]
{
}

Method StateSet(state As %Boolean) As %Status [ Internal ]
{
}

Method PitchGet() As %Integer [ Internal ]
{
}

Method PitchSet(pitch As %Integer) As %Status [ Internal ]
{
}

/// Set input mode string<br>
/// Parameters:<ul>
///   <li>value  - new input mode string</li>
///   <li>mode   - mode number</li></ul>
/// Returns: previous input string for given mode or "" in case of error
Method InpModeStrSetAt(value As %String, mode As %Integer) As %String
{
}

/// Set output mode string<br>
/// Parameters:<ul>
///   <li>value  - new output mode string</li>
///   <li>mode   - mode number</li></ul>
/// Returns: previous output string for given mode or "" in case of error
Method OutModeStrSetAt(value As %String, mode As %Integer) As %String
{
}

/// Get input mode string<br>
/// Parameters:<ul>
///   <li>mode - mode number</li></ul>
/// Returns: current input string for given mode or "" in case of error
Method InpModeStrGetAt(mode As %Integer) As %String
{
}

/// Get output mode string<br>
/// Parameters:<ul>
///   <li>mode - mode number</li></ul>
/// Returns: current output string for given mode or "" in case of error
Method OutModeStrGetAt(mode As %Integer) As %String
{
}

}
