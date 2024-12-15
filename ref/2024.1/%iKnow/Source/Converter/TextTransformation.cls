/// <p>This <class>%iKnow.Source.Converter</class> implementation wraps around a Text Transformation model
///  and will extract sections and key-value pairs as defined in the model. Select sections will be
///  concatenated and used as text input for indexing by the iKnow engine, while select key-value pairs
///  can be saved as metadata values.</p>
///  <p><b>Converter parameters:</b>
///  <ol>
///  <li><b>Model class name</b> (%String): name of the <class>%iKnow.TextTransformation.Definition</class> class
///  containing the TT model definition. This parameter is required.</li>
///  <li><b>Section headers to index</b> (%String, default = ""): comma-separated list of section headers whose contents is to
///  be indexed. Leaving this parameter blank (default) will cause all sections to be indexed. Header names
///  are case-insensitive.</li>
///  <li><b>Include headers in sections</b> (%Boolean, default = 0): whether or not to include the header
///  itself to be indexed as well. Setting this value to 1 will ensure section contents is always prepended
///  with the title.</li>
///  <li><b>Keys to extract for metadata</b> (%String, default = ""): comma-separated list of keys the
///  model extracts that need to be saved as metadata values. Leaving this parameter blank (default) will
///  result in no key-value pairs being saved as metadata. Key names are case-insensitive.</li>
///  <li><b>Metadata field names</b> (%String, default = ""): comma-separated list of metadata field names
///  corresponding to the key names in the third parameter. If left blank, it is assumed the key names
///  themselves are valid metadata field names.</li>
///  </ol>
Class %iKnow.Source.Converter.TextTransformation Extends %iKnow.Source.Converter [ Deprecated, System = 4 ]
{

Property Buffer [ MultiDimensional, Private ];

Property OutputText [ MultiDimensional, Private ];

Method BufferString(data As %String) As %Status
{
}

/// <p>This method is called after all data has been buffered. In this method the converter will need to parse the
/// raw data and extract/convert it into plain text data. If any metadata is present within the document the converter
/// can extract that metadata here, and provide it to the system. Metadata can be reported by using the <method>SetCurrentMetadataValues</method>
/// function.</p>
Method Convert() As %Status
{
}

ClassMethod GetMetadataKeys(params As %String) As %List
{
}

/// <p>When conversion is done, this method will be called to fetch the converted data back from the converter. The method
/// should return the converted text in chuncks of maximum 32k in size. When no more data is available, the method should
/// return the empty string ("") to signal that all data has been transferred.</p>
Method NextConvertedPart() As %String
{
}

}
