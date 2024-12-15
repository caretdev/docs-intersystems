/// This class is used internally by InterSystems IRIS.
/// You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.<p>
///
/// Manage output of lines for CSP page class that is being created using COS.
Class %CSP.PageSection Extends %RegisteredObject [ System = 3 ]
{

/// Current block being written to.
Property Block As %Integer [ InitialExpression = 0, Internal ];

/// Index in IRIS.Temp to hold lines for this section.
Property Index As %Integer [ Internal ];

/// The number of CRLF sequences whose output is deferred.
Property WriteCrLf As %Integer [ InitialExpression = 0, Internal, Private ];

/// If true, a line has been written into this section.
Property TagWritten As %Boolean [ InitialExpression = 0, Internal ];

/// When a new section is created, get index for the section.
Method %OnNew(initvalue) As %Status [ Internal ]
{
}

/// When a section is discarded, cleanup section storage.
Method %OnClose() As %Status [ Internal ]
{
}

/// Save executable line for class that is being created.
Method WriteLine(line As %String, keepTogether As %Boolean) As %Status [ Internal ]
{
}

/// Create and save write text line for class that is being created.
Method WriteText(text As %String, crlf As %Boolean = 0) As %Status [ Internal ]
{
}

}
