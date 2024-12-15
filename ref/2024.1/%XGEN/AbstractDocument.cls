/// <div style="color:red;padding:5px; border:1px solid black; background:#FFFFAA;">
/// <b>Note:</b> This class is included because it is needed by
/// other parts of the library. You should not use this or any other class within
/// this package within your applications as a future version will
/// be incompatible. If you are interested in this functionality
/// please contact InterSystems.
/// </div><br/>
/// This is the base class for XGEN documents.<br>
/// <h1>XGEN: XML-based Code Generation Language</h1>
/// XGEN is a framework for creating specialized code generators that are driven by an XML-based specification.<br/>
/// <br/>
/// <b>Overview:</b><br/>
/// XGEN contains a set of base classes from which a user can implement an XML-based code generator.<br/>
/// <br/>
/// An XGEN document is an XML document that can be compiled into executable code.
/// Every activity within an XGEN document is implemented as a class.
/// <br/>
/// Within an XGEN document, each XGEN class provides the following:
/// <ul>
/// <li>The XML representation of the activity (i.e., its name and attributes).</li>
/// <li>Generation of code for the activity.</li>
/// <li>Generation of Studio Assist schema information.</li>
/// </ul>
Class %XGEN.AbstractDocument Extends (%XGEN.AbstractNode, %XGEN.AbstractGroup, %Studio.SASchemaClass) [ Abstract, Inheritance = right, System = 3 ]
{

/// This method is called from a method generator within a target class.
/// It generates code for the method.<br/>
/// <var>pTargetClass</var> is the compiled class definition for the target class.<br/>
/// <var>pCode</var> is a character stream that contains the generated code.<br/>
/// <var>pXDataName</var> is the name of the XData block containing the XGEN document definition.<br/>
ClassMethod %Generate(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pXDataName As %String) As %Status
{
}

/// This method is invoked when there is no XDATA block defined in the target
/// class.
ClassMethod %GenerateDefaultCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pXDataName As %String) As %Status
{
}

}
