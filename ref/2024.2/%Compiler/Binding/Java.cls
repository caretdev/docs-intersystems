/// This class handles creating the proxy Java class.
Class %Compiler.Binding.Java Extends %RegisteredObject [ System = 4 ]
{

/// Creates the proxy Java class.
/// <var>IRISClassName</var> is the full name of the IRIS class being projected (including package name).
/// <var>projParams</var> is the array of projection parameters defined in the IRIS class.
/// <var>flushGlobals</var> is set to 0 if createProjection() is called during the projection of another class,
/// and 1 otherwise. It prevents looping projection calls, and also flushes out globals used during projection.
/// <var>properties</var> is used by a subclass that is calling CreateProjection() on its leftmost superclass.
/// It helps the subclass keep track of properties already existing in its superclass, so that it doesn't
/// reproject those properties.
ClassMethod CreateProjection(IRISClassName, projParams As %ArrayOfDataTypes, flushGlobals = 1, ByRef properties = {##class(%ArrayOfDataTypes).%New()}, ByRef qstruct As %String) As %Status
{
}

/// Returns a newly created stub file if the file specified by <var>pathName</var> and <var>className</var> doesn't exist.
/// Otherwise, returns a temporary file that will be recopied and removed once projection succeeds.
ClassMethod GetFile(pathName As %String, className As %String, isInterface As %Boolean, projParams As %ArrayOfDataTypes, ByRef generateTime = "") As JavaFile
{
}

/// Close the file specified by <var>pathName</var> and <var>className</var>.
/// If a temporary file exists for the class, copy its content to the right .java file, then delete the temporary file.
ClassMethod CloseFile(pathName As %String, className As %String, file As JavaFile, projIsSuccessful = 0)
{
}

/// Returns the pathname for the directory the projected Java file would be in.
ClassMethod SetPackageDir(rootdir As %RawString, ByRef javaPackage As %RawString) As %RawString
{
}

/// Writes package info to Java file.
ClassMethod CreatePackage(file As JavaFile, javaPackage As %String)
{
}

/// Writes Java class declaration to the Java file.
ClassMethod CreateDeclaration(file As JavaFile, isAbstract As %Boolean, className As %String, classType As %String, super As %String, jdCreator As JavaDocCreator, description As %String)
{
}

ClassMethod CreateLocalVars(file As JavaFile, className As %String, genSerialUid = 0)
{
}

ClassMethod CreateImports(file As JavaFile, tConverter As JavaTypeConverter, super As %String)
{
}

ClassMethod FlushGlobals(toFlush As %Boolean)
{
}

}
