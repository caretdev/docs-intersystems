/// Methods for handling macro information
Class %Atelier.v2.Utils.Macros Extends %Atelier.REST
{

/// Process the request arguments
/// Input is the %request object
ClassMethod ParseMacroRequest(Output pContent As %DynamicObject, Output pMacArg As %String) As %Status
{
}

/// Format arguments for the utility request
ClassMethod FormatMacroArgs(pRequest As %DynamicObject, pDocName As %String) As %String [ Internal ]
{
}

}
