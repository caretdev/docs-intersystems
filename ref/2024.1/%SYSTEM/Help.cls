/// This is a helper class that is used by the various %SYSTEM classes to
/// provide a Help method.
Class %SYSTEM.Help [ Abstract, System = 3 ]
{

/// Write out a list of the methods of this object to the console.
/// Pass the method name as an argument to see the full description for
/// this item.
ClassMethod Help(method As %String = "") As %String
{
}

}
