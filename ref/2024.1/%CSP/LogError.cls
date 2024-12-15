/// Log the error that has occured but do not display any information to the user about this error.
Class %CSP.LogError Extends %CSP.Error [ System = 3 ]
{

/// If an error occurs while processing a HyperEvent then this method is called.
/// Log error and send simple response.
ClassMethod HyperEventError()
{
}

/// Create message for logging CSP error.
ClassMethod ErrString() [ Internal ]
{
}

/// Output the error page as HTML.
/// Log error and send simple response.
ClassMethod OnPage() As %Status
{
}

}
