Class %Document.Model.Schema.collection Extends node [ System = 4 ]
{

Property className As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

Property sqlName As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Properties defined for this class.
Relationship fields As field(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = collection ];

/// Indexes defined for this class.
Relationship indexes As index(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = collection ];

/// Test if this definition is valid.
Method %Validate() As %Status
{
}

}
