Class %ZEN.Report.Display.barcode Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// The namespace prefix for BarCode4J barcode elements in namespace http://barcode4j.krysalis.org/ns
Property barcodeNamespacePrefix As %ZEN.Datatype.string [ InitialExpression = "barcode" ];

/// value contains the barcode message that will be rendered, used only if field is non-null
Property value As %ZEN.Datatype.string;

/// if non-null xpath expression refering to barcode message that will be rendered
Property field As %ZEN.Datatype.string;

Property barcodeOrientation As %ZEN.Datatype.string(VALUELIST = ",0,90,-90,180,-180,270,-270") [ InitialExpression = "0" ];

/// See <href>http://barcode4j.sourceforge.net/2.1/barcode-xml.html</href> for more information about barcode types
Property barcodeType As %ZEN.Datatype.string(VALUELIST = ",intl2of5,itf-14,codabar,code39,code128,upc-a,upc-e,ean-13,ean-8,ean-128,postnet,royal-mail-cbc,usps4cb,pdf417,datamatrix") [ InitialExpression = "code39" ];

Property htmlErrorMessage As %ZEN.Datatype.caption(XMLPROJECTION = "none") [ InitialExpression = "Barcode elements are only supported in PDF output." ];

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0, ByRef ignoreId = 0) As %Status
{
}

}
