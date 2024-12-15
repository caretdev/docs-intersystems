/// This class allows you to modify and view the [WorkQueues] section of the CPF file through
/// programatic APIs. While properties are usually modified through the System Management
/// portal, there may be some occasion where modifying them through the API's is best
/// for your system. In all the Config methods, if you do not specify the CPFFile parameter,
/// the currently active CPF file is used. If you wish to modify a CPF file which is not
/// the currently active one, then specify the CPFFile you wish to modify in the method call.<br>
/// The Flags parameter does not normally need to be specified; the defaults are usually
/// sufficient for most cases.<br>
/// You can use either the provided API's (Create/Get/Modify/Delete) to modify the properties by passing
/// in the correct parameters, or use Object syntax to open and directly manipulate the config
/// objects (Open() and Exists()). Most objects created here need only to specify the Name of the object,
/// and 1 or 2 properties since the the defaults are what are commonly used for most cases.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to create an instance
/// %SYS>s Name="TEST"
/// %SYS>s Properties("MaxActiveWorkers")=8
/// %SYS>s Status=##Class(Config.WorkQueues).Create(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Use class methods to modify properties
/// %SYS>s Status=##Class(Config.WorkQueues).Get(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("DefaultWorkers")=0
/// Properties("MaxWorkers")=0
/// Properties("MaxActiveWorkers")=8
/// %SYS>s Properties("MaxActiveWorkers")=4
/// %SYS>s Status=##Class(Config.WorkQueues).Modify(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now use Objects to modify properties
/// %SYS>s Obj=##Class(Config.WorkQueues).Open(Name)
/// ; We could have used i ##Class(Config.WorkQueues).Exists(Name,.Obj) instead of Open()
/// %SYS>w Obj.MaxActiveWorkers
/// 4
/// %SYS>s Obj.MaxWorkers=2
/// %SYS>s Status=Obj.%Save()
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now delete the object we just created
/// %SYS>s Status=##Class(Config.WorkQueues).Delete(Name)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.WorkQueues Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// {$$$CPFSave};
Parameter CPFFlags [ Internal ] = {1};

/// WorkQueue name is not capitalized.<br>
Parameter CAPITALNAME = 0;

Parameter EMSSERVICE [ Internal ] = "WorkQueue";

Parameter SystemWorkQueues [ Internal ] = "SQL,Default,Utility";

/// When a work group in this category is created and no worker job count is specified this is the default number of worker jobs
/// we will assign to the group. 0 = Dynamic.
Property DefaultWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

/// Maximum number of active worker jobs we will keep in the pool of jobs servicing requests in this category.
/// Idle jobs are detected and new jobs are started automatically to keep the maximum active job number around this limit. 0 = Dynamic, -1 = unlimited.
Property MaxActiveWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

/// When a work group in this category is created specifying the number of worker jobs wanted and the number requested is
/// greater than this limit then we will use this limit value instead. 0 = Dynamic
Property MaxWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

/// If none-zero specifies the maximum number of workers we will start in this category.
/// Even if all existing workers are blocked we will not start more workers once we reach this limit. This is useful for IO intensive
/// workloads where we expect workers to be blocked and are not trying to control the amount of CPU a worker uses.
Property MaxTotalWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

/// If true makes this a true queue where you need to wait for the work group request to get to the head of the
/// queue in order to get a worker assigned. When AlwaysQueue=0 for a category when a new WQM group is created we allocated
/// at least one worker immediately to make progress on the work even if the rest of the work unit are in a queue waiting for additional
/// workers to free up.
Property AlwaysQueue As %Boolean [ InitialExpression = 0 ];

/// Called by the Create method during import from a CPF file.<br>
ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]
{
}

/// Write a default WorkQueues section in a CPF file.<br>
/// This method assumes that a CPF file has been opened, and that a U CPFFile command
/// has been executed before this is called. Entries added here must also be added to
/// CreateDefaults().
ClassMethod Default(CPFFile As %String, Platform As %String) As %Status [ Internal ]
{
}

/// This class is called when Load() is called. It makes sure that the system defined
/// workqueues are defined. (We could edit the CPF and remove them, this puts them back in.)
/// Entries added here must also be added to Default().
ClassMethod CreateDefaults() As %Status [ Internal ]
{
}

/// Returns whether
ClassMethod IsSystemWorkQueue(Name As %String) As %Boolean
{
}

/// Load the parameters into memory and activate.<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// Maximum Number of Queue Manager Workers for the system <br>
ClassMethod MaxWorkersAvailable() As %Integer
{
}

ClassMethod %OnBeforeSaveCallBack(insert As %Boolean, Obj As %ObjectHandle) As %Status [ Internal, Private ]
{
}

/// Any error returned here will keep the object from being deleted.<br>
ClassMethod %OnDeleteCallBack(Obj As %ObjectHandle) As %Status [ Internal ]
{
}

/// This is called from %Save().<br>
/// Any error returned from this will cause the object to not be saved.<br>
Method %OnValidateObject() As %Status [ Internal ]
{
}

/// List WorkQueues in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Names</b> - Comma separated list of WorkQueue names<br>
/// <var>"*"</var> - All records match<br>
/// <var>"String,String1"</var> - Any records matching one of these elements<br>
/// <var>"String*"</var> - Any record starting with "String"<br>
/// <var>"String,String1*,String2"</var> - Any record matching one of these elements, or starting with "String1"<br>
/// <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
/// <b>Flags</b> - Currently ignored.<br>
/// <b>Format</b> <br>
/// <var>0</var> - Standard report list format<br>
/// <var>1</var> - ^CONFIG global format<br>
/// <var>2</var> - CPF file format format<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// List WorkQueues in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Filter</b> - Filter to select columns<br>
/// <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
/// <b>Flags</b> - Currently ignored.<br>
/// <b>Format</b> <br>
/// <var>0</var> - Standard report list format<br>
/// <var>1</var> - ^CONFIG global format<br>
/// <var>2</var> - CPF file format format<br>
/// Note: This query may change in future versions<br>
ClassMethod ListFilterExecute(ByRef qHandle As %Binary, Filter As %String = "", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = LocalDatabaseListExecute ]
{
}

ClassMethod ListFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = LocalDatabaseListExecute ]
{
}

}
