Class %DeepSee.PMML.Definition.abstractNode Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, Inheritance = right, System = 3 ]
{

/// Ensures <method>%ValidateObject</method> is called for this node and all its nested
/// %PMML subnodes.
/// This works depth-first, so all nested elements are validated before the nesting element
/// itself gets validated. Therefore, <method>%OnValidateObject</method> methods may assume
/// nested elements are fully validated.
Method %ValidatePMML(pForce As %Boolean = 0) As %Status [ CodeMode = objectgenerator, Final, ForceGenerate ]
{
}

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
