/// This table projects all registered word transformations filed by iFind indices with namespace-shared
/// storage. (cf IFINDSHAREDSTORAGELOCATION parameter in <class>%iFind.Index.Basic</class>)
Class %iFind.WordTransformation Extends %Persistent [ Final, StorageStrategy = iFindStorage, System = 4 ]
{

Parameter READONLY = 1;

/// The original word, as it appeared in the text
Property OriginalWord As %iFind.Word;

/// The transformed word string, after applying <property>Transformation</property>
Property TransformedWord As %iFind.Word;

/// The transformation object translating <property>OriginalWord</property> into <property>TransformedWord</property>
Property Transformation As %iFind.Transformation;

}
