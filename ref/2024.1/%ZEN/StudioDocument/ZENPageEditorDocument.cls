/// Studio Document class for Zen Page Editor.<br>
/// This document class applies to Zen page classes:
/// It allows the user to view a visual representation of
/// a Zen page class.
Class %ZEN.StudioDocument.ZENPageEditorDocument Extends %ZEN.StudioDocument.AbstractDocument [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter DESCRIPTION = "Zen Page Editor";

Parameter EDITORURL = "%25ZEN.StudioDocument.ZENPageEditor.cls";

Parameter EXTENSION = ".zen";

/// If set, name of superclass used for documents of this type.<br>
Parameter DOCUMENTCLASS = "%ZEN.Component.page";

/// Returns true if this document type is enabled, and false to disable it
ClassMethod IsEnabled() As %Boolean
{
}

}
