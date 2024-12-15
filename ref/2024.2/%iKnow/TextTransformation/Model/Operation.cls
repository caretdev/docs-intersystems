/// This class represents an atomic operation in the sequence of operations making up a TT model.
Class %iKnow.TextTransformation.Model.Operation Extends node [ Deprecated, System = 3 ]
{

///  Name of this operation. This should correspond to the class name of a subclass of <class>%iKnow.TextTransformation.Annotate</class>
/// or <class>%iKnow.TextTransformation.Transform</class>. If the class belongs to the %iKnow.TextTransformation package,
/// the package name can be left out.
Property name As %String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

///  Display name of the operation.
Property displayName As %String(XMLPROJECTION = "NONE") [ Calculated ];

///  Operation type
Property type As %String(VALUELIST = ",annotate,transform", XMLPROJECTION = "ATTRIBUTE");

Property description As %String(XMLPROJECTION = "ATTRIBUTE");

Method typeGet() As %String [ Internal, ServerOnly = 1 ]
{
}

Method displayNameGet() As %String [ Internal, ServerOnly = 1 ]
{
}

///  Returns the full classname for the operation class referred to in <property>name</property>.
Method GetClassname() As %String
{
}

}
