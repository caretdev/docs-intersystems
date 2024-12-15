/// This class represents a particular location in the text being transformed by a TT model.
/// The <property>OutputLine</property> property refers to a line number in the <i>transformed</i>
/// text, which may differ from the original input text. This transformed text is saved to the OutputText
/// property of the <class>Output</class> class.
Class %iKnow.TextTransformation.OutputLocation Extends %SerialObject [ Deprecated, System = 4 ]
{

///  Line number in the output text where the item this object annotates starts.
Property OutputLine As %Integer;

///  Line number in the output text where the item this object annotates ends, if different from
///  <property>OutputLine</property>.
Property OutputLineEnd As %Integer;

Method %OnNew(pOutputLine As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

///  Registers the supplied location object as the end location of this object.
Method SetEndLocation(pLocation As OutputLocation) As %Status
{
}

}
