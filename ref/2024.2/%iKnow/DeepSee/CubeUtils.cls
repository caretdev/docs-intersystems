/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// This class offers a number of utility options for interacting with DeepSee-managed domains.
Class %iKnow.DeepSee.CubeUtils Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Parameter CHECKSUMFIELDNAME [ Internal ] = "CheckSum";

/// Returns the domain ID for the supplied combination of cube name (<var>pCube</var>) and
/// iKnow measure name (<var>pMeasure</var>).
ClassMethod GetDomainId(pCube As %String, pMeasure As %String, Output pSC As %Status = {$$$OK}) As %Integer [ SqlProc ]
{
}

/// Returns the default generated domain name for a DeepSee-managed domain
ClassMethod GetDeepSeeDomainName(pCube As %String, pMeasure As %String) As %String [ Internal ]
{
}

/// <p>This method will create a DeepSee-managed iKnow domain for storing the indexation
/// results of an iKnow measure (<var>pMeasure</var>) in a DeepSee cube (<var>pCube</var>).
/// Apart from the default DeepSee-driven parameters, <var>pParams</var> can contain a semicolon-
/// delimited list of additional parameters supplied through the cube definition, but these should
/// be parameters a user is allowed to configure through the <method>SetParameter</method>
/// method in the <class>%iKnow.Domain</class> class.</p>
/// <p>If a domain for this iKnow measure already exists, both the default DeepSee parameters
/// and the user-defined parameters supplied through <var>pParams</var> will be applied,
/// regardless of any existing settings that have been made outside of DeepSee.</p>
/// <p>Warning: this method should never be called by custom code!</p>
ClassMethod CreateDomain(pCube As %String, pMeasure As %String, pParams As %String, pDictionaries As %String, ByRef pDomainName As %String = "", Output pSC As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

/// <p>Notification that our cube has been killed.</p>
/// <p>NOTE: This method is called from generated cube code and should never be invoked by
/// custom code.</p>
ClassMethod %OnKillFacts(pCube As %String, ByRef pMsrList As %String) As %Status [ Internal ]
{
}

///  This method is called when a fact within a DeepSee cube is inserted, updated, or deleted.<br/>
///  <var>pCube</var> is the name of the DeepSee cube.<br/>
///  <var>pBatchMode</var> is true for batch mode.<br/>
///  <var>pFlag</var> is "I" for insert, "U" for update, "D" for delete, and "K" when the entire cube is killed.<br/>
///  <var>pFactId</var> is the ID of the current record in the fact table.<br/>
///  <var>pSourceType</var> is "string","file", or "stream".<br/>
///  <var>pProp</var> is the name of the property.<br/>
///  <var>pValue</var> is the value of the property.<br/>
/// <p>NOTE: This method is called from generated cube code and should never be invoked by
/// custom code.</p>
ClassMethod %ProcessIKnowFact(pCube As %String, pBatchMode As %Boolean, pFlag As %String, pFactId As %String, pMeasure As %String, pValue As %String = "", pSourceType As %String = "string") As %Status [ Internal ]
{
}

///  Notification at the start of a "batch of updates".
/// <p>NOTE: This method is called from generated cube code and should never be invoked by
/// custom code.</p>
ClassMethod %StartIKnowBatch(pCube As %String, ByRef pMsrList As %String, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// Per-record version of %BuildAdditionalIndices()
ClassMethod %SyncAdditionalIndices(pCube As %String, pMeasure As %String, pDomainId As %Integer, pDomainType As %String, pDictionaries As %String, pFactId As %Integer, pSrcId As %Integer, pFlag As %String) As %Status [ Internal, Private ]
{
}

/// Builds the following additional indices
/// 	- $$$DeepSeeIndexGLVN(pCube, "%ikDI", pMeasure, [tDictItemId], [factIdOffset]) = $bitstring([factId])
ClassMethod %BuildAdditionalIndices(pCube As %String, pMeasure As %String, pDomainId As %Integer, pDomainType As %String, pDictionaries As %String = "") As %Status [ Internal, Private ]
{
}

ClassMethod %BuildAdditionalIndexDIJob(pCube, pMeasure, pDomainId, pDomainType, pDictIdList, pSrcIdOffset) As %Status [ Internal ]
{
}

///  This method is called after a large number of facts has been processed in batch mode, to
///  execute any queued iKnow processing in a single iKnow batch
///  Notification at the end of a "batch of updates".
/// <p>NOTE: This method is called from generated cube code and should never be invoked by
/// custom code.</p>
ClassMethod %EndIKnowBatch(pCube As %String, ByRef pMsrList As %String, pVerbose As %Boolean = 0) As %Status [ Internal ]
{
}

/// <p>This method creates a new DeepSee Cube definition representing the entities
/// occurring in the textual contents of an iKnow measure <var>pIKnowMeasure</var> in
/// cube <var>pCube</var>. The generated cube will have a set of meaningful dimensions for
/// this <i>entity occurrence</i> level as well as a relationship to <var>pCube</var>, so
/// all of its dimensions are also available for the new cube. The name of this cube will
/// be "<var>pCube</var> &gt; <var>pIKnowMeasure</var> &gt; <i>Entity Occurrences</i>" and
/// can be used or modified just like any other DeepSee cube after creation.</p>
/// <p>Setting <var>pBuild</var> to 1 will automatically build the cube.</p>
/// <p>NOTE: some of the functionality exposed by this cube can be achieved by using the
/// iKnow plugin exposing numerical query results <class>%DeepSee.PlugIn.iKnow</class> as a
/// calculated measure, without the need to create any additional cubes.</p>
ClassMethod CreateEOCube(pCube As %String, pIKnowMeasure As %String, pBuild As %Boolean = 1) As %Status
{
}

/// <p>This method creates a new DeepSee Cube definition representing the matching results
/// occurring in the textual contents of an iKnow measure <var>pIKnowMeasure</var> in
/// cube <var>pCube</var>. The generated cube will have a set of meaningful dimensions for
/// this <i>dictionary match</i> level as well as a relationship to <var>pCube</var>, so
/// all of its dimensions are also available for the new cube. The name of this cube will
/// be "<var>pCube</var> &gt; <var>pIKnowMeasure</var> &gt; <i>Matching Results</i>" and
/// can be used or modified just like any other DeepSee cube after creation.</p>
/// <p>Setting <var>pBuild</var> to 1 will automatically build the cube.</p>
/// <p>NOTE: most of the functionality exposed by this cube can be achieved by using the
/// iKnow plugin for Dictionaries <class>%DeepSee.PlugIn.iKnowDictionary</class> as a
/// calculated measure, without the need to create any additional cubes.</p>
ClassMethod CreateMRCube(pCube As %String, pIKnowMeasure As %String, pBuild As %Boolean = 1) As %Status
{
}

/// <p>This method will update matching results for the Term List identified by <var>pTermList</var>
/// to reflect the changes made to the Term List entries. If <var>pCube</var> is left blank,
/// this method will be invoked for all cubes in this namespace. If <var>pMeasure</var> is
/// left blank, it will be called for all <i>iKnow measures</i> in <var>pCube</var>.</p>
/// <p>Using <var>pClearFirst</var>, the user can specify whether or not the existing
/// dictionary should first be dropped before reloading it from the Term List. Leave
/// <var>pClearFirst</var> at 0 if you only appended to the Term List and use 1 if any
/// existing terms were changed or removed.</p>
ClassMethod UpdateDictionary(pTermList As %String, pCube As %String = "", pMeasure As %String = "", pClearFirst As %Boolean = 0) As %Status
{
}

///  <p>Loads the elements of a TermList as Dictionary Terms into a given iKnow measures domain,
///  taking the key as the Term string and value as the items name. The Terms will all be added
///  to a single dictionary named after this TermList.<br/>
///  The following fields will be interpreted along the way, if present:</p>
///  <ul>
///  		<li>"URI": the unique identifier for the Item level the value field refers to.
///  				If not present, a URI of the form :<var>pTermList</var>:<i>value</i> will be created.</li>
///  		<li>"language": the two-letter language code to use for this term.
///  				Defaults to English ("en") if not present. </li>
///  </ul>
///  <p>If <var>pMatch</var> is 1, the newly created dictionary will be matched against the
///  contents of the domain. If set to 2, all existing dictionaries will be matched and if
///  set to 0, no matching will occur as part of this method invocation.</p>
///  <p>If <var>pClear</var> is 1, any existing dictionary named <var>pTermList</var> will be
///  deleted prior to loading this Term List. If set to 0, none will be dropped. The option
///  to clear all dictionaries using the value 2 is discontinued as from 2013.2.</p>
ClassMethod LoadTermListAsDictionary(pCube As %String, pMeasure As %String, pTermList As %String, pMatch As %Integer = 1, pClear As %Integer = 1) As %Status
{
}

///  <p>Loads the elements of a Term List as a SkipList into a given iKnow measures domain,
///  using just the key as a string to be Skiplisted. The Terms will all be added
///  to a single Skiplist named after this Term List.<br/>
///  If a SkipList with the given name already exists, its contents will be replaced by the
///  contents of the supplied Term List. If no value is supplied for <var>pTermList</var>,
///  its value will be derived from the value of the domain parameter $$$IKPDSSKIPLIST.</p>
ClassMethod LoadTermListAsSkipList(pCube As %String, pMeasure As %String, pTermList As %String = "") As %Status
{
}

ClassMethod LoadTermListAsBlackList(pCube As %String, pMeasure As %String, pTermList As %String = "") As %Status [ Deprecated, Internal ]
{
}

///  Returns all iKnow Measures for cube <var>pCube</var> in the form
///  		pList(n) = $lb(measureName, iKnowSourceType, cubeCaption)
ClassMethod GetIKnowMeasures(pCube As %String, Output pList, pIncludeRelatedToOne As %Boolean = 0, pIncludeRelatedToMany As %Boolean = 0) As %Status
{
}

/// <p>Shorthand method to retrieve a summary of the iKnow measure value for <var>pMeasure</var>
/// in cube <var>pCube</var> for the record identified by <var>pSourceObjectId</var>. Using
/// <var>pLength</var>, the user can supply a desired summary length (in sentences).</p>
/// <p>This method is available as a SQL stored procedure and can be invoked in a Listing
/// through using the $$$IKSUMMARY keyword.</p>
ClassMethod GetSummary(pCube As %String, pMeasure As %String, pSourceObjectId As %String, pLength As %Integer = 5) As %String [ SqlProc ]
{
}

///  This method translates the source objects OID into the corresponding Fact ID, which is
///  identical to the iKnow source ID for a DeepSee-managed domain.
ClassMethod GetFactId(pCube As %String, pSourceObjectId As %String, pRelations As %String = "", pSC As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

///  This method translates a fact ID (= iKnow source ID in a DeepSee-managed domain)
/// into the corresponding source object OID.
ClassMethod GetSourceObjectId(pCube As %String, pFactId As %Integer) As %Integer [ Internal ]
{
}

///  <p>Fetches measure info from the cube definition:</p>
///  <ul>
///  		<li>pSourceType: the value of the iKnowSource attribute</li>
///  		<li>pDomainId: the iKnow domain (ID) containing the data for this measure</li>
///  		<li>pDomainName: the iKnow domain (name) containing the data for this measure</li>
///  		<li>pDomainType: "iKnow" for an iKnow-managed domain, "DeepSee" for a DeepSee-managed one</li>
///  		<li>pParams: the semicolon-delimited list of domain parameter name/value pairs
/// 					 to use apply to the domain instantiated for this measure</li>
///  		<li>pDictionaries: the comma-delimited list of Term Lists to match against.</li>
///  </ul>
ClassMethod GetMeasureInfo(pCube As %String, pMeasure As %String, Output pSourceType As %String = "", Output pDomainId As %Integer = "", Output pDomainName As %Integer = "", Output pDomainType As %String = "", Output pParams As %String = "", Output pDictionaries As %String = "") As %Status
{
}

ClassMethod GetMeasureInfoInternal(pCube As %String, pMeasure As %String, Output pSourceType As %String = "", Output pDomainId As %Integer = "", Output pDomainName As %Integer = "", Output pDomainType As %String = "", Output pParams As %String = "", Output pDictionaries As %String = "") As %Status [ Internal, Private ]
{
}

/// Translates a bitstring based on iKnow source IDs into one based on DeepSee fact IDs
/// for an iKnow-managed domain when <var>pToFactIDs</var> = 1, or vice versa otherwise.
ClassMethod TranslateIKnowBitstring(pCubeName As %String, pMeasureName As %String, pGlobFrom As %String, pGlobTo As %String = "", pToFactIDs As %Boolean = 1) As %Status [ Internal ]
{
}

/// Wrapper method to support domains managed solely by DeepSee
ClassMethod RenameDomain(pFrom As %String, pTo As %String) As %Status [ Internal ]
{
}

/// Wrapper method to support domains managed solely by DeepSee
ClassMethod DropDomain(pDomainName As %String) As %Status [ Internal ]
{
}

/// Wrapper method to support cross-domain dictionaries managed through a Term List
ClassMethod DropDictionary(pTermList As %String) As %Status [ Internal ]
{
}

/// Given the names of the term lists to match against, return a %List containing
/// the corresponding dictionary IDs to supply to MatchSource[s]()
/// Note: assumes version >= 3 (for cross-domain dictionary use)!
ClassMethod GetDictionaryIds(pDictionaries As %String) As %List [ Internal, Private ]
{
}

ClassMethod UpdateMatching(pCubeName As %String, pMeasureName As %String) As %Status
{
}

ClassMethod UpdateMatchingInternal(pDomainId As %Integer, pDictionaries As %String, pFactId As %Integer = "") As %Status [ Internal ]
{
}

}
