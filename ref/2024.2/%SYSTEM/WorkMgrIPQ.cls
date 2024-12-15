/// For internal use only
Class %SYSTEM.WorkMgrIPQ Extends (WorkMgr, IPQSet)
{

Method %OnNew(ByRef qstruct As %String, numberjobs As %Integer, type As %String = 2) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// SQL Speicific queue function
Method SQLQueue(rtnidx As %Binary, work As %String, args... As %String) [ Internal ]
{
}

/// This is called when the <var>data</var> received from the IPQ is "" in order to return
/// any error information or output anything to the current device and to take care of
/// book keeping. It will set <var>AtEnd</var> if we are at the end of the data and will
/// run any callback methods and will return to the caller.
Method Decode(qspec As %String, ByRef AtEnd As %Boolean) As %Status
{
}

/// SQL Specific decode function. Returns true if we are at the end of the work.
/// Not for general use, use the <method>Decode</method> method.
/// <var>end</var> signals we believe all work is completed so we should be able to wait
/// for all complete and exit
Method SQLDecode() As %Boolean [ Internal ]
{
}

/// SQL Specific decode function. Returns true if we are at the end of the work.
/// Not for general use, use the <method>Decode</method> method.
/// <var>end</var> signals we believe all work is completed so we should be able to wait
/// for all complete and exit
Method SQLDecode2(end = 0) As %Boolean [ Internal ]
{
}

/// SQL Specific initialize function.
/// Not for general use, use the <method>Initialize</method> method.
ClassMethod SQLInitialize(numberjobs As %Integer, checkdefault As %Boolean = 0, type As %Integer = 2, ByRef extable As %String, ByRef groupID As %String) As WorkMgr [ Internal ]
{
}

ClassMethod SQLSetup(args As %String, shardMapVersion As %String) As %Status [ Internal ]
{
}

ClassMethod SQLTearDown() As %Status [ Internal ]
{
}

}
