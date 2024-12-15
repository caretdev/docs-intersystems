Class %Atelier.v1.Utils.Extension Extends %RegisteredObject [ Owner = {%Developer} ]
{

/// For use from the Query API
/// Through DocDB ExecuteQuery, items (a JSON string) is automatically converted to a nested object.
ClassMethod GetMenusExecute(ByRef qHandle As %Binary, pMenuType As %String = "", pInternalName As %String = "", pSelectedText As %String = "") As %Status
{
}

ClassMethod GetMenusFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ExtensionMenusExecute ]
{
}

ClassMethod GetMenusClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ExtensionMenusExecute ]
{
}

/// Core code for getting menus
ClassMethod GetMenuHelper(pMenuType As %String, pInternalName As %String, pSelectedText As %String, Output pMenuPart As %DynamicObject) As %Status
{
}

/// For use from the Query API
/// Submits a user action in a Studio Extension
ClassMethod UserActionExecute(ByRef qHandle As %Binary, pSystem As %Boolean, pAction As %String, pInternalName As %String, pSelectedText As %String) As %Status
{
}

ClassMethod UserActionFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = UserActionExecute ]
{
}

ClassMethod UserActionClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = UserActionExecute ]
{
}

/// For use from the Query API
/// Handles a user's response after a user action in a Studio Extension
ClassMethod AfterUserActionExecute(ByRef qHandle As %Binary, pSystem As %Boolean, pAction As %String, pInternalName As %String, pAnswer As %Integer, pMessage As %String) As %Status
{
}

ClassMethod AfterUserActionFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = AfterUserActionExecute ]
{
}

ClassMethod AfterUserActionClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = AfterUserActionExecute ]
{
}

/// For use from the Query API
/// Gets status of one or more (comma-separated) items
/// May be multiple items to reduce network traffic if refactoring/etc. would edit many files at the same time.
ClassMethod GetStatusExecute(ByRef qHandle As %Binary, pInternalNames As %String) As %Status
{
}

ClassMethod GetStatusFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = GetStatusExecute ]
{
}

ClassMethod GetStatusClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = GetStatusExecute ]
{
}

/// Returns 0 if no source control class is configured in the current namespace, and 1 if one is.
ClassMethod ExtensionEnabled() As %Boolean [ SqlProc ]
{
}

/// Initializes the Source Control object.
/// Returns an error status if there was an error doing so.
ClassMethod InitializeSourceControl() As %Status [ Internal, Private ]
{
}

/// <b>ExtensionDocName</b> Up cases DocName type, the way Studio extensions expect to deal with.<br />
/// If there are multiple document names, all extensions are up-cased.<br />
/// CSP files (those starting with a forward slash) are an exception - the case is unchanged, to match Studio's behavior.
ClassMethod ExtensionDocName(pDocName As %String) As %String [ Internal, Private ]
{
}

/// Appends a %DynamicArray (pSourceArray) to another (pTargetArray); returns pTargetArray.
ClassMethod AppendArray(pTargetArray As %DynamicArray, pSourceArray As %DynamicArray) As %DynamicArray [ Internal, Private ]
{
}

/// Sets the text of the document named by pInternalName as the doc property of pResponseObject.
ClassMethod AppendDocument(pResponseObject As %DynamicObject, pInternalName As %String) As %Status [ Internal, Private ]
{
}

/// Sets the error text of pStatus as the errorText property of pResponseObject if pStatus is an error.
ClassMethod AppendStatusContent(pResponseObject As %DynamicObject, pStatus As %Status) [ Internal, Private ]
{
}

}
