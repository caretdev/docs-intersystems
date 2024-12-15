/// This class generates class definitions from XDATA class nodes.
Class %Document.Model.Generator.collection [ Abstract, System = 4 ]
{

/// Called by the ClassDefinition Code Generator, this method creates all
/// meta data and related classes for a DocumentDefinition instance (a class that extends %Document.collectionDefinition).
/// An Oasys.Dictionary.class is defined but no objects runtime is generated.
ClassMethod %ProcessModel(pClassName As %String, pCollection As %Document.Model.Schema.collection) As %Status [ Internal ]
{
}

}
