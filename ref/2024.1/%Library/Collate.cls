/// Datatype to handle validation/display of system collations
Class %Library.Collate Extends %Library.Integer [ System = 2 ]
{

/// Return the number of the collation used in local arrays
/// by the current process (e.g. 5)
ClassMethod GetLocalNumber() As %Integer
{
}

/// Return the name of the collation used in local arrays
/// by the current process
ClassMethod GetLocalName() As %String
{
}

/// Set the collation used by the current process in local arrays<br>
/// col = collation number (e.g. 5)
ClassMethod SetLocalNumber(col As %Integer) As %Status
{
}

/// Set the collation used by the current process in local arrays<br>
/// col = collation name
ClassMethod SetLocalName(col As %String) As %Status
{
}

/// Convert external collation name or abbreviation to internal number.
/// <br>
/// Flag = 0 - Name to number (default)<br>
/// Flag = 1 - Abbreviation to number<br>
/// Flag = 2 - Name or Abbreviation to number<br>
ClassMethod DisplayToLogical(CollationName As %String, Flag As %Integer = 0) As %Integer [ ServerOnly = 0 ]
{
}

/// Convert internal collation number to external name or abbreviation.
/// <br>
/// Flag = 0 - Number to name (default)<br>
/// Flag = 1 - Number to abbreviation<br>
/// Flag = 2 - Show Old collations
ClassMethod LogicalToDisplay(CollationNumber As %Integer, Flag As %Integer = 0) As %String [ ServerOnly = 0 ]
{
}

ClassMethod IsValid(%Val As %RawString) As %Status [ CodeMode = expression, Internal, ServerOnly = 0 ]
{
}

/// Return the System default collation name.
ClassMethod GetSystemDefaultName() As %String
{
}

/// Return the System default collation number.
ClassMethod GetSystemDefaultNumber() As %String
{
}

/// Verifies that the collation name is valid, and loaded
/// <br>
/// Flag = 0 - Validate name (default)<br>
/// Flag = 1 - Validate abbreviation<br>
/// Flag = 2 - Validate name or abbreviation<br>
/// Loaded = 0 - Don't validate the table is loaded<br>
/// Loaded = 1 - Validate the table is loaded
ClassMethod IsValidName(CollationName As %String, Flag As %Integer = 0, Loaded As %Boolean = 1) As %Boolean [ Internal ]
{
}

/// Verifies that the collation number is valid.
/// <br>
/// Loaded = 0 - Don't validate the table is loaded<br>
/// Loaded = 1 - Validate the table is loaded
ClassMethod IsValidNumber(CollationNumber As %Integer, Loaded As %Boolean = 1) As %Boolean [ Internal ]
{
}

/// Creates an array with the desired collations<br>
/// Helper method used by other methods and ^COLLATE<br>
///   Parameters:<ul>
///    <li>Array = Name of the array</li>
///    <li>IsLoaded = 0: all collations, 1: only loaded collations</li>
///    <li>OldCollations = 0: only new collations, 1: include old collations</li>
///    <li>Format=0: Array(num)="status;num;name"</li>
///    <li>Format=1: Array(name)=$LB(name,abbrv,num,status)</li>
///    <li>Format=2: Array(num)="name"</li></ul>
ClassMethod MakeArray(ByRef Array As %Binary, IsLoaded As %Boolean = 1, OldCollations As %Boolean = 0, Format As %Integer = 1) As %Status [ Internal ]
{
}

/// Returns a list of collations
/// <br>
/// Pass IsLoaded=1 to only return loaded collations
ClassMethod CollationListExecute(ByRef qHandle As %Binary, IsLoaded As %Boolean = 1, OldCollations As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod CollationListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod CollationListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = CollationListExecute ]
{
}

}
