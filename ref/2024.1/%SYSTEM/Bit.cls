/// This class provides various $bit support functions.
///
/// <p>You can use it via the special <b>$system</b> object:
/// <example>
/// Set x=$system.Bit.StringToBit($c(1,5))
/// </example>
Class %SYSTEM.Bit Extends Help [ Abstract, System = 4 ]
{

/// Converts a string to a $bit string
///
ClassMethod StringToBit(val) As %String
{
}

/// Converts a legacy DTM-style $zbit* string to a $bit string
///
ClassMethod ZBitToBit(val) As %String
{
}

}
