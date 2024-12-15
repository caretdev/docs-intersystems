/// This class contains various methods needed by
/// method generators within the ZEN framework.<br>
/// This is an internal class. Applications should not make direct use
/// of the methods within this class.
Class %ZEN.Generator Extends %RegisteredObject [ Deprecated, System = 2 ]
{

/// Generates code for the %ApplyURLParms method.
ClassMethod %GenerateApplyURLParms() As %Status
{
}

/// Called in the context of a method generator.
/// Tests if the given XData block exists and has some content in it.
/// pLocalOnly restricts the check to XDatas that originate in the current class.
ClassMethod %DoesXDataExist(pXDataName As %String, pLocalOnly As %Boolean = 0) As %Boolean
{
}

/// Generates code for the given XData block that
/// will write out the contents of the XData block as a Style Sheet
/// Used for Style sheets.
/// This method assumes it is being called in the context of
/// a method generator.
ClassMethod %GenerateStyleSheet(pXDataName As %String) As %Status
{
}

/// Draw JavaScript needed to define client-side class for this component.<br>
/// This is the logic of the %DrawClassDefinition method generator
/// of %ZEN.Component.object.<br>
/// It is assumed that this is called during method generation
/// time and that %code and other compiler objects are present.<br>
/// It is also assumed that this is called *before* server
/// serialization methods are generated, as this creates serialization
/// metadata as a side effect.
ClassMethod %DrawClassDefinition() As %Status
{
}

/// Draw JavaScript needed to initialize properties for client side of this object<br>
/// This is the logic of the %DrawObjectProperties method generator
/// of %ZEN.Component.object.<br>
/// It is assumed that this is called during method generation
/// time and that %code and other compiler objects are present.
ClassMethod %DrawObjectProperties() As %Status
{
}

/// This is the logic of the %ObjectSync method generator
/// of %ZEN.Component.object.<br>
/// It is assumed that this is called during method generation
/// time and that %code and other compiler objects are present.
ClassMethod %ObjectSynch() As %Status
{
}

/// Generate %ZENDeserialize method.<br>
/// It is assumed that this is called during method generation
/// time and that %code and other compiler objects are present.
ClassMethod %ZENDeserialize() As %Status
{
}

/// Generate client JSSerialize method.<br>
/// It is assumed that this is called during method generation
/// time and that %code and other compiler objects are present.
ClassMethod %JSSerialize() As %Status
{
}

/// Generate client getSettings method.<br>
/// It is assumed that this is called during method generation
/// time and that %code and other compiler objects are present.
ClassMethod %JSGetSettings() As %Status
{
}

/// Get normalized type (class name) of given property definition.
/// This is a duplicate of the same method in %ZEN.FormGenerator.
ClassMethod GetPropertyType(pdef As %Dictionary.CompiledProperty) As %String
{
}

/// Build a list of super classes (indexed by number) starting from (and including) <var>pClass</var>.
/// Stop when any of the classes in the list <var>pSkip</var> are reached.
/// Skip any classes in any of the packages in the list <var>pSkipPackage</var> are reached.
ClassMethod GetSuperClassList(pClass As %String, ByRef pList As %String, ByRef pSkip As %String, ByRef pSkipPackage As %String) As %Status
{
}

/// Build a list of properties in sequence order, including inherited properties.<br>
/// On return, <var>pList</var> is a list of properties names (subscripted by order number).
/// Stop when any of the classes in the list <var>pSkip</var> are reached.<br>
/// Skip any classes in any of the packages in the list <var>pSkipPackage</var> are reached.<br>
/// Private properties are skipped.
ClassMethod GetOrderedProps(pClassDef As %Dictionary.CompiledClass, ByRef pList As %String, ByRef pSkip As %String, ByRef pSkipPackage As %String) As %Status
{
}

/// Find all occurences of $$$Text() localized strings within the given JavaScript method.<br/>
/// <var>pDomain</var> is the default DOMAIN of of the class containing the method.
/// Any strings without an explicit domain used the default. If the default is missing, then the string is ignored.</br>
/// On return, <var>pTextList</var> contains a list of all localized strings in the form:<br/>
/// pTextList(domain,string) = ""<br/>
ClassMethod %FindLocalizedText(pMethod As %Dictionary.MethodDefinition, pDomain As %String, ByRef pTextList As %String) As %Status [ Internal ]
{
}

}
