/// <p>Lister implementation for loading data from an existing Domain.</p>
///
/// <p><b>Lister Parameters</b> to be supplied to <method>AddListToBatch</method> and
/// 	<method>ProcessList</method> calls:</p>
/// <ol>
///     <li><b>sourceDomainId</b> As <class>%String</class> - the domain ID where to load from (should be in the same namespace)</li>
///     <li><b>filterString</b> As <class>%String</class> (optional) - if set, only the sources
/// 						 	in the source domain satisfying the filter represented by this
/// 							filter string (see <method>ToString</method> in
/// 							<class>%iKnow.Filters.Filter</class> will be loaded. If
/// 								a comma-delimited list of <class>%Integer</class> values is
/// 								passed in rather than a filter representation, this is considered
/// 								as a list of source IDs that need to be copied. Negative source IDs
/// 							are interpreted as referring to a Virtual Source.</li>
/// </ol>
///
/// <p><b>External ID structure:</b> the external IDs of the source domain are maintained</p>
///
/// <p><b>Default Processor:</b> <class>%iKnow.Source.Domain.Processor</class></p>
///
/// <p>See also <class>%iKnow.Utils.CopyUtils</class> for methods to copy other domain
/// elements.</p>
/// <p>Please note any sources copied with this Lister will be created using the version of the
/// target domain, regardless of the source domain's version number.</p>
Class %iKnow.Source.Domain.Lister Extends %iKnow.Source.Lister [ Deprecated, System = 4 ]
{

ClassMethod DefaultProcessor() As %String
{
}

Method ExpandList(listparams As %List) As %Status
{
}

Method TestParams(listerParams...) As %Status
{
}

/// Shorthand method to <i>materialize</i> a Virtual Source, moving it into the <i>real</i>
/// domain.
Method MaterializeVirtualSource(vSrcId As %Integer) As %Status
{
}

}
