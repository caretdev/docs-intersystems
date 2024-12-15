/// This class is used internally by InterSystems IRIS.
/// You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.<p>
///
/// Manage the sections that compose a CSP page.
Class %CSP.PageBuilder Extends %RegisteredObject [ System = 3 ]
{

/// Stack of default section identifiers in the form <name>,<block number>
Property DefaultSection As %String [ Internal, MultiDimensional ];

/// Section classes identified by name
Property Sections As array Of %CSP.PageSection [ Internal ];

/// Add new default section to the top of the stack of section identifiers.
Method PushDefaultSection(sectionblock As %String) [ Internal ]
{
}

/// Pop default section from the top of the stack of section identifiers.
Method PopDefaultSection() [ Internal ]
{
}

/// Get section class for specified section identifier.
/// If no section identfier specified, the get section for default.
Method GetSection(sectionblock As %String) As %CSP.PageSection [ Internal ]
{
}

}
