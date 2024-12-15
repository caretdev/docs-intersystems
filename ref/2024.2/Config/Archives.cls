///  This class allows you to modify and view the [Archives] section of the CPF file through
///  programatic APIs. While properties are usually modified through the System Management
///  portal, there may be some occasion where modifying them through the API's is best
///  for your system. In all the Config methods, if you do not specify the CPFFile parameter,
///  the currently active CPF file is used. If you wish to modify a CPF file which is not
///  the currently active one, then specify the CPFFile you wish to modify in the method call.<br>
///  The Flags parameter does not normally need to be specified; the defaults are usually
///  sufficient for most cases.<br>
///  You can use either the provided API's (Create/Get/Modify/Delete) to modify the properties by passing
///  in the correct parameters, or use Object sytax to open and directly manipulate the config
///  objects (Open() and Exists()). Most objects created here need only to specify the Name of the object,
///  and 1 or 2 properties since the the defaults are what are commonly used for most cases.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to create an instance
/// %SYS>s Name="ABC"
/// %SYS>s Properties("Type")="s3"
/// %SYS>s Properties("Location")="s3://myBucket/"
/// %SYS>s Status=##Class(Config.Archives).Create(Name,.Properties)
/// %SYS>i '$$$ISOK(Status) w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Use class methods to modify properties
/// %SYS>s Status=##Class(Config.Archives).Get(Name,.Properties)
/// %SYS>i '$$$ISOK(Status) w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("Type")="s3"
/// Properties("Location")="s3://myBucket/"
/// %SYS>s Properties("Location")="s3://myBucket2/"
/// %SYS>s Status=##Class(Config.Archives).Modify(Name,.Properties)
/// %SYS>i '$$$ISOK(Status) w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now use Objects to modify properties
/// %SYS>s Obj=##Class(Config.Archives).Open(Name)
/// ; We could have used i ##Class(Config.Archives).Exists(Name,.Obj) instead of Open()
/// %SYS>w Obj.Type
/// s3
/// %SYS>s Obj.Location="s3://myBucket/"
/// %SYS>s Status=Obj.%Save()
/// %SYS>i '$$$ISOK(Status) w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now delete the object we just created
/// %SYS>s Status=##Class(Config.Archives).Delete(Name)
/// %SYS>i '$$$ISOK(Status) w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.Archives Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// {$$$CPFSave};
Parameter CPFFlags [ Internal ] = {1};

///  Archive name is always capitalized.<br>
Parameter CAPITALNAME = 1;

Parameter EMSSERVICE [ Internal ] = "Namespace";

/// <br><br>
///
Property Type As %String;

/// <br><br>
///
Property Location As %String(MAXLEN = 4096);

///  Force the name to be uppercase.<br>
Method NameSet(Val) As %Status [ Internal ]
{
}

///  Called by the Create method during import from a CPF file.<br>
ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]
{
}

/// Return Type,Location of a named archive target.<br>
ClassMethod ArchiveByName(Name As %String) As %String
{
}

///  Write a default Archives section in a CPF file.<br>
ClassMethod Default(CPFFile As %String, Platform As %String) As %Status [ Internal ]
{
}

///  Get the archive target's location.<br>
///  If the archive does not exist in the configuration, it will return null.
ClassMethod GetLocation(Name As %String) As %String [ Internal ]
{
}

///  Load the parameters into memory and activate.<br>
///  Parameters:<br>
///  <b>Obj</b> = Handle to the object which caused the load. If "",
///  then load everything, only called from STU.<br>
///  If a delete operation, then Obj is the NAME of the item which was deleted
///  since the oject itself has already been deleted.<br>
///  <b>Flags</b> = Type of modification.<br>
///  0 - Modify<br>
///  1 - Create/Insert<br>
///  2 - Delete<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

///  Modify Dataset section instance in CPF file. If the Server or Directory path is changed, it will be reflected on all Namespaces referring this DB.<br>
///  <br>
///  Parameters:<br>
///  <b>Name</b> - Name of the archive target to modify.<br>
///  <b>Properties (byref)</b> - List of the properties to modify in Properties(Name)=Value format. See the subclass for a list of valid properties.
///  If a specific property is not passed in the properties array, the value is not modified.<br>
///  <b>CPFFile (byref)</b> - Name of the CPF file to use, Default=current active CPF file.<br>
///  <b>Flags</b> - Bit string of options to perform. See the <METHOD>Create</METHOD> method for values.<br>
///  <br>
///  Return values:<br>
///  <b>CPFFile (byref)</b> - Name of the CPF file the modification was made in.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status
{
}

///  Move the CPF data into the active config global. This also check if any Archive is added/removed/updated in CPF file since last shutdown. And those archives will affect journal setting.<br>
///  <br>
///  Parameters:<br>
///  <b>Obj</b> - Handle to Object causing the move<br>
ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

///  Rename the archive name in the CPF file.<br>
///  <br>
///  Parameters:<br>
///  <b>OldName</b> - Name of the archive to rename.<br>
///  <b>NewName (byref)</b> - New name of the archive.<br>
///  <b>CPFFile (byref)</b> - Name of the CPF file to use, Default=current active CPF file.<br>
///  <br>
///  Return values:<br>
///  <b>CPFFile (byref)</b> - Name of the CPF file the modification was made in.<br>
ClassMethod Rename(OldName As %String, NewName As %String, ByRef CPFFile As %String = "") As %Status
{
}

///  Returns a list of archive names whose Type/Location properties are the same as
///  the ones for a given archive for the current configuration.<br>
///  This will return the passed archive name as one of the matching ones.
ClassMethod SynonymArchives(Name As DBName, ByRef ArcList As %String, CPFFile As %String = "", Flags As %Integer = 0) As %Status [ Internal ]
{
}

///  Return whether an archive target is in use (for journal).
ClassMethod IsInUse(Name As DBName) As %Status [ Internal ]
{
}

///  Called from %Save().<br>
///  Validate the archive info here, and possibly change it.<br>
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

///  Called from %OnDelete.<br>
///  Returning an error here will keep the archive from being deleted.<br>
ClassMethod %OnDeleteCallBack(Obj As %ObjectHandle) As %Status [ Internal ]
{
}

///  Called from %Save().<br>
///  Validate that the archive being created has all its parameters set correctly.<br>
///  Any error returned here will abort the creation of the archive.<br>
Method %OnValidateObject() As %Status [ Internal ]
{
}

///  List Archives in a CPF file.<br>
///  <br>
///  Parameters:<br>
///  <b>Names</b> - Comma separated list of Archive names<br>
///  <var>"*"</var> - All records match<br>
///  <var>"String,String1"</var> - Any records matching one of these elements<br>
///  <var>"String*"</var> - Any record starting with "String"<br>
///  <var>"String,String1*,String2"</var> - Any record matching one of these elements, or starting with "String1"<br>
///  <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
///  <b>Flags</b> - Type of archives to return
///  <var> 0 </var> - All archives
///  <var> 1 </var> - rsync archives
///  <var> 2 </var> - s3 archives
///  <b>Format</b> <br>
///  <var>0</var> - Standard report list format<br>
///  <var>1</var> - ^CONFIG global format<br>
///  <var>2</var> - CPF file format<br>
///  Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

///  List Archives in a CPF file. Used internally by the List Query.<br>
///  <br>
///  Parameters:<br>
///  <b>Names</b> - Comma separated list of Archive names<br>
///  <var>"*"</var> - All records match<br>
///  <var>"String,String1"</var> - Any records matching one of these elements<br>
///  <var>"String*"</var> - Any record starting with "String"<br>
///  <var>"String,String1*,String2"</var> - Any record matching one of these elements, or starting with "String1"<br>
///  <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
///  <b>Flags</b> - Type of archives to return
///  <var> 0 </var> - All archives
///  <var> 1 </var> - Local archives
///  <var> 2 </var> - Remote archives
///  Note: This query may change in future versions<br>
ClassMethod List1Execute(ByRef %qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod List1Flags(Flags, Server) As %Boolean [ Internal, SqlProc ]
{
}

ClassMethod List1Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = List1Execute ]
{
}

ClassMethod List1Close(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = List1Execute ]
{
}

///  This callback method is invoked by the <METHOD>%Open</METHOD> method to
///  provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
///  <P>If this method returns an error then the object will not be opened.
Method %OnOpen() As %Status [ Private, ServerOnly = 1 ]
{
}

}
