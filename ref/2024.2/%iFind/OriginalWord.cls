/// This table maps all original words appearing in text indexed by an iFind index using namespace-wide
/// shared storage (cf the IFINDSHAREDSTORAGELOCATION parameter in <class>%iFind.Index.Basic</class>).
Class %iFind.OriginalWord Extends %Persistent [ StorageStrategy = iFindStorage, System = 4 ]
{

Parameter READONLY = 1;

/// The original word form.
Property OriginalWord As %iFind.Word;

}
