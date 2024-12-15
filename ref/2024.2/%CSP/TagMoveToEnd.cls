/// Instances of this class can be added to the DOM for a CSP in order to copy their children
/// to the end of their parent's list of children.  The purpose of this tag is to allow children to
/// be added to the end of the Children list from an OnMatch method.
Class %CSP.TagMoveToEnd Extends %CSP.Rule [ System = 3 ]
{

/// When this DOM element encountered, move this tag's children to the end of the parent's child list.
Method RenderStartTag() As %Status
{
}

}
