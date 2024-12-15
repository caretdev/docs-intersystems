/// <Class>bookmarkGroup</Class> instances must always have <Class>bookmarkTree</Class> instances as their parent
/// <Example>
/// <bookmarkGroup group="FilmCategory">
///    <variable name="Category">
///       <valueof select="@Category"/>
///    </variable>
///    <bookmark internalDestination="!concat($Category,1)">
///       <bookmarkTitle>
///          <valueof select="@Category"/>
///       </bookmarkTitle>
///    </bookmark>
/// </bookmarkGroup>
/// </Example>
Class %ZEN.Report.Display.bookmarkGroup Extends childrenNode [ Deprecated ]
{

/// <Property>group</Property> matches XML data using the command &ltxsl:for-each select='_..group_&quot;'>".<br/>
/// All children of <Class>bookmarkGroup</Class> are generated under the &lt;xsl:for-each select=...>
Property group As %ZEN.Datatype.string;

/// <Method>%DrawToXSLFO</Method> is an internal method used to generate the containg &lt;xsl:for-each select'_..group"'>and then all the children of bookmarkGroup
Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

}
