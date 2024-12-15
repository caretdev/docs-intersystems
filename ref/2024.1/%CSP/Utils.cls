/// The <CLASS>%CSP.Utils</CLASS> provides utilities for CSP.
/// %CSP.Utils is also a CSP page that displays the values of all the objects associated with this page.
Class %CSP.Utils Extends %CSP.Page [ Not ProcedureBlock, System = 3 ]
{

/// Override PRIVATE from %CSP.Page
Parameter PRIVATE = 1;

/// Override ENCODED from %CSP.Page
Parameter ENCODED = 0;

/// OnPage method for CSP page to display the values of all the objects associated with this page.
ClassMethod OnPage() As %Status
{
}

/// Call this method to output as HTML the values of all the objects associated with this page.
/// This can be called from anywhere in your page as a debugging aid.
ClassMethod DisplayAllObjects() As %Boolean
{
}

/// OnPageCSPRoot method for CSP page to display the values of all the objects associated with this page.
ClassMethod OnPageCSPROOT() As %Boolean [ Internal, Private ]
{
}

/// OnPageHTML method for CSP page to display the values of all the objects associated with this page.
ClassMethod OnPageHTML() As %Boolean [ Internal, Private ]
{
}

/// Display an object as HTML
ClassMethod dumpObject(oref As %String, title As %String)
{
}

/// Display query parameters from %request object
ClassMethod dumpQueries(oref As %String, Name As %String, help As %String = "")
{
}

/// Display a set of name/value pairs such as CGI variables or cookies.
ClassMethod dumpSet(oref As %String, Name As %String, Suffix As %String)
{
}

/// Display the content of a multidimensional array.
ClassMethod dumpMultidimentional(Key As %String, Name As %String)
{
}

/// Display streams from request object.
ClassMethod dumpStreams(oref As %String, title As %String)
{
}

/// Display <var>data</var> in human printable form.
ClassMethod DecodeData(data As %String) As %String [ Internal ]
{
}

}
