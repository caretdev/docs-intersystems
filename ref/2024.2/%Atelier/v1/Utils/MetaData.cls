Class %Atelier.v1.Utils.MetaData Extends %RegisteredObject
{

/// This method is used to create the indices in {system_install}/dev/atelier/dbname.
/// Once written the contents of the directory should be added to a zip file with the same name as the directory.
/// In this manner Atelier can take advantage of the pre-index information for providing code completion and other
/// facilities.
ClassMethod Build(pDataBaseName As %String) As %Status
{
}

ClassMethod Export(pDataBaseName As %String, pTargetDirectory As %String) As %Status [ Private ]
{
}

/// Export the modified file information
ClassMethod ExportModified(pDataBaseName As %String, pTargetDirectory As %String, pDataBaseDir As %String) [ Private ]
{
}

/// This entry point will index all the objects in a database and create a file for each in the specified
/// target directory. The database name and target directory will be tested for existence.
ClassMethod ExportIndex(pDataBaseName As %String, pTargetDirectory As %String, tDataBaseDirectory As %String) [ Private ]
{
}

}
