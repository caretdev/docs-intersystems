/// This represents an individual item in a feed
Class %ZEN.Mobile.RSS.Item Extends %Persistent [ Deprecated, System = 3 ]
{

Parameter DEFAULTGLOBAL = "^ZEN.Mobile.RSS.Item";

/// This is the timestamp when the item was filed
Property TimeStamp As %TimeStamp [ ReadOnly ];

/// This is the parent Channel's (feed's) Title
Property ChannelTitle As %String [ ReadOnly ];

Method ChannelTitleGet() As %String [ CodeMode = expression ]
{
}

/// This is the parent Channel's (feed's) Description
Property ChannelDescription As %String [ ReadOnly ];

Method ChannelDescriptionGet() As %String [ CodeMode = expression ]
{
}

/// This is the category of the Item
Property Category As %String(MAXLEN = "") [ ReadOnly ];

/// This is the publication date of the Item
Property PubDate As %String(MAXLEN = "") [ ReadOnly ];

/// This is the title of the item
Property Title As %String(MAXLEN = "") [ ReadOnly ];

/// This is the Description of the item
Property Description As %String(MAXLEN = "") [ ReadOnly ];

/// This is the Link to the full article
Property Link As %String(MAXLEN = "") [ ReadOnly ];

/// Identity
Property ZCRC As %String [ ReadOnly ];

/// Getter for ZCRC
Method ZCRCGet() As %String [ CodeMode = expression ]
{
}

Relationship Feed As Feed [ Cardinality = parent, Inverse = Items ];

Method %OnNew(pCategory As %String, pPubDate As %String, pTitle As %String, pDescription As %String, pLink As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

}
