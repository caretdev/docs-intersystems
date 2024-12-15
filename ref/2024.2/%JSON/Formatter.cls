/// %JSON.Formatter implements the ability to format JSON documents which are
/// expressed as strings, text or dynamic objects.
Class %JSON.Formatter Extends %RegisteredObject [ System = 4 ]
{

/// Indent specifies that indentation of the JSON output should take place.
Property Indent As %Boolean [ InitialExpression = 1 ];

/// IndentChars specifies the character sequence to be used for each indent level if Indent=1.
Property IndentChars As %String [ InitialExpression = "  " ];

/// LineTerminator specifies the character sequence to terminate each line when indenting.
Property LineTerminator As %String [ InitialExpression = {$char(13,10)} ];

/// Format a JSON document using the specified indentation and write it to the current device.<br>
/// The <var>input</var> argument is either JSON as a string or stream, or a subclass of %DynamicAbstractObject.<br>
Method Format(input) As %Status
{
}

/// Format a JSON document using the specified indentation and write it to a stream.<br>
/// The <var>input</var> argument is either JSON as a string or stream, or a subclass of %DynamicAbstractObject.<br>
Method FormatToStream(input, ByRef export As %Stream.Object) As %Status
{
}

/// Format a JSON document using the specified indentation and write it to a string.<br>
/// Serialize a JSON enabled class as a JSON document and return it as a string.<br>
Method FormatToString(input, ByRef export As %String = "") As %Status
{
}

/// Internal method to actually do the formatting
Method FormatInternal(input, ByRef export As %String, toDevice As %Boolean) [ Internal ]
{
}

}
