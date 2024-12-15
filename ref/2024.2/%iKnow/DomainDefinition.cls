/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25iKnow.DomainDefinition">NLP Domains</a>.</p>
/// <p>Subclasses of this class declaratively define an iKnow domain and its contents using an
/// XML representation in the <xdata>Domain</xdata> XData block. Compiling this class will
/// automatically create the iKnow domain and any static elements or settings within, such as
/// metadata fields, domain parameters and metrics. Using <method>%Build</method>) users can
/// then "build" the contents of the domain, loading any sources from the locations referred
/// to in <xdata>Domain</xdata> and populating relevant metadata, matching and metrics.</p>
/// <p>For a detailed reference of the available elements and attributes of this XData block, consult the class
/// reference for <class>%iKnow.Model.domain</class> and other classes in the <package>%iKnow.Model</package>
/// package.</p>
Class %iKnow.DomainDefinition Extends %RegisteredObject [ Abstract, CompileAfter = %iKnow.Model.domain, Deprecated, System = 4 ]
{

/// <p>An XML representation of the domain this class defines.</p>
/// <p>For a detailed reference of the available elements and attributes, consult the class
/// reference for <class>%iKnow.Model.domain</class> and other classes in the <package>%iKnow.Model</package>
/// package.</p>
XData Domain [ XMLNamespace = "http://www.intersystems.com/iknow" ]
{
}

/// Main method to process the contents of <xdata>Domain</xdata> at compile-time and return
/// a <class>%iKnow.Model.domain</class> representation of it at runtime, as well as generating
/// a number of other artefacts (code and static iKnow domain entries) for this domain.
ClassMethod %GetModel() As %iKnow.Model.domain [ CodeMode = objectgenerator, Final, GenerateAfter = %DropManagedConfiguration, Internal ]
{
}

ClassMethod %OnCompileDomain() As %Status [ ForceGenerate, GenerateAfter = %GetCustomizations, Internal ]
{
}

/// Wrapper method to ensure the managing domain definition class will be executing
/// this privileged action.
ClassMethod %Rename(pFrom, pTo) As %Status [ CodeMode = objectgenerator, ForceGenerate, Internal ]
{
}

/// Applies any domain parameters registered as &lt;parameter&gt; elements in the <var>pDomain</var>
/// model passed in.
ClassMethod %ApplyDomainParametersInternal(pDomain As %iKnow.Model.domain) As %Status [ Internal ]
{
}

/// Internal method invoking <method>%ApplyDomainParametersInternal</method> using the
/// runtime result of <method>%GetModel</method>
ClassMethod %ApplyDomainParameters() As %Status [ Internal ]
{
}

/// Returns the domain name as defined in <xdata>Domain</xdata>
ClassMethod %GetDomainName() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Returns the domain ID corresponding to the domain defined in <xdata>Domain</xdata>
ClassMethod %GetDomainId() As %Integer [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Creates an <class>%iKnow.AbstractDomain</class> class containing utility methods for building
/// the various domain elements described in <xdata>Domain</xdata>
ClassMethod %CreateDomainClass(pDomDefClassName As %String, pDomain As %iKnow.Model.domain) As %Status [ Internal ]
{
}

ClassMethod %GetParamsAsString(pParams As %ListOfObjects, pWrapList As %Boolean = 0, pDomDefClassName As %String = "", Output pSC As %Status) As %String [ Internal, Private ]
{
}

/// <p>Invoking this method will <i>build</i> the domain described in <xdata>Domain</xdata>,
/// which includes loading data and dictionaries, matching dictionaries and building metrics,
/// depending on the various settings of the &lt;domain&gt; element and its sub-elements.</p>
/// <p>The <var>pVerbose</var> argument controls whether status output is provided to stdev
/// (if <var>pAsync</var>=0) or written to a global for GUI pickup (<var>pAsync</var>=1, for
/// internal use only).</p>
ClassMethod %Build(pVerbose As %Boolean = 1, ByRef pParams, pAsync As %Boolean = 0) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel ]
{
}

/// <p>This method will update dictionaries based on the current contents of the &lt;matching&gt;
/// element in <xdata>Domain</xdata>, without making any changes to the current data (in terms
/// of sources) already stored in the domain. If <var>pMatch</var> is 1, all sources in the domain
/// will be matched after the dictionaries are updated. If <var>pDropFirst</var> is 1, the
/// current dictionaries will first be dropped from the domain, otherwise only new dictionary
/// entries will be added (no updates or deletions of existing entries).</p>
/// <p>Build parameters passed through <var>pParams</var> will be used to override default
/// expression values used in the dictionary definitions in the same way as in <method>%Build</method>.</p>
/// <p>The <var>pVerbose</var> argument controls whether status output is provided to stdev
/// (if <var>pAsync</var>=0) or written to a global for GUI pickup (<var>pAsync</var>=1, for
/// internal use only).</p>
ClassMethod %UpdateDictionaries(pDropFirst As %Boolean = 0, pMatch As %Boolean = 1, pVerbose As %Boolean = 1, ByRef pParams, pAsync As %Boolean = 0) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel ]
{
}

/// <p>This method will explicitly rebuild all metrics in the domain described in <xdata>Domain</xdata>,
/// optionally dropping any existing values first if <var>pDropFirst</var> is 1.</p>
/// <p>See also the BuildAll() method in <class>%iKnow.Metrics.MetricBuilder</class>.</p>
ClassMethod %UpdateMetrics(pDropFirst As %Boolean = 1, pVerbose As %Boolean = 1) As %Status [ Final ]
{
}

/// <p>Callback invoked at the start of <method>%Build</method>. Subclasses can implement this
/// method to execute custom code at the start of a domain build operation.</p>
ClassMethod %OnBeforeBuild(pDomainId As %Integer) As %Status
{
}

/// <p>Callback invoked at the end of <method>%Build</method>. Subclasses can implement this
/// method to execute custom code at the end of a domain build operation.</p>
ClassMethod %OnAfterBuild(pDomainId As %Integer) As %Status
{
}

/// <p>Callback invoked at the start of <method>%DropData</method>. Subclasses can implement this
/// method to execute custom code at the start of a drop data operation.</p>
ClassMethod %OnBeforeDropData(pDomainId As %Integer, pDropDictionaries As %Boolean = 1, pDropSkipLists As %Boolean = 1) As %Status
{
}

/// <p>Callback invoked at the end of <method>%DropData</method>. Subclasses can implement this
/// method to execute custom code at the end of a drop data operation.</p>
ClassMethod %OnAfterDropData(pDomainId As %Integer, pDropDictionaries As %Boolean = 1, pDropSkipLists As %Boolean = 1) As %Status
{
}

/// Drops all non-static data from the domain defined by this class.
/// Depending on the values of <var>pDropDictionaries</var> and <var>pDropSkipLists</var>, dictionary
/// info and Skiplists are purged as well.
ClassMethod %DropData(pDropDictionaries As %Boolean = 1, pDropSkipLists As %Boolean = 0) As %Status [ Final, ForceGenerate ]
{
}

/// Evaluates the expression named <var>pName</var> and returns the result by reference.
ClassMethod %GetExpressionValue(pName As %String, Output pValue As %String, ByRef pParams) As %Status
{
}

/// INTERNAL METHOD - DO NOT INVOKE
/// Drops the underlying domain as part of %iKnow.DomainProjection.RemoveProjection()
ClassMethod %DropDomain() As %Status [ Final, ForceGenerate, Internal ]
{
}

/// INTERNAL METHOD - DO NOT INVOKE
/// Drops a configuration managed by this domain as part of %iKnow.DomainProjection.RemoveProjection()
ClassMethod %DropManagedConfiguration(pConfigId As %Integer) As %Status [ Final, ForceGenerate, Internal ]
{
}

/// INTERNAL METHOD - DO NOT INVOKE
/// Drops a user dictionary managed by this domain as part of %iKnow.DomainProjection.RemoveProjection()
ClassMethod %DropManagedUserDictionary(pUserDictId As %Integer) As %Status [ Final, ForceGenerate, Internal ]
{
}

/// INTERNAL METHOD - DO NOT INVOKE
ClassMethod %CreateStaticElements(pDomain As %iKnow.Model.domain, pDomainId As %Integer) As %Status [ Final, Internal ]
{
}

ClassMethod %IsProperCode(pExpression As %String) As %Boolean [ Internal ]
{
}

/// Returns the code to populate a variable with a value for <var>pExpression</var>. The code
/// returned can be used as if it were a quoted string
ClassMethod %ParseExpression(pDomDefClassName As %String, pExpression As %String, Output pCode As %String, Output pDependencies) As %Status [ Internal ]
{
}

/// Callback method to define customizations of the generated table structures if objectsPackage'=""
/// See also CreateDomainTables() in <class>%iKnow.Tables.Utils</class>
ClassMethod %GetCustomizations(Output pCustomizations, Output pMetadata As %List) As %Status [ Internal ]
{
}

}
