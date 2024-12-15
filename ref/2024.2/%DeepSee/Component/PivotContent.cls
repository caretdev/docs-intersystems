/// This utility class supplies the methods needed to control a pivotTable using a navigator component.
Class %DeepSee.Component.PivotContent [ Abstract, System = 3 ]
{

/// Return an object describing what to display for this level.
ClientMethod pivotTableGetContentForLevel(navigator, pivot, level, key, value) [ Language = javascript ]
{
}

/// This is called when a list within the navigator is rearranged.
/// <var>key</var> is the key for the item and <var>swap</var> indicates what items to rearrange.
/// <var>final</var> is true if this is the final value (controls such as a slider
/// may provide intermediate values as well while the user is actively dragging it).
ClientMethod pivotTableDataArrange(navigator, pivot, key, swap, final) [ Language = javascript ]
{
}

/// Button clicked in navigator header.
ClientMethod pivotTableHeaderButtonClick(navigator, pivot, key) [ Language = javascript ]
{
}

/// Button clicked in navigator close button.
ClientMethod pivotTableCloseButtonClick(navigator, pivot, key) [ Language = javascript ]
{
}

/// This is called when a data value within the navigator is changed.
/// <var>key</var> is the key for the item and <var>value</var> is the new value.
/// <var>final</var> is true if this is the final value (controls such as a slider
/// may provide intermediate values as well while the user is actively dragging it).
ClientMethod pivotTableDataChange(navigator, pivot, key, value, final) [ Language = javascript ]
{
}

}
