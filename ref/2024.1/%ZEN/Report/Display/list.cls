/// This class is used to display a list within a ZEN Report.
Class %ZEN.Report.Display.list Extends childrenNode [ Deprecated, System = 4 ]
{

/// Specifies the group from which to obtain the entries in the list
Property group As %ZEN.Datatype.string;

/// Specifies the list type.<br>
/// Possible values are: "none","circle","square","disc", "1", "A", "a", "I", "i".<br>
/// PDF reports do not support "square" or "circle".
Property type As %ZEN.Datatype.string(VALUELIST = ",none,circle,square,disc,1,A,a,I,i") [ InitialExpression = "none" ];

/// Specifies an image to use for the list bullet.
Property image As %ZEN.Datatype.uri;

/// Use to separate rendered items
Property separator As %ZEN.Datatype.string(VALUELIST = ",none,line") [ InitialExpression = "none" ];

/// Specifies (as an integer) the first value for a list.  If <property>type</property> = "I",
/// <property>startvalue</property> = 3 will start with "III".
Property startvalue As %ZEN.Datatype.integer [ InitialExpression = 1 ];

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
