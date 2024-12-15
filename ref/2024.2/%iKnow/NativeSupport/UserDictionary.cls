Class %iKnow.NativeSupport.UserDictionary Extends (HandlesErrors, %iKnow.Native.NativeKnowledgebase) [ Deprecated, System = 4 ]
{

Property Name As %String;

Property Hash As %String;

Property AcronymCount As %Integer;

Property Acronyms As %String [ MultiDimensional ];

Property InputFilterCount As %Integer;

Property InputFilters As %String [ MultiDimensional ];

Property Lexreps As %String [ MultiDimensional ];

/// UD labels available are hard-coded
Property Labels As %List [ InitialExpression = {##class(%iKnow.KB.Label).SpecialLabelList()} ];

ClassMethod Create(name As %String, ud As %iKnow.UserDictionary) As UserDictionary
{
}

ClassMethod Err(msg As %String = "Invalid user dictionary entry.") [ Private ]
{
}

Method AddEntry(entry As %List) [ Private ]
{
}

Method AddLexrep(tokens As %String, labels As %String, meta As %String)
{
}

Method AddAcronym(original As %String, command As %String) [ Private ]
{
}

Method AddInputFilter(original As %String, replacement As %String) [ Private ]
{
}

Method AddToHash(string As %String) [ Private ]
{
}

Method GetName() As %Binary
{
}

Method GetHash() As %String
{
}

Method AcronymCount() As %Integer
{
}

Method GetAcronym(key As %Integer) As %Binary
{
}

Method NextAcronym(key As %Integer) As %Integer
{
}

Method ConceptFilterCount() As %Integer
{
}

Method GetConceptFilter(key As %Integer) As %Binary
{
}

Method NextConceptFilter(key As %Integer) As %Integer
{
}

Method LexrepCount() As %Integer
{
}

Method GetLexrep(key As %Integer) As %Binary
{
}

Method NextLexrep(key As %Integer) As %Integer
{
}

Method PropertyCount() As %Integer
{
}

Method GetProperty(key As %Integer) As %Binary
{
}

Method NextProperty(key As %Integer) As %Integer
{
}

Method MetadataCount() As %Integer
{
}

Method GetMetadata(key As %Integer) As %Binary
{
}

Method NextMetadata(key As %Integer) As %Integer
{
}

Method LabelCount() As %Integer
{
}

Method GetLabel(key As %Integer) As %Binary
{
}

Method NextLabel(key As %Integer) As %Integer
{
}

Method GetConceptLabel() As %Binary
{
}

Method GetRelationLabel() As %Binary
{
}

Method GetUnknownLabel() As %Binary
{
}

Method GetPunctuationLabel() As %Binary
{
}

Method GetSentenceBeginLabel() As %Binary
{
}

Method GetSentenceEndLabel() As %Binary
{
}

Method GetJoinLabel() As %Binary
{
}

Method GetJoinReverseLabel() As %Binary
{
}

Method PreprocessFilterCount() As %Integer
{
}

Method GetPreprocessFilter(key As %Integer) As %Binary
{
}

Method NextPreprocessFilter(key As %Integer) As %Integer
{
}

Method RuleCount() As %Integer
{
}

Method GetRule(key As %Integer) As %Binary
{
}

Method NextRule(key As %Integer) As %Integer
{
}

Method InputFilterCount() As %Integer
{
}

Method GetInputFilter(key As %Integer) As %Binary
{
}

Method NextInputFilter(key As %Integer) As %Integer
{
}

Method GetCapitalAllLabel() As %Binary
{
}

Method GetCapitalInitialLabel() As %Binary
{
}

Method GetCapitalMixedLabel() As %Binary
{
}

Method GetSubjectLabel() As %Binary
{
}

Method GetObjectLabel() As %Binary
{
}

Method GetPrimaryRelationLabel() As %Binary
{
}

Method GetNonSemanticLabel() As %Binary
{
}

Method GetRegex(key As %Integer) As %Binary
{
}

Method NextRegex(key As %Integer) As %Integer
{
}

Method RegexCount() As %Integer
{
}

Method GetNumericLabel() As %Binary
{
}

Method GetAlphaBeticLabel() As %Binary
{
}

Method GetSpaceLabel() As %Binary
{
}

Method GetKatakanaLabel() As %Binary
{
}

/// Close the table currently being read
Method CloseTable() [ Language = cpp ]
{
}

/// Fetch at most <param>max</param> rows as a $LIST from the previously started table
Method FetchRows(max As %Integer) As %Binary
{
}

Method IsDynamic() As %Integer
{
}

Method PhaseCount() As %Integer
{
}

/// Indicate that the next fetch should start pulling values from the
/// named table for dynamic loading.
Method ReadTable(name As %Binary, phase As %Integer)
{
}

/// Returns true if the currently reading table has exhausted its rows
Method TableAtEnd() As %Integer
{
}

}
