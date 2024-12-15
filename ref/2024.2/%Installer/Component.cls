/// Component manager class
Class %Installer.Component Extends (%RegisteredObject, %XML.Adaptor) [ ServerOnly = 1, System = 3 ]
{

Property Name As %String;

Property Version As %String;

Property Prerequisites As list Of Component;

/// Minimum version for other components when installing this component
Property Compatibility As list Of Component;

/// List is used to keep track of a list of components
Property List As list Of Component;

/// Call ##class(Installer.Install).OnInstallComponent in the corresponding database
ClassMethod InstallComponent(pDB = "", pVerbose = 0, pDev = 0) As %Status
{
}

/// Call ##class(Installer.Install).OnUnInstallComponent in the corresponding database
ClassMethod UnInstallComponent(pDB = "", pVerbose = 0) As %Status
{
}

/// Add mappings for a Namespace and additional configuration items
ClassMethod ConfigureComponent(pDB = "", pNamespace = "", pVerbose = 0, ByRef pVars) As %Status
{
}

/// Remove mappings for a Namespace (to a component)
ClassMethod UnconfigureComponent(pDB = "", pNamespace = "", pVerbose = 0, pPurgeFiles = 0, ByRef pVars) As %Status
{
}

/// Version of the installed Component version
ClassMethod ComponentVersion(pDB = "", pVersion = "") As %Status
{
}

ClassMethod InstallUpdateINI(pFileName = "Components.ini", pDirectory = {$system.Util.DataDirectory()})
{
}

ClassMethod BuildUpdateINI(pFileName = {"Component_"_$namespace_".ini"})
{
}

ClassMethod GetXDataAsStreamWithSubstitutions(pXData, ByRef pStream) As %Status
{
}

ClassMethod UpdateComponentINI(pComponent As Component, pFile = "Components.ini", pDirectory = {$zu(12)_"utils/"}, pFromBuild = 0) As %Status
{
}

ClassMethod LoadComponentINI(ByRef pList, pFile = "Components.ini", pDirectory = {$zu(12)_"utils/"}) As %Status
{
}

}
