/// This class contains helper functions for the various System Management server functions.
Class Config.Map Extends %SYSTEM.Help [ Abstract, Final, System = 4 ]
{

///  Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Main routine to import a [Map.*] section.<br>
/// Called from Config.CPF.Read().<br>
ClassMethod Create(Namespace As %String, Name As %String, ByRef Properties As %String, CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) [ Internal ]
{
}

/// No default section in a CPF file.<br>
ClassMethod Default(CPFFile As %String, Platform As %String) As %Status [ Internal ]
{
}

/// Move all the mappings from the config database into the ^CONFIG global for all namespaces.<br>
/// Parameters:<br>
/// <b>Namespace</b> - ignored, used as a placeholder.<br>
ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// Write all the mappings for all namespaces to the CPFFile.<br>
/// This method assumes that the CPF file has been opened and USED.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - Name of the CPF file to write to.<br>
ClassMethod WriteSection(CPFFile As %String) As %Status [ Internal ]
{
}

/// Initialize storage for Mapping edits in a Namespace. This should be called before any Map edits which
/// use the $$$CPFMappingEdit flag for saving multiple edits before they are activated. This clears
/// anything in the CACHE_MAPPINGSFILE index and copies the current Namespace settings. The edits would then
/// be processed and activated using the DataMove API.
/// <br><br>
/// Note that this temporary storage area is the same as used by the Management Portal. There is no locking
/// implemented, so care must be taken to not use both at the same time.
/// <br><br>
/// The 'Copy' argument will create a second copy of the current Mappings for the Namespace, using the
/// CACHE_MAPPINGSFILE_MAPCOPY index. This can later be used to revert any Mapping changes by calling RevertEdits().
ClassMethod InitializeEdits(Namespaces As %String, Copy As %Boolean = 0) As %Status
{
}

/// This will Replace and immediately Activate the copy of the original Mappings created with the 'Copy'
/// argument of InitializeEdits(), overwriting the current Namespace Mappings. Make sure you understand
/// the implications of this before calling here.
/// <br><br>
/// This can be used to recover from a "bad" Mappings update, while the system is still inactive.
/// The caller is responsible for ensuring that no global activity has used the new, editted Mappings.
/// <br><br>
/// If 'Activate'=0, then the original Mappings will be copied to the $$$CPFMappingEdit storage, and the user
/// may call the DataMove API to reverse the data copy and do the Activation.
ClassMethod RevertEdits(Activate As %Boolean = 1) As %Status
{
}

/// Tests for new Mapping Edits API, for MapGlobals, MapRoutines and MapPackages.
/// Use Create, Get, Exists, and Delete methods. ListMapEdits Query.
/// Call CreateFromMapEdits() and display resulting DataMove and any Warnings/Errors.
/// User can then call DataMove.Copy() and Activate() to do the updates.
/// <br>
/// 'TestNumber' can be a list of tests to run, e.g. "1,2,4"
ClassMethod Test(TestNumber As %String) As %Status [ Internal ]
{
}

}
