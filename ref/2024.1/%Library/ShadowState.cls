/// 	Datatype for display and validation of shadow states: <ul><li>
/// 			-2: shadow is being stopped</li><li>
/// 			-1: shadow is trying to connect to the source</li><li>
/// 			 0: shadow is suspended</li><li>
/// 			 1: shadow is processing</li><li>
/// 			 2: shadow is stopped</li><li>
/// 			 3: shadow journal copier is active</li></ul>
///
Class %Library.ShadowState Extends %Integer [ System = 4 ]
{

ClassMethod IsValid(%State As %RawString) As %Status [ CodeMode = expression, Internal ]
{
}

ClassMethod LogicalToDisplay(%state As %Integer) As %String [ Internal ]
{
}

ClassMethod DisplayToLogical(%typename As %String) As %Integer [ Internal ]
{
}

ClassMethod CanStart(%State As %Integer) As %Boolean [ CodeMode = expression, Internal ]
{
}

ClassMethod CanStop(%State As %Integer) As %Boolean [ CodeMode = expression, Internal ]
{
}

ClassMethod CanResume(%State As %Integer) As %Boolean [ CodeMode = expression, Internal ]
{
}

ClassMethod CanSuspend(%State As %Integer) As %Boolean [ CodeMode = expression, Internal ]
{
}

}
