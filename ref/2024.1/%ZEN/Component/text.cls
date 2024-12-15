/// Simple text input control.<br>
/// This is a simple wrapper around the HTML input=text control.
Class %ZEN.Component.text Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "text";

/// Size of the input area for this text control.
Property size As %ZEN.Datatype.integer(MINVAL = 0);

/// Maximum number of characters allowed within the text control.
Property maxlength As %ZEN.Datatype.integer(MINVAL = 0);

/// Expose placeholder attribute to Zen.
Property placeholder As %ZEN.Datatype.caption;

/// Allow for alternate types of input controls such as telephone, email etc which give more feedback particularly on mobile devices
Property inputtype As %ZEN.Datatype.string(VALUELIST = ",text,email,tel,password,url,search") [ InitialExpression = "text" ];

/// If true, this control has spellcheck enabled. Assuming this is an HTML5 browser implementation. IE9 does not support this.
Property spellcheck As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This attribute indicates how the value of the control can be automatically completed by the browser.
Property autocomplete As %ZEN.Datatype.string [ InitialExpression = "on" ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
