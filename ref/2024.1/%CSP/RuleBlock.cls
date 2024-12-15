/// The <class>%CSP.RuleBlock</class> class is the super class of all rule
/// generated classes for block structured tags, e.g. csp:if,
/// that represent elements within the DOM model.
Class %CSP.RuleBlock Extends %CSP.Rule [ System = 3 ]
{

/// The object instance for the containing block or "".
Property Container As %CSP.RuleBlock;

/// The label used for the <i>end</i> of this block,
/// e.g. the /csp:if clause for csp:if or after the loop for csp:while
Property EndLabel As %String;

/// The label used for the <i>next</i> block,
/// e.g. the csp:else clause for csp:if or the next iteration for csp:while
Property NextLabel As %String;

/// Get a new block and associated labels for this nested code block.
Method NewBlock()
{
}

/// Remove the this nested block.
Method RemoveBlock()
{
}

/// Get current block without creating a new one.
Method GetCurrentBlock() As %CSP.RuleBlock
{
}

/// Get a new block label.
Method GetNewLabel() As %String
{
}

}
