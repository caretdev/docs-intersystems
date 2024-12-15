/// When using an embedded datatype class this provides a &lt;member&gt;Embedded method which returns
/// an instance of the embedded class to the caller. You can mix this superclass in to your datatype class
/// for example specify the superclass %25String,%25Compiler.Type.Embedded.
Class %Compiler.Type.Embedded [ System = 1 ]
{

/// Return an instance of the embedded class
ClassMethod Embedded() As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
