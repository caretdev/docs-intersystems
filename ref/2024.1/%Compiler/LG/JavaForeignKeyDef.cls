Class %Compiler.LG.JavaForeignKeyDef Extends %SerialObject [ System = 4 ]
{

Property Description As %RawString;

Property Internal As %Boolean [ InitialExpression = 0 ];

Property Name As %Dictionary.Identifier;

Property OnDelete As %RawString [ InitialExpression = "noaction" ];

Property OnUpdate As %RawString [ InitialExpression = "noaction" ];

Property Properties As %RawString;

Property ReferencedClass As %Dictionary.Classname;

Property ReferencedKey As %RawString;

Property SequenceNumber As %Integer [ InitialExpression = 0 ];

Property SqlName As %RawString;

Property PropertiesList As list Of %RawString;

}
