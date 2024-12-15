/// Studio Document class for Zen Application Editor.<br>
/// This document class applies to Zen application classes:
/// It allows the user to view a visual representation of
/// a Zen Application class.
Class %ZEN.StudioDocument.ZENAppEditorDocument Extends %ZEN.StudioDocument.AbstractDocument [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter DESCRIPTION = "Zen Application Editor";

Parameter EDITORURL = "%25ZEN.StudioDocument.ZENAppEditor.cls";

Parameter EXTENSION = ".app";

/// If set, name of superclass used for documents of this type.<br>
Parameter DOCUMENTCLASS = "%ZEN.application";

/// Returns true if this document type is enabled, and false to disable it
ClassMethod IsEnabled() As %Boolean
{
}

}
