Class %ZEN.Report.Display.composite Extends (%ZEN.Report.Display.template, %ZEN.Report.Display.tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Developers should override this XData block to provide the default contents of this composite group
/// In addtion, the %OnAfterCreateComposite() method may be overridden in order to dynamically modify
/// the default composition.
XData Display [ XMLNamespace = "http://www.intersystems.com/zen/report/display" ]
{
}

/// This callback is called after the children of this composite
/// component have been created.
Method %OnAfterCreateComposite() As %Status [ Abstract ]
{
}

/// This internal method creates the contents of the composite component.
Method %CreateComposite() As %Status [ CodeMode = objectgenerator, GenerateAfter = %OnAfterCreateComposite, ProcedureBlock = 0 ]
{
}

}
