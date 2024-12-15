/// This dialog lets the user add or edit the Field List for a Listing.<br>
/// An existing list (delimited by comma) may be passed in.
Class %DeepSee.UI.Dialog.FieldList Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property ELEMENT As %ZEN.Datatype.string(ZENURL = "ELEMENT");

Property Expression As %ZEN.Datatype.string(ZENURL = "VALUE");

Property WHAT As %ZEN.Datatype.string(ZENURL = "WHAT");

Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");

Property CONTEXT As %ZEN.Datatype.string(ZENURL = "CONTEXT");

/// Translation domain of the cube
Property domain As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User edited a field. Change background color and enable Update button.
ClientMethod doEdit(editObj) [ Language = javascript ]
{
}

/// User clicked the Remove image. Remove the field from Field List box.
ClientMethod doRemove() [ Language = javascript ]
{
}

/// User clicked the Update button. Update the selected row with new value.
ClientMethod doUpdate() [ Language = javascript ]
{
}

/// User clicked the Move Up/Down image. Move the field up or down one level in the Field List box. dir = "up" or "dn".
ClientMethod moveItem(dir) [ Language = javascript ]
{
}

/// User selected a property from the tree. Get the SQLName for the selected value and put it into the Field List box.
ClientMethod selectProperty(sourceObj) [ Language = javascript ]
{
}

/// Parse a JSON string entry in the field list. Return an array with the field identifier and the header.
ClientMethod parseSqlField(value) [ Language = javascript ]
{
}

/// Produce a JSON string for the complete parsed field entry by combining the Field and Header information into something of the form<br>
///   Field AS "$$$TEXT["Header","DOMAIN"]"<br>
/// If there is no Domain defined for the cube, the $$$TEXT[] will be omitted. Delimited identifiers are always assumed and the
/// double quotes are always added to the Header portion.
ClientMethod combineSqlFieldToJSON(useDomain, parsedFieldArray) [ Language = javascript ]
{
}

/// Produce a display string for the complete field entry by combining the Field and Header information into something of the form<br>
///   Field AS "$$$TEXT["Header","DOMAIN"]"<br>
/// If there is no Domain defined for the cube, the $$$TEXT[] will be omitted. Delimited identifiers are always assumed and the
/// double quotes are always added to the Header portion.
ClientMethod combineSqlFieldToString(useDomain, parsedFieldArray) [ Language = javascript ]
{
}

/// User clicked a row from the list box. Parse selected value and place it into the
/// Field and Header boxes for editing.
ClientMethod selectedRow(fieldObj) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Provide contents of the data source tree.
ClassMethod GetDataSourceInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

ClassMethod GetDependsOnInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Get SQL Names from property name. Similar logic as in IsDate of Architect.
ClassMethod GetSQLNames(sourceClass As %String, fullName As %String, WHAT As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod GetPropName(sourceClass, property, Output propNames) As %String
{
}

/// Split a single fieldList string into the individual fields. This is more
/// sophisticated than a simple comma-delimited split.
ClassMethod %ParseSQLFieldList(pFieldString = "", pDomain = "", Output pFieldArray) As %Status
{
}

}
