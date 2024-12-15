/// The <class>%CSP.XMLSQL</class> accepts an SQL statement in the incoming URL
/// and executes it as a Dynamic SQL query.  The results are returned in an
/// XML format that corresponds to the MS XML-SQL Server format. See:<br>
/// <br>
/// <a href=" http://msdn.microsoft.com/msdnmag/issues/0300/sql/default.aspx"> http://msdn.microsoft.com/msdnmag/issues/0300/sql/default.aspx</a><br>
/// <br>
/// There are 3 formats that can be specified using the FOR XML command:
/// <br>
/// <ul>
/// <li><b>RAW</b> - Return &lt;row/&gt; elements with columns as attributes.</li>
/// <li><b>AUTO</b> - Return the data in an XML tree structure.</li>
/// <li><b>EXPLICIT</b> - It is a pretty complex version of AUTO.</li>
/// </ul>
/// <br>
/// The DTD can also be requested using the <code>FOR XML format, DTD</code>. For example:<br>
/// <pre>
/// &lt;!DOCTYPE root [
/// &lt;!ELEMENT root (row)*&gt;
/// &lt;!ELEMENT row (#PCDATA)&gt;
/// &lt;!ATTLIST row
/// CustomerID CDATA #IMPLIED
/// OrderID CDATA #IMPLIED
/// OrderDate CDATA #IMPLIED&gt;
/// ]>
/// </pre>
/// <br>
Class %CSP.XMLSQL Extends %CSP.Page [ Not ProcedureBlock, System = 3 ]
{

/// Override PRIVATE from %CSP.Page
Parameter PRIVATE = 1;

/// Override ENCODED from %CSP.Page
Parameter ENCODED = 2;

/// The <method>OnPreHTTP()</method> is called by the CSP dispatcher before the HTTP
/// headers have been sent.  Here, we prepare the Dynamic SQL query and set the content
/// type to text/xml.
ClassMethod OnPreHTTP() As %Boolean
{
}

/// The <method>OnPage()</method> is called by the CSP dispatcher to generate the
/// page content.  For XMLSQL, we loop across the ResultSet and output the contents
/// as XML.
ClassMethod OnPage() As %Status
{
}

/// The <method>OnPostHTTP()</method> is called by the CSP dispatcher after the page
/// content has been sent.  We use it here to clean up the ResultSet
ClassMethod OnPostHTTP()
{
}

/// Process the XML SQL extras from the SQL statement.  The mode is as follows:<br>
/// <br>
/// <ul>
/// <li><b>0</b> - Default XML-SQL mode</li>
/// <li><b>1</b> - Oracle XML-SQL mode</li>
/// </ul>
/// <br>
ClassMethod PreProcessSQL(sql As %String, ByRef args As %String, mode As %Integer, ByRef xmlmode As %String) As %String
{
}

ClassMethod TkInit(src As %String, ByRef ctx As %List) [ Internal ]
{
}

ClassMethod TkToken(ByRef ctx As %List, ByRef token As %String) As %Boolean [ Internal ]
{
}

ClassMethod TkSkipWhite(ByRef ctx As %List) [ Internal ]
{
}

ClassMethod TkIsNextToken(ByRef ctx As %List, token As %String, skipwhite As %Boolean, nocase As %Boolean = 1) As %Boolean [ Internal ]
{
}

ClassMethod ResolveElementName(expr As %String, element, AssumeName) As %String
{
}

}
