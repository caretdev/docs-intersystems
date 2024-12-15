/// This class generates a class corresponding to a %Document collection from a collection XData block when it
/// is compiled.
Class %Document.CollectionDefinition Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// This projection is used to keep track of when classes are
/// compiled or deleted.
/// This XData section provides the definition of the collection Class.
XData class [ XMLNamespace = "http://www.intersystems.com/pdb/collection" ]
{
}

/// Return an instance of the <class>Oasys.Model.Schema.class</class>
/// meta-data object that describes this Ledger.
/// If there are callback methods, use GenerateAfter to make sure they are compiled first.
ClassMethod %GetModel() As %Document.Model.Schema.collection [ CodeMode = objectgenerator, Final, Internal ]
{
}

}
