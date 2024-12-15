Class %iKnow.DeepSee.UI.Analysis.Content Extends %iKnow.DeepSee.UI.Analysis.AbstractAnalysis [ Deprecated, System = 4 ]
{

/// This parameter specifies the name of the Listing that will be selected by default for
/// displaying facts in the tables on this page if the user didn't select any other listing
/// explicitly.
Parameter DEFAULTLISTINGNAME = "ShortListing";

/// The name of the listing currently selected by the user.
Property listingName As %ZEN.Datatype.string(ZENURL = "LISTING");

/// The name of the cube to which the selected measure actually belongs
Property baseCube As %ZEN.Datatype.string(ZENURL = "BASECUBE");

/// The name of the measure, without any relationship prefixes
Property baseMeasure As %ZEN.Datatype.string(ZENURL = "BASEMEASURE");

Property backgroundTimerInterval As %ZEN.Datatype.integer [ InitialExpression = 500 ];

ClassMethod %GetAnalysisInfo(Output pInfo) As %Status
{
}

///  Contents of the dialog body.
XData dialogBodyContent [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnGetTitle() As %String
{
}

Method %OnGetSubtitle() As %String
{
}

ClassMethod BuildOverlaps(pDomainId As %Integer, pFilter As %String) As %Status [ Internal ]
{
}

Method OnChangeMeasure() As %Status [ Private ]
{
}

Method PopulateTables() [ ZenMethod ]
{
}

Method DrawFactList(pSeed As %String) As %Status
{
}

ClassMethod BuildFactList(pDomainId As %Integer, pFilter As %String, pSeed As %String, pJobId As %Integer) As %Status [ Internal ]
{
}

/// Perform a showIKnowMsrValue action, if supported.
ClientMethod showIKnowMsrValue(cube, measure, id) [ Language = javascript ]
{
}

ClientMethod changeListingClient() [ Language = javascript ]
{
}

XData Style
{
}

ClassMethod %OnFinishBackgroundTask(pTaskID As %String)
{
}

ClientMethod onChangeMeasureClient() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
