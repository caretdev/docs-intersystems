/// <p>This is a sample implementation for <class>%iKnow.Source.Converter</class>, designed
/// to weed out HTML tags from plain text input. Data is first buffered into a process-private
/// global and stripped of HTML in the <method>Convert</method> call.</p>
/// <p><b>Converter parameters</b>:
/// <ol>
/// 		<li><b>Unescape</b> As <class>%Boolean</class>: set to 1 to unescape HTML special
/// 				characters such as converting "&amp;amp;" to "&amp;" (default = 1)</li>
/// 		<li><b>SkipTags</b> As <class>%String</class>: comma-separated list of tags whose content
/// 				(text nested between the start and end tag) is to be left out (default = "script,style")</li>
/// 		<li><b>BreakLines</b> As <class>%Boolean</class>: whether or not to insert double
/// 					line breaks for non-inline tags (such as p, br, td, ...), in order for the
/// 				iKnow engine to split sentences at those positions (default = 1)</li>
/// </ol></p>
Class %iKnow.Source.Converter.Html Extends %iKnow.Source.Converter [ Deprecated, System = 4 ]
{

Property Unescape As %Boolean [ InitialExpression = 1 ];

Property SkipTags As %String(MAXLEN = "") [ InitialExpression = ",script,style," ];

Property BreakLines As %Boolean [ InitialExpression = 1 ];

/// Make sure the PPG is empty
Method %OnNew(params As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>Utility method called by the <class>%iKnow.Source.Processor</class> and <class>%iKnow.Source.Loader</class>
/// logic to register any new or changed parameter values.</p>
Method SetParams(params As %String) As %Status
{
}

/// Buffer data in the PPG
Method BufferString(data As %String) As %Status
{
}

/// <p>Loop through buffered data and strip off HTML tags. Reset the pointer in the root
/// PPG node at the end, for <method>NextConverterdPart</method> to know
/// where to start.</p>
Method Convert() As %Status
{
}

/// Loop through the PPG again and return processed strings.
Method NextConvertedPart() As %String
{
}

Method %OnClose() As %Status [ Private, ServerOnly = 1 ]
{
}

/// Utility method to strip HTML tags from the supplied string. See the class documentation
/// for more details on the available parameters.
ClassMethod StripHTML(ByRef pText As %String, pUnescape As %Boolean = 1, pSkipTags As %String = "script,style", pBreakLines As %Boolean = 1, Output pSC As %Status) As %String
{
}

}
