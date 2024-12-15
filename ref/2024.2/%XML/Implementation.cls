/// Implementation of %XML.Adaptor methods.<br><br>
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %XML.Implementation Extends %RegisteredObject [ System = 2 ]
{

/// Implementation of XMLDTD.
ClassMethod XMLDTD(class As %String, top As %String, format As %String, input As %Boolean, ByRef dtdlist) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Implementation of XMLSchema.
ClassMethod XMLSchema(class As %String, top As %String, format As %String, namespacePrefix As %String = "", input As %Boolean, refOnly As %Integer, ByRef schema) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Generate the WSDL
ClassMethod GenerateWSDL(class As %String, includeInternalMethods As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Output the header section of the soap binding
ClassMethod WriteHeaderBinding(writer As %XML.Writer, name As %String, part As %String, bodyUse As %String, namespace As %String) [ Internal, Private, ServerOnly = 1 ]
{
}

/// Get import statements needed for the current schema in a WSDL.
ClassMethod XMLGetSchemaImports(class As %String, ByRef imports, ByRef classes) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Write the message tag of the WSDL to the current device for this XML enabled class serialized as
/// an XML document.  This call is only meaningful for SOAP encoding<p>
/// <var>namespacePrefix</var> is the namespace prefix to be used for the
/// namespace in which this schema is generated.<p>
/// <var>input</var>=1 (true) means that the input message will be generated, otherwise
/// the return message will be generated.<p>
ClassMethod WSDLMessageSchema(writer As %XML.Writer, descClass As %String, namespace As %String, typenamespace As %String, input As %Boolean, soapMessageName As %String, requestMessageName As %String, configId As %String, allowRedundantArrayName As %Boolean) [ Internal, Private, ServerOnly = 1 ]
{
}

/// Check duration for validity and convert to months and seconds
/// Format of duration is <code>PnYnMnDTnHnMn[.nnnnnnnn]S</code>.
ClassMethod IsDuration(val As %RawString) As %Boolean [ ServerOnly = 1 ]
{
}

/// Add duration to a date/time.
/// The format of the date/time argument is as for $SYSTEM.SQL.DATEADD
/// The return value is always of type %TimeStamp.
ClassMethod AddDuration(datetime As %TimeStamp, duration As %xsd.duration) As %Library.TimeStamp [ ServerOnly = 1 ]
{
}

/// Anayze collected SOAP timing statistics.
ClassMethod AnalyzeTiming(Output parseTime As %Integer, Output importTime As %Integer) [ Internal, ServerOnly = 1 ]
{
}

/// Reinitialize collection of SOAP timing statistics.
ClassMethod SetupTiming() [ Internal, ServerOnly = 1 ]
{
}

}
