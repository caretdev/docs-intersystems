Class Interop.Config.Production Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// Validate the properties of a ConfigProduction CPF Action
ClassMethod validateProductionProperties(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Configure a production in the provided namespace.
/// If the namespace is not enabled for interop, enable it.
/// If the namespace does not exist yet, create it.
ClassMethod ConfigProduction(ByRef Properties As %String) As %Status [ Internal ]
{
}

}
