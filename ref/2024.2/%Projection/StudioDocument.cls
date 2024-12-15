/// Register this class as a routine that will work with Studio.
Class %Projection.StudioDocument Extends %Projection.AbstractProjection [ System = 3 ]
{

/// Name of the extension for this routine type, e.g. 'ABC'
Parameter DocumentExtension As STRING;

/// Type of the document, this varies how Studio views this document.
/// Possible values include:<ul>
/// <li> INT - ObjectScript INT code</li>
/// <li> MAC - ObjectScript MAC code</li>
/// <li> INC - ObjectScript macro include</li>
/// <li> CSP - Cache Server Page</li>
/// <li> CSR - Cache Server Rule</li>
/// <li> JS  - JavaScript code</li>
/// <li> CSS - HTML Style Sheet</li>
/// <li> XML - XML document</li>
/// <li> XSL - XML transform</li>
/// <li> XSD - XML schema</li>
/// <li> MVB - Multivalue Basic mvb code</li>
/// <li> MVI - Multivalue Basic mvi code</li>
/// </ul>
/// If no value specified then Studio will use the null parser for this document.
Parameter DocumentType As STRING;

/// Integer to modify the icon that Studio uses to display documents of this type
Parameter DocumentIcon As INTEGER = 0;

/// Description of this document type
Parameter DocumentDescription As STRING;

/// Set to new to make Studio automatically adding a 'new XYZ' item for this document type
Parameter DocumentNew As BOOLEAN = 0;

/// Schema associated with this document type, used by Studio Assist
Parameter XMLNamespace As STRING;

ClassMethod CreateProjection(classname As %String, ByRef parameters As %String) As %Status
{
}

ClassMethod RemoveProjection(classname As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
