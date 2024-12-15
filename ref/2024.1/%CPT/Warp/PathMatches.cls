/// This class is only for use by %CPT.Warp.Path
Class %CPT.Warp.PathMatches Extends %RegisteredObject [ System = 4 ]
{

Property Matches As list Of %CPT.Warp.PathMatch [ Internal, Private ];

Method %OnNew(Path As %CPT.Warp.Path, TreeIndex As %Integer, NodeChains As %List) As %Status
{
}

Method Any() As %Boolean [ CodeMode = expression, Internal ]
{
}

Method FirstMatch() As %CPT.Warp.PathMatch [ Internal ]
{
}

Method Count() As %Integer [ CodeMode = expression, Internal ]
{
}

Method Item(Index As %Integer) As %CPT.Warp.PathMatch [ CodeMode = expression, Internal ]
{
}

Method Dump() [ Internal ]
{
}

}
