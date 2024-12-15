/// This table contains all transformations currently in use by iFind indices with namespace-shared
/// storage. (cf IFINDSHAREDSTORAGELOCATION parameter in <class>%iFind.Index.Basic</class>)
Class %iFind.Transformation Extends %Persistent [ Final, StorageStrategy = iFindStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Specification uniquely describing this transformation.
Property Specification As %String(COLLATION = "EXACT", MAXLEN = 150);

/// General type of transformation
Property Type As %String [ Calculated, SqlComputeCode = { set {*} = $piece({Specification},":",1)}, SqlComputed ];

/// Applies this transformation to <var>pString</var>
Method Transform(pString As %String, pLanguage As %String = "") As %String
{
}

}
