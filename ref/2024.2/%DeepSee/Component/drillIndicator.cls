/// Specialized control for indicating the current drill level on a DeepSee pivot.
/// This is designed for use within DeepSee components and not as a stand-alone control.
Class %DeepSee.Component.drillIndicator Extends %ZEN.Component.component [ System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Localization domain
Parameter DOMAIN = "%DeepSee";

/// Id of pivot table.
Property pivotId As %ZEN.Datatype.string;

/// Ondrilldown event.
Property ondrilldown As %ZEN.Datatype.eventHandler;

/// Ondrillup event.
Property ondrillup As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

/// Draw the control.
ClientMethod renderContents() [ Internal, Language = javascript ]
{
}

/// Action handler for drill down.
ClientMethod drillDownHandler() [ Language = javascript ]
{
}

/// Action handler for drill up.
ClientMethod drillUpHandler() [ Language = javascript ]
{
}

}
