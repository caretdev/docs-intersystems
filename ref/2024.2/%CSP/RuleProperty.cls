/// Implement CSR:PROPERTY tag that defines a property in the rule class.
/// The NAME attribute specifies the name of the property.
/// The following additional attributes of the property are supported:
/// description
/// final
/// initial
/// multidimensional
/// private
/// transient
/// type
Class %CSP.RuleProperty Extends %CSP.RuleElement [ Not ProcedureBlock, System = 3 ]
{

/// Add the specified property to the rule class that is being created.
Method RenderStartTag() As %Status
{
}

}
