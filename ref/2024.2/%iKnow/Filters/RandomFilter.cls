/// <p>This filter randomly selects a percentage of the existing sources in the current domain, to be used
/// for analysis or query testing. </p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>pDomainId</b> As <class>%Integer</class></li>
/// 	<li><b>pDelect</b> As <class>%Numeric</class> - if this is a value between 0 and 1, it is
/// 			 interpreted as the desired selectivity of the filter or the share of the total number
/// 			 of sources to select. If this value is &gt;= 1, it is considered to be the desired number
/// 			 of sources to select (rounded down). If this value is larger than the total number
/// 				 of sources in this domain, all sources are selected.</li>
/// 		<li><b>pSelectFrom</b> As <class>%iKnow.Filters.Filter</class> - if set to a valid filter object
/// 				 or string representation, the randomly selected sources are selected from this set
/// 				 only. If <var>select</var> refers to a fraction, the fraction is calculated based
/// 				 on the total number of sources filtered by <var>selectFrom</var> as if it were
/// 				 "the full domain" to select from.
/// </ol>
Class %iKnow.Filters.RandomFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property ReqSelectivity As %Integer [ Private ];

Property SelectFrom As %iKnow.Filters.Filter [ Private ];

Method %OnNew(pDomainId As %Integer, pSelect As %Numeric = 0.1, pSelectFrom As %iKnow.Filters.Filter = "") As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>See also <method>BuildSourceFilter</method> in <class>%iKnow.Filters.Filter</class>.</p>
Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method ToString() As %String
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]
{
}

}
