/// Table to which custom disambiguation rules can be added to influence the default stemmer class
/// (<class>%iKnow.Stemming.DefaultStemmer</class>). See also <class>%iKnow.Stemming.Utils</class>.
Class %iKnow.Stemming.Rule Extends %Persistent [ Deprecated, System = 4 ]
{

/// The plugin to which this rule applies (use "All" for all plugin types)
Property Plugin As %String(VALUELIST = ",All,Hunspell") [ Required ];

/// Type of disambiguation rule
Property Type As %String(VALUELIST = ",Exception,Ending,Affix") [ Required ];

/// Specification of the rule, whether it applies (only) to concepts or relationships.
/// When type=Exception: the role of the entity in which case the exception applies.
/// When type'=Exception: whether tems satisfying this rule are Not-a-Concept or Not-a-Relation
Property Spec As %String(VALUELIST = ",Relation,Concept,NoRelation,NoConcept");

/// Language for which this rules holds
Property LanguageCode As %String(MAXLEN = 2) [ Required ];

/// Value of the exception or ending this rule represents
Property Value As %String(MAXLEN = 100) [ Required ];

/// For exceptions, what to replace <property>Value</property> with
Property Replace As %String(MAXLEN = 100) [ Required ];

/// For advanced exceptions, this value should appear in the entity being stemmed for the rule to apply.
Property Entity As %String(MAXLEN = 200);

}
