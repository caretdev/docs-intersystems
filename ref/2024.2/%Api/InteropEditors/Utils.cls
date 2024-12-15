Class %Api.InteropEditors.Utils
{

/// Comments on 'when's are stored in an attribute rather than an array of elements.
/// This string acts a the delimeter for the comment attribute on each when.
Parameter WhenCommentDelimeter = "&sep;";

Parameter AllRulesRead = 1;

Parameter AllRulesWrite = 2;

Parameter BusinessRulesRead = 3;

Parameter BusinessRulesWrite = 4;

Parameter RoutingRulesRead = 5;

Parameter RoutingRulesWrite = 6;

/// Get properties and plugin metadata of an extended context class.
/// The method arguments hold values for:
///     namespace, Namespace to search for extensions in.
///     contextClassName, Context class to get properties and plugin metadata of.
ClassMethod GetInputPlugins(contextClassName As %String, ByRef plugins As %DynamicArray) As %Status
{
}

/// Save 'ruleDefinition' into class 'ruleClass'.
/// If a class 'ruleClass' exists it will be overwritten.
ClassMethod SaveRule(ruleClass As %String, ruleDefinition As %DynamicObject) As %Status
{
}

/// Transform generated rule definition JSON to be more complete and internally consistent.
/// Recursively iterate through the actions array of a ruleSet
/// Rename each when.condition to match action.expression naming style
/// and deserialize when.comment string into when.comments array.
/// Performs inverse of ContractRuleSet.
ClassMethod ExpandRuleSet(actions As %DynamicArray) As %Status
{
}

/// Transform provided rule definition JSON to match generated rule definition structure.
/// Recursively iterate through the actions array of a ruleSet.
/// Remove each action.expression.valueObject and move each action.expression.value to action.value.
/// Rename each when.expression.value to when.condition and when.expression.valueObject to when.conditionObject and
/// deserialize when.comments array into delimeted when.comment string.
/// Performs inverse of ExpandRuleSet.
ClassMethod ContractRuleSet(actions As %DynamicArray) As %Status
{
}

/// Check if this 'ruleClass' is read only for this user
/// Class will be considered read only if the database underlying the namespace this rule is in is read only
ClassMethod IsReadOnly(ruleClass As %String) As %Boolean
{
}

/// Get permissions the current user has on rules.
/// Permissions are returned in a bitstring with the following mapping:<br/>
///     1: %Ens_Rules Read<br/>
///     2: %Ens_Rules Write<br/>
///     3: %Ens_BusinessRules Read<br/>
///     4: %Ens_BusinessRules Write<br/>
///     5: %Ens_RoutingRules Read<br/>
///     6: %Ens_RoutingRules Write
ClassMethod GetRulePerms() As %Binary
{
}

/// Check if the current user has specified permissions on this rule class.
/// Input 'permString' defines what permissions to check: valid values are "R", "W", and "RW".
/// Input 'perms' defines the permissions the current user has on rules:
/// expected format is a bitstring as returned by <METHOD>GetRulePerms</METHOD>.
ClassMethod HasPermsByRuleClass(ruleClass As %String, permStr As %String, perms As %Binary)
{
}

/// Check if the current user has specified permissions on rules that use this assist class.
/// Input 'permString' defines what permissions to check: valid values are "R", "W", and "RW".
/// Input 'perms' defines the permissions the current user has on rules:
/// expected format is a bitstring as returned by <METHOD>GetRulePerms</METHOD>.
ClassMethod HasPermsByAssistClass(assistClass As %String, permStr As %String, perms As %Binary) As %Boolean
{
}

/// Check if the current user has specified permissions on all rules in 'ruleTypes' input:
/// valid values are "B" (Business Rules), "R" (Routing Rules), "A" (All Rules), and "*" (Any Rules).
/// Input 'permString' defines what permissions to check: valid values are "R", "W", and "RW".
/// Input 'perms' defines the permissions the current user has on rules:
/// expected format is a bitstring as returned by <METHOD>GetRulePerms</METHOD>.
ClassMethod HasPermsByRuleType(ruleTypes As %String, permStr As %String, perms As %Binary) As %Boolean [ CodeMode = expression ]
{
}

/// Check if the given 'class' is a subclass of 'superClass':
/// if class is guaranteed to be compiled use %Extends instead.
ClassMethod IsSubClass(class As %String, superClass As %String) As %Integer
{
}

/// Check if 'parent' has key 'key'
ClassMethod HasKey(parent As %DynamicObject, key As %String) As %Integer
{
}

/// Invoke request Source Control callback as appropriate
ClassMethod CallSourceControlCallback(className As %String, callback As %String = "", Output serverOutput As %DynamicArray, Output usesSourceControl As %Boolean, Output sourceControlInstance As %Studio.SourceControl.Base, enforceCanEdit As %Boolean = 0, wasNewCode As %Boolean = 0) As %Status [ Internal ]
{
}

/// Return the internal name of the rule.
ClassMethod GetInternalName(className) As %String [ Internal ]
{
}

ClassMethod AddSCInfoToContainer(ByRef container As %DynamicObject, scProperty, msgArrays...) [ Internal ]
{
}

/// Given a context object evaluate the rule and create result output as JSON
ClassMethod evaluateRule(pContext As %RegisteredObject, pRuleName As %String, Output pRuleLogData As %String = "", pDebugFlags As %String = "crd", pSelectMode As %Integer = 2) As %Status
{
}

/// Internal server side method to retrieve list of Schema categories or structures.
/// This is only called if the context is EnsLib.HL7.Message and hence EnsLib.HL7.MsgRouter.RuleAssist
/// will exist in this namespace.
ClassMethod ServerGetQueryData(pParam As %String = "", assistClassName As %String = "", pValue As %String = "") As %String [ Internal, ZenMethod ]
{
}

/// Given an object create an HTML serialization of the object.
ClassMethod serializeMessageAsHTML(pMessageObject As %RegisteredObject, Output pNeedsHTMLEscaping As %Boolean = 1, Output tXMLStream As %Stream.TmpCharacter) As %Status
{
}

}
