/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.SAX.StreamAdapter">Customizing How the SAX Parser Is Used</a>.</p>
/// This class is used to adapt a stream into an XML compliant stream that can be
/// readily consumed by the SAX parser.
Class %XML.SAX.StreamAdapter Extends %RegisteredObject [ System = 3 ]
{

/// This holds the stream object passed to the class constructor.
/// May be stream, string or 0 (internal buffer).
Property Stream As %RawString;

/// This holds the prefix which has to be logically prepended to the XML stream
Property Prefix As %String;

/// This holds the length of the calculated prefix
Property PrefixLength As %Integer [ InitialExpression = 0 ];

/// This indicates that the beginning of the stream must be checked for UTF-8 BOM
/// without an XML declaration.  The BOM will be removed in order to work aorund
/// a Xerces bug.
Property TestBeginning As %Boolean;

/// This holds Flags
Property Flags As %Integer;

/// Internal index for SOAP global buffer
Property index As %Integer;

Method %OnNew(initvalue As %RawString) As %Status [ Private ]
{
}

/// If there is a prefix then return the prefix, else read from the stream
Method Read(ByRef pLen) As %String
{
}

}
