Class %SYSTEM.Context.XDBCServer Extends %SystemBase
{

/// TCP/Shared Memory device for the connection - Used to be help in %qdev
Property Device As %RawString;

Property ServerOptions As %String(MAXLEN = "") [ MultiDimensional ];

Property contextStack As %String(MAXLEN = "") [ MultiDimensional ];

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
}

/// pushState will push the current state of the Context.XDBCServer singleton onto the contextStack.
/// This method is not normally invoked directly. It is normally called by a utility class method to push a context.
Method pushState() As %Status
{
}

/// popState will restore the state of the Context.SQL singleton from the top of the contextStack and remove the top stack element.
/// This method is not normally invoked directly. It is normally called by a utility class method to pop a context.
Method popState() As %Status
{
}

}
