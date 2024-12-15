/// This class represents a Text Transformation model, as defined in its <xdata>Transformation</xdata> XData
/// block. See the <method>%Apply</method> and <method>%ApplyBatch</method> methods for ways how
/// to invoke this model on input text.
Class %iKnow.TextTransformation.Definition Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

Parameter DEFAULTSECTIONHEADER = "no header";

/// The XML definition for this class' Text Transformation.
/// See also <class>%iKnow.TextTransformation.Model.Model</class>.
XData Transformation [ XMLNamespace = "http://www.intersystems.com/iknow/transformation" ]
{
}

///  This callback method is invoked before a record is processed, after the Output object has been instantiated.
Method %OnBeforeTransformation(ByRef pOutput As Output) As %Status
{
}

///  This callback method is invoked after a record has been processed, before the Output object is saved.
Method %OnAfterTransformation(ByRef pOutput As Output) As %Status
{
}

/// Callback method invoked upon the creation of a Section object.
/// Use this callback to customize behavior upon creating sections. Setting <var>pSection</var> to
/// null will remove the section from the output.
Method %OnCreateSection(ByRef pSection As OutputSection, ByRef pOutput As Output) As %Status
{
}

/// Callback method invoked upon the creation of a KeyValue object.
/// Use this callback to customize behavior upon creating key-value pairs. Setting <var>pKeyValue</var>
/// to null will prevent the key-value pair from being added to the output.
Method %OnCreateKeyValue(ByRef pKeyValue As OutputKeyValue, ByRef pOutput As Output) As %Status
{
}

/// Invokes the transformation model on a character stream. See also <method>%Apply</method>.
ClassMethod %ApplyStream(pStream As %Stream.Object, Output pOutput As %iKnow.TextTransformation.Output) As %Status [ Final ]
{
}

/// <p>Invokes the model defined in <XData>Transformation</XData> on the string <var>pString</var>, identifying
/// sections, headers and key-value pairs as specified in the model. These elements are returned through
/// an <var>pOutput</var> object of the output class specified in the model, defaulting to
/// <class>%iKnow.TextTransformation.Output</class>.</p>
/// <p><var>pString</var> may also be supplied as an array of strings representing consecutive lines of
/// text (by reference). To invoke the model in batch on a bunch of records, use <method>%ApplyBatch</method>.</p>
ClassMethod %Apply(ByRef pString As %String, Output pOutput As %iKnow.TextTransformation.Output) As %Status [ Final ]
{
}

/// <p>Invokes the model specified in <xdata>Transformation</xdata> on all records retrieved by
/// <var>pResultSet</var>, populating and saving an output object for each record. The first column of
/// <var>pResultSet</var> is used as an identifier and saved as the Ref property of the output object.
/// The second column is assumed to contain the text to be transformed by this model.</p>
/// <p>Note that the output object used for this batch operation should inherit from <class>%Persistent</class>
/// in order for the output to be effectively persisted.</p>
/// <p>See also <method>%Apply</method>.</p>
ClassMethod %ApplyBatch(pResultSet As %ResultSet) As %Status [ CodeMode = objectgenerator, Final, ForceGenerate, GenerateAfter = %GetOutputClass ]
{
}

///  Transforms input strings into a text array representing actual lines of text
Method %ProcessInput(ByRef pString As %String, Output pTextArray) As %Status [ Internal, Private ]
{
}

///  Transforms the <var>pOutputArray</var> produced by a sequence of transformations and annotations into an output object.
Method %ProcessOutput(ByRef pOutputArray, ByRef pOutput As %iKnow.TextTransformation.Output) As %Status [ Internal, Private ]
{
}

/// Internal method applying the model to a text array. The code for this method is automatically
/// generated based on the mode definition in <xdata>Transformation</xdata>.
Method %ApplyInternal(ByRef pString As %String, Output pOutput As %iKnow.TextTransformation.Output) As %Status [ CodeMode = objectgenerator, Final, ForceGenerate, GenerateAfter = %GetDefinition, Internal, Private ]
{
}

/// Initializes a new section object (returned through <var>pSection</var>.
Method %InitializeSection(ByRef pOutput As Output, Output pSection As OutputSection, pHeader As %String, pLocation As OutputLocation) As %Status [ Final, Internal ]
{
}

/// Finalizes a section object <var>pSection</var>, ensuring the <method>%OnCreateSection</method>
/// callback is invoked.
Method %FinalizeSection(ByRef pOutput As Output, ByRef pSection As OutputSection, pLocationEnd As OutputLocation) As %Status [ Final, Internal ]
{
}

/// Helper method to create a Section object. Custom code in any of the callbacks (such as
/// <method>%OnBeforeTransformation</method>) may invoke this method to add default sections.
/// Note that no further callbacks are invoked for key-value pairs in the <var>pKeyValues</var> array.
Method %CreateSection(ByRef pOutput As Output, pHeader As %String, pText As %String, pLocation As OutputLocation, ByRef pKeyValues) As %Status [ Final ]
{
}

/// Helper method to create a KeyValue object. Custom code in any of the callbacks (such as
/// <method>%OnBeforeTransformation</method>) may invoke this method to add default key value pairs.
Method %CreateKeyValue(ByRef pOutput As Output, pHeader As %String, pKey As %String, pValue As %String, pLocation As OutputLocation) As %Status [ Final ]
{
}

///  Returns the class name of the output class for this TT model, as specified in <xdata>Transformation</xdata>.
ClassMethod %GetOutputClass() As %String [ CodeMode = objectgenerator, ForceGenerate, GenerateAfter = %LoadKeysAndHeaders, Internal ]
{
}

Method %OnNew() As %Status [ Internal, ServerOnly = 1 ]
{
}

///  Returns the TT model definition specified in <xdata>Transformation</xdata> as a <class>%iKnow.TextTransformation.Model.Model</class> object.
ClassMethod %GetDefinition(pClassName As %String, Output pDefinition As %iKnow.TextTransformation.conf.Model) As %Status [ Internal ]
{
}

///  Loads the key and header sets from the locations specified in <xdata>Transformation</xdata>.
Method %LoadKeysAndHeaders() As %Status [ CodeMode = objectgenerator, ForceGenerate, GenerateAfter = %ApplyInternal, Internal ]
{
}

}
