/// <Class>bookmark</Class>
/// The book formatting object is used to identify an access point, by name, and to specify where that access point is within the current document or another external document. A given bookmark may be further subdivided into a sequence of (sub-)bookmarks to as many levels as the authors desire.
Class %ZEN.Report.Display.bookmark Extends childrenNode [ Deprecated, Inheritance = right, PropertyClass = %ZEN.Report.Display.displayParameters, System = 4 ]
{

/// <Property>externalDestion</Property>
/// This attribute if not null is the uri to a place in another document
Property externalDestination As %ZEN.Datatype.string;

/// <Property>internalDestination</Property>
/// This attribute if not null is the idref of a place in the document of which it is a part
Property internalDestination As %ZEN.Datatype.string;

/// Specifies how the formatting object to which it applies is initially displayed. <br/>
/// Values have the following meanings: <br/>
/// <list>
/// <li><b>show</b></li>
/// <li><b>hide</b></li>
/// </list>
/// <b>show</b>
/// The content of the formatting object is a candidate for being displayed initially.<br/>
/// <b>hide</b>
/// The content of the formatting object is not a candidate for being displayed initially.
Property startingState As %ZEN.Datatype.string;

/// This internal method is used to generate xsl-fo for all the children of this bookmark
Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

}
