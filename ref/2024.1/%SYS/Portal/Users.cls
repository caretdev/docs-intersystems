/// This class will allow a user to specify and save favorite pages in the
/// system management portal.
Class %SYS.Portal.Users Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

/// Arbitray $list data.<br>
Property Data As %List [ Internal, Required ];

/// Identifier for the page.<br>
Property Page As %String(MAXLEN = 256) [ Internal, Required ];

/// $username of the user saving the page.<br>
Property Username As %Library.Username [ Internal, Required ];

/// Add a page favorite for the current $username.<br>
/// If the page favorite already exists, return success.<br>
/// Parameters:<br><br>
/// Page - Identifier of the page.<br>
/// Data - Data associated with the page.<br>
ClassMethod %AddFavorite(Page As %String, Data As %List) As %Status [ Internal ]
{
}

/// Return the list of page favorites for the current $Username.<br>
/// Parameters:<br><br>
/// Favorites (byref) - Array of page favorites for the current $username.<br>
/// Favorites(Page)=Data<br>
ClassMethod %GetFavoritesForUser(ByRef Favorites As %String) As %Status [ Internal ]
{
}

/// Return the list of page favorites for the specified usernames.<br>
/// Parameters:<br><br>
/// Usernames - List of usernames in the same format passed to the List() query.<br>
/// Favorites (byref) - Array of page favorites for the specified users.<br>
/// Favorites(Username,Page)=Data<br>
ClassMethod %GetFavoritesForUsers(Usernames As %String = "*", ByRef Favorites As %String) As %Status [ Internal ]
{
}

/// Remove a page favorite for the current $username.<br>
/// Returns success if the page favorite does not exist.<br>
/// Parameters:<br><br>
/// Page - Identifier of the page favorite to remove for $username.<br>
ClassMethod %RemoveFavorite(Page As %String) As %Status [ Internal ]
{
}

/// Remove all page favorites for the current $username.<br>
ClassMethod %RemoveFavoritesForUser() As %Status [ Internal ]
{
}

/// Remove all favorites for the specified usernames.<br>
/// Parameters:<br><br>
/// Usernames - List of usernames in the same format passed to the List() query.<br>
ClassMethod %RemoveFavoritesForUsers(Usernames As %String = {$username}) As %Status [ Internal ]
{
}

/// List of users and their page favorites.<br>
/// Names - Comma separated list of users<br>
/// "*" - All records match<br>
/// "String,String1" - Any records matching one of these elements<br>
/// "String*" - Any record starting with "String"<br>
/// "String,String1*,String2" - Any record matching one of these elements, or starting with "String1"<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef qHandle As %Binary, Usernames As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

}
