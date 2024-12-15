/// This class is used internally by InterSystems IRIS.<br>
/// This internal utility class provides an API for serving
/// StudioAssist Schemas (SASchema) for use by Studio.
Class %Studio.SASchemaUtil Extends %RegisteredObject [ System = 3 ]
{

Parameter DELIMITER = ":";

ClassMethod getSchemaDefinition(pSchemaNameSpace As %String, Output pOutput As %String) As %Status
{
}

/// return the SASchema definition to the Studio
ClassMethod getSchemaDefinitionIntoCacheTemp(pSchemaNameSpace As %String, pIndex As %String) As %Status
{
}

/// load the SASchema into the ^IRIS.SASchema global
ClassMethod loadSchema(pSchemaNameSpace As %String, pForce As %Boolean = 0, pForeground As %Boolean = 0, ByRef pIsSpawned As %Boolean = 0) As %Status
{
}

/// returns if the SASchema is up-to-date
ClassMethod isSchemaUpToDate(pSchemaNameSpace As %String) As %Boolean
{
}

/// Do the actual work of generating Schema information.
ClassMethod %GenerateSchema(pSchemaNameSpace As %String, pMonikerName As %String, pMonikerData As %String) As %Status [ Internal ]
{
}

ClassMethod getSchemaMoniker(pSchemaSpec As %String, Output pMonikerType, pMonikerName, pMonikerData, Output pRootClasses As %String) As %String
{
}

/// Used to return the correlated object from an Xdata block
ClassMethod returnCorrelated(xdata As %Dictionary.XDataDefinition, ByRef sc As %Status) As %RegisteredObject [ Internal ]
{
}

ClassMethod readSASchemaFromStream(pStream, pSchemaNameSpace, pChecksum) As %Status
{
}

/// Purge the cached SASchema information for the given schema namespace.
ClassMethod purge(pSchemaNameSpace As %String) As %Status
{
}

/// Purge all cached SASchema information
ClassMethod purgeAll() As %Status
{
}

}
