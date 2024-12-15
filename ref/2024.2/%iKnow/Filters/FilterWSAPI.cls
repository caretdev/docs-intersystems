/// <p>This class offers a Web Service access point to iKnow filters. Use the
/// <method>CreateAsString</method> and <method>CreateGroupAsString</method> Web Services to generate
/// the string representations of <class>%iKnow.Filters.Filter</class>
/// objects that can then be passed on to the iKnow Query Web Service APIs.</p>
Class %iKnow.Filters.FilterWSAPI Extends %SOAP.WebService [ Deprecated, LegacyInstanceContext, System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Filters/FilterWSAPI";

Parameter SERVICENAME = "iKnow.Filters.FilterWSAPI";

Parameter SECURITYRESOURCE = "%Development";

Parameter USECLASSNAMESPACES = 1;

/// <p>This WebMethod is an access point to generate the string representation (as specified in
/// <method>ToString</method>) for <class>%iKnow.Filters.Filter</class> classes, accessible from
/// Web Service scenarios.</p>
/// <p>When calling this method, you should supply the <b>Filter Parameters</b> as if calling the
/// <method>%New</method> method of this particular Filter implementation.</p>
ClassMethod CreateAsString(filterName As %String, filterParams As %ListOfDataTypes) As %String [ WebMethod ]
{
}

/// <p>This class enables Web Service users to create the string representation of a
/// <class>%iKnow.Filters.GroupFilter</class> composed of multiple subfilters passed in using their
/// respective string representations as the <i>filters...</i> parameter.</p>
ClassMethod CreateGroupAsString(domainId As %Integer, groupLogic As %Integer = {$$$GROUPFILTERAND}, negated As %Boolean = 0, filters As %ListOfDataTypes) As %String [ WebMethod ]
{
}

/// <p>Clears all filters from the persistent filter cache.</p>
ClassMethod ClearCachedFilters(domainId As %Integer) As %Boolean [ WebMethod ]
{
}

/// <p>Clears a specific filter from the persistent filter cache, if it exists.</p>
ClassMethod ClearCachedFilter(domainId As %Integer, filterId As %Status) As %Status [ WebMethod ]
{
}

}
