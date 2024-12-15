/// This class provides a way to define folder items (such as dashboards or pivots) within
/// the XData block of class.<br/>
/// This provides a convenient way to define dashboards and other items that are meant to be
/// delivered as part of an application.<br/>
/// Compiling a Container class causes the XML within the Contents section to be processed and
/// any items defined will be loaded into the current namespace.
Class %DeepSee.UserLibrary.Container Extends %RegisteredObject [ Abstract, CompileAfter = %DeepSee.UserLibrary.Utils, System = 4 ]
{

/// This XData section contains the contents of this container.
/// Typically this is an xml document representing a Dashboard or Pivot.
XData Contents [ XMLNamespace = "http://www.intersystems.com/deepsee/library" ]
{
}

/// This method causes the contents of this container to be loaded at compilation time.
/// It can also be called directly at a later time to include execution of the <method>%OnLoad</method>
/// callback, if defined.
ClassMethod %Process(pVerbose As %Boolean = 1, pReplace As %Boolean = 1) As %Status [ CodeMode = objectgenerator ]
{
}

/// This method is called immediately after the contents of this container are loaded via the
/// <method>%DeepSee.UserLibrary.Utils:%ImportContainer</method> method. It is also called if the compiled class' %Process method
/// is called directly.
ClassMethod %OnLoad() As %Status
{
}

}
