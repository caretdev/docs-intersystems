/// This is an internal, abstract class that is used to provide
/// some commonality between <class>menu</class> and <class>menuItem</class>.
Class %ZEN.Component.menuCell [ Abstract, Deprecated, System = 3 ]
{

/// Value to display for menu item.
Property caption As %ZEN.Datatype.caption;

/// URL to go to when menu item is chosen.
/// This can contain a ZENEXPRESSION.
Property link As %ZEN.Datatype.uri;

/// The HTML target value applied to the link for this menu item.<br/>
/// This controls where the new document will be displayed when the
/// user clicks on a link. Typically this is the name of a frame.<br/>
/// HTML also defines for special values for target:
/// <ul>
/// <li>"_blank" - open the link in a new window.</li>
/// <li>"_parent" - open the link in our parent window.</li>
/// <li>"_self" - open the link in current window.</li>
/// <li>"_top" - open the link in topmost window.</li>
/// </ul>
Property target As %ZEN.Datatype.string;

/// Optional uri of image to display for this menuItem.
Property image As %ZEN.Datatype.uri;

/// Width of image in pixels.
Property imageWidth As %ZEN.Datatype.length [ InitialExpression = 16 ];

/// Height of image in pixels.
Property imageHeight As %ZEN.Datatype.length [ InitialExpression = 16 ];

/// If true, this menuItem is disabled.
Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onclick event handler:
/// This event is fired when the mouse is clicked on the menuItem.
/// Use this instead of <property>link</property> if you want to
/// execute code when a menu is invoked.<br>
/// If defined, the <property>link</property> is ignored.
Property onclick As %ZEN.Datatype.eventHandler;

/// (Optional) Help message associated with this menu item.
Property help As %ZEN.Datatype.caption;

/// (Optional) If specified, user must hold this resource or this item is disabled.
Property linkResource As %ZEN.Datatype.resource;

Property secureLink As %ZEN.Datatype.string [ Internal ];

Property secureCallback As %ZEN.Datatype.string [ Internal ];

/// Draw contents of menu cell
Method %DrawMenuCell(pShowArrow As %Boolean = 0)
{
}

}
