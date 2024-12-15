/// This class defines an overridden cell within a DeepSee Worksheet.<br/>
Class %DeepSee.UserLibrary.WorksheetCell Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";

Parameter XMLNAME = "cell";

Parameter XMLIGNORENULL = 1;

/// Row number of this cell (1-based).
Property row As %ZEN.Datatype.integer;

/// Column number of this cell (1-based).
Property column As %ZEN.Datatype.integer;

/// Page number of this cell (1-based).
Property page As %ZEN.Datatype.integer;

/// Optional title to apply to this element.
Property title As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional format to apply to this element.
Property format As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional style to apply to this element.
Property style As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional readOnly attribute to apply to this element.
Property readOnly As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute");

/// Return true if there are no non-default values in this object.
Method %IsDefault() As %Boolean
{
}

}
