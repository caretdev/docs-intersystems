/// The <b>%List</b> data type class is used to represent data that is in <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> format.
/// The logical value for <b>%List</b> is a list of elements in <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> format.
///
/// <p>When a <b>%List</b> data type value is projected to a client application, it exposes it
/// as a <b>syslist</b> object. This allows the client application to efficiently
/// manipulate the contents of the list.
///
/// <p>Note that <code>$List</code> format is a compressed binary format; for this reason,
/// a property of type of <b>%List</b> cannot be set through SQL nor can its value be queried
/// through SQL (such as with a WHERE clause).
///
/// <p>Refer to the documentation on <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> in the <i>ObjectScript Reference</i>
/// for more information.
Class %Library.List [ ClassType = datatype, ClientDataType = LIST, System = 2 ]
{

/// A <b>%List</b> value is converted to a delimited string when
/// it is projected via ODBC. <var>ODBCDELIMITER</var> is the delimiter character
/// used to construct the delimited string.
Parameter ODBCDELIMITER = ",";

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "string";

/// JSONTYPE is JSON type used for this datatype.
Parameter JSONTYPE = "string";

/// Converts the SOAP encoded input list value into a ObjectScript $list value.
ClassMethod XSDToLogical(val As %String) As %List [ CodeMode = generator ]
{
}

/// Converts the ObjectScript $list value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(val As %List) As %String [ CodeMode = generator ]
{
}

/// Converts the value of this data type from <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> format to a delimited string
/// using the value of the <var>ODBCDELIMITER</var> parameter as a delimiter.
ClassMethod LogicalToOdbc(val = "") As %String [ CodeMode = generator ]
{
}

/// Converts the value of an incoming delimited string to <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> format
/// using the value of the <var>ODBCDELIMITER</var> parameter as a delimiter.
ClassMethod OdbcToLogical(val = "") As %String [ CodeMode = generator ]
{
}

}
