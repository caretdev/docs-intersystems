Class %iKnow.DeepSee.UI.MeasureValue Extends %DeepSee.UI.Dialog.standardDialog [ Deprecated, System = 4 ]
{

Parameter APPLYBUTTON = 0;

Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Measure to use for analysis.
Property measureName As %ZEN.Datatype.string(ZENURL = "MEASURE");

/// Summary length
Property summaryLength As %ZEN.Datatype.string(ZENURL = "LENGTH");

/// Object ID of the source object instance to display
Property objectIds As %ZEN.Datatype.string(ZENURL = "OBJIDS");

Property highlight As %ZEN.Datatype.string(ZENURL = "HIGHLIGHT") [ InitialExpression = "nothing" ];

Property dictionaries As %ZEN.Datatype.string(ZENURL = "DICTIONARIES");

Property dominants As %ZEN.Datatype.string(ZENURL = "DOMINANTS") [ InitialExpression = {$$$SDCONCEPT_","_$$$SDCRC_","_$$$SDPATH} ];

Property entities As %ZEN.Datatype.string(ZENURL = "ENTITIES");

Property domain As %Integer [ Internal, Private ];

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod setHighlights() [ Language = javascript ]
{
}

Method SetHighlighting(pHighlight, pDictIds, pDominants) As %Status [ ZenMethod ]
{
}

ClientMethod summarize() [ Language = javascript ]
{
}

Method SetSummaryLength(length) As %Status [ ZenMethod ]
{
}

Method DrawContent(pSeed As %String) As %Status
{
}

/// Get the (localized) title string for the dialog.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

XData Style
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
