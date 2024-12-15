/// <p>This class represents the parameters controlling the match score calculation resulting from
/// the iKnow Smart Matching process driven from the <class>%iKnow.Matching.MatchingAPI</class>.</p>
/// <p>A Matching Profile can be linked to a domain, or just exist "namespace-wide", when
/// setting the <property>DomainId</property> property to 0. In the latter case, the profile
/// is typically referred to with a negative value for its <property>ProfileId</property>.</p>
/// <p>Use <method>GetProfile</method> to retrieve or instantiate a profile object.</p>
Class %iKnow.Matching.MatchingProfile Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]
{

/// The domain ID this Matching Profile is associated with. When 0, this profile can be
/// used across the namespace.
Property DomainId As %Integer [ ReadOnly ];

/// The ID of this profile. This will be a negative number for namespace-wide profiles (which
/// have <property>DomainId</property> = 0).
Property ProfileId As %Integer [ ReadOnly ];

/// A name for this profile. This name should be unique within the domain (case-insensitive)
/// and cannot contain colons.
/// For backwards compatibility, empty names are permitted, but these profiles cannot be
/// retrieved with <method>GetProfileByName</method>
Property Name As %String(MAXLEN = 150) [ ReadOnly ];

/// The entity-level score of scattered entity matches will be multiplied by this modifier.
/// For example when matching the entity "blue big car" against the term "big blue car",
/// The initial score of 1 (as all words in the entity are matched) will be multiplied
/// with <property>ScatteredMatchMultiplier</property>
Property ScatteredMatchMultiplier As %Numeric [ InitialExpression = 0.75 ];

/// The entity-level score of relationship entities will be multiplied by this modifier.
Property RelationshipScoreMultiplier As %Numeric [ InitialExpression = 0.5 ];

/// The entity-level score of path-relevant entities will be multiplied by this modifier.
Property PathRelevantScoreMultiplier As %Numeric [ InitialExpression = 0.33 ];

/// When calculating an aggregate match score for a CRC, path or sentence, the "length" of
/// the matched section is compared to the total "length" of the CRC, path or sentence.
/// This "length" is calculated taking a value of 1 for each concept and a value of
/// <property>RelationshipLengthMultiplier</property> for each relationship. Therefore,
/// setting this property to a lower value will decrease the weight of relationship
/// entities in calculating this ratio.
Property RelationshipLengthMultiplier As %Numeric [ InitialExpression = 0.2 ];

/// This multiplier is applied to the aggregate match score for a CRC, path or sentence
/// if the matched entities appear in a different order than in the dictionary term.
Property DisorderMultiplier As %Numeric [ InitialExpression = 0.7 ];

/// This is the lower threshold for match scores. Matches having a total score less than
/// <property>MinimalMatchScore</property> will not be stored or returned.
Property MinimalMatchScore As %Numeric [ InitialExpression = 0.33 ];

/// The total score of a path-level match is multiplied by this number.
Property PathTotalMultiplier As %Numeric [ InitialExpression = 1 ];

/// The total score of a CRC-level match is multiplied by this number.
Property CrcTotalMultiplier As %Numeric [ InitialExpression = 1 ];

/// The total score of a sentence-level match is multiplied by this number.
Property SentTotalMultiplier As %Numeric [ InitialExpression = 1 ];

/// If a dictionary term consists of more elements than <property>MaxTermLengthForCrc</property>,
/// it will not be considered a candidate for a CRC-level match. Typically these terms
/// should match at the path level.
Property MaxTermLengthForCrc As %Integer [ InitialExpression = 3, Internal ];

/// If a dictionary term consists of less elements than <property>MinTermLengthForPath</property>,
/// it will not be considered a candidate for a path-level match. Typically these terms
/// should match at the CRC level.
Property MinTermLengthForPath As %Integer [ InitialExpression = 4, Internal ];

/// If a dictionary term consists of less elements than <property>MinTermLengthForSent</property>,
/// it will not be considered a candidate for a sentence-level match. Typically these terms
/// should match at the CRC level.
Property MinTermLengthForSent As %Integer [ InitialExpression = 4, Internal ];

/// Use this parameter to add an additional requirement on the number of concepts from the
/// Dictionary Term that should be matched for an aggregate match to be considered.
/// A value of 1 (100%) implies all concepts should be matched. A value of at least 0.51 for example
/// means both concepts in a CRC should match. A value of 0 (default) does not impose additional
/// restrictions.
Property MinMatchedConceptFraction As %Numeric [ InitialExpression = 0 ];

/// Use this parameter to modify the score of matched entities which are part of a negation.
/// Typically, this value will be either 1, ignoring the fact an entity is part of a negation,
/// or 0, which will make the algorithm skip these entities. Other positive numeric values are
/// also accepted and just modify the entity-level score for the affected entities, causing them
/// to be considered partial matches.
Property NegationMultiplier As %Numeric [ InitialExpression = 1 ];

/// <p>Utility method to instantiate a Matching Profile. If passed a negative integer for
/// <var>pProfileId</var>, it will look for a namespace-wide Matching Profile (which means
/// <property>DomainId</property> is 0), otherwise it will take look in the domain
/// specified through <var>pDomainId</var>. If <var>pProfileId</var> is empty, the default
/// profile for this domain will be returned.</p>
/// <p>This is the recommended way of instantiating a
/// <class>%iKnow.Matching.MatchingProfile</class> object.</p>
ClassMethod GetProfile(pDomainId As %Integer = 0, pProfileId As %Integer = "", pSC As %Status = {$$$OK}) As %iKnow.Matching.MatchingProfile
{
}

/// Looks up a Matching Profile by name in the domain identified by <var>pDomainId</var> (or
/// in the set of cross-domain profiles if <var>pDomainId</var> = 0).
/// <var>pName</var> should be a nonempty string and can be prepended with the domain ID to
/// look into (overriding the value of <var>pDomainId</var>), separated by a colon. This
/// allows configuration settings to refer to a particular Matching Profile with a single
/// string. Matching Profiles without a name cannot be looked up through this method and
/// should be looked up by ID using <method>GetProfile</method> instead.
ClassMethod GetProfileByName(pDomainId As %Integer = 0, pName As %String, pSC As %Status = {$$$OK}) As %iKnow.Matching.MatchingProfile
{
}

/// Creates a new Matching Profile instance in domain <var>pDomainId</var> (set to 0 to use
/// the profile across domains) named <var>pName</var>. The name is optional but if specified,
/// should be unique within the domain (or within the cross-domain profiles) and cannot
/// contain colon characters.
Method %OnNew(pDomainId As %Integer = 0, pName As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

Method ProfileIdGet() As %Integer [ Internal, ServerOnly = 1 ]
{
}

/// Copies all non-ReadOnly property values of the supplied Matching Profile object
/// to the current object. This excludes <property>ProfileId</property>,
/// <property>DomainId</property> and <property>Name</property>.
Method ApplyProperties(pOtherProfile As %iKnow.Matching.MatchingProfile) As %Status
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

Method NegationMultiplierGet() As %Numeric [ Internal, ServerOnly = 1 ]
{
}

}
