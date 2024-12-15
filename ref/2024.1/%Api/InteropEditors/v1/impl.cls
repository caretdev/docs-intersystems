/// Interoperability Editor API for InterSystems IRIS<br/>
/// Business logic class defined by OpenAPI in %Api.InteropEditors.v1.spec<br/>
/// Updated Nov 14, 2024 18:21:54
Class %Api.InteropEditors.v1.impl Extends %REST.Impl [ ProcedureBlock ]
{

/// If ExposeServerExceptions is true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 0;

/// Overwrite %ReportRESTError for customized external error messages
ClassMethod %ReportRESTError(statusCode As %String, sc As %Status = 1, exposeServerExceptions As %Boolean = 0, externalError As %Status) As %DynamicObject
{
}

/// Get a list of permissions for the current user and namespaces they can access.
ClassMethod GetPermissions() As %DynamicObject
{
}

/// Get a list of rule classes available on the server.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetRules(namespace As %String) As %DynamicObject
{
}

/// Get a list of rule types available on the server.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetRuleTypes(namespace As %String) As %DynamicObject
{
}

/// Get the schema for this rule type.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     assistClassName, Rule type in the form of an assist class name.<br/>
ClassMethod GetRuleTypeSchema(namespace As %String, assistClassName As %String) As %DynamicObject
{
}

/// Get list of input plugins.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetInputPluginsList(namespace As %String) As %DynamicObject
{
}

/// Get information on this context class.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     contextClass, Name of the ObjectScript class used as a context class for a rule.<br/>
ClassMethod GetContextInputs(namespace As %String, contextClass As %String) As %DynamicObject
{
}

/// Dispatch to plugin endpoint.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     pluginPath, Path of the plugin endpoint to hit.<br/>
ClassMethod DispatchPlugin(namespace As %String, pluginPath As %String) As %Stream.Object
{
}

/// Create a new rule class.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     ruleClass, Name of the ObjectScript class in which this rule definition is defined.<br/>
///     ruleDefinition, Definition which defines the contents of a rule class.<br/>
ClassMethod PostRule(namespace As %String, ruleClass As %String, ruleDefinition As %DynamicObject) As %DynamicObject
{
}

/// Overwrite this rule class.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     ruleClass, Name of the ObjectScript class in which this rule definition is defined.<br/>
///     ruleDefinition, Definition which defines the contents of a rule class.<br/>
///     ignoreConflict, Overwrite this class if it exists, ignoring conflicts.<br/>
ClassMethod PutRule(namespace As %String, ruleClass As %String, ruleDefinition As %DynamicObject, ignoreConflict As %Boolean) As %DynamicObject
{
}

/// Get this rule class.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     ruleClass, Name of the ObjectScript class in which this rule definition is defined.<br/>
ClassMethod GetRule(namespace As %String, ruleClass As %String) As %DynamicObject
{
}

/// Compile this rule class.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     ruleClass, Name of the ObjectScript class in which this rule definition is defined.<br/>
ClassMethod CompileRule(namespace As %String, ruleClass As %String) As %DynamicObject
{
}

/// Get a list of defined packages.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetPackages(namespace As %String) As %DynamicObject
{
}

/// Get summaries of non-hidden classes in this namespace.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetClassSummaries(namespace As %String) As %DynamicObject
{
}

/// Terminate CSP Session.
ClassMethod Logout() As %Stream.Object
{
}

/// Get the expiry of the current session
ClassMethod GetExpiry() As %DynamicObject
{
}

/// Returns enabled true or false if Source Control Enabled for the namespace<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod SourceControlEnabled(namespace As %String) As %DynamicObject
{
}

/// Returns Source Control Menu for the given parameters<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     sourceControlRequestBody, The parameters for the requested Source Control function<br/>
ClassMethod SourceControlGetMenus(namespace As %String, sourceControlRequestBody As %DynamicObject) As %DynamicObject
{
}

/// Requests Source Control User Action for the given parameters<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     sourceControlRequestBody, The parameters for the requested Source Control function<br/>
ClassMethod SourceControlUserAction(namespace As %String, sourceControlRequestBody As %DynamicObject) As %DynamicObject
{
}

/// Requests Source Control After User Action for the given parameters<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     sourceControlRequestBody, The parameters for the requested Source Control function<br/>
ClassMethod SourceControlAfterUserAction(namespace As %String, sourceControlRequestBody As %DynamicObject) As %DynamicObject
{
}

/// Requests Source Control GetStatus for the given parameters<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     sourceControlRequestBody, The parameters for the requested Source Control function<br/>
ClassMethod SourceControlGetStatus(namespace As %String, sourceControlRequestBody As %DynamicObject) As %DynamicObject
{
}

ClassMethod RewriteRequestContent(extensionFunction As %String = "", content As %DynamicObject, includeFrom As %Boolean = 1) [ Internal ]
{
}

ClassMethod ForwardCallToAtelierQuery(namespace As %String) As %String [ Internal ]
{
}

/// Get the system mode of this instance.
ClassMethod GetSystemMode() As %DynamicObject
{
}

/// Get a list of lookup tables in this namespace.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetLookupTables(namespace As %String) As %DynamicObject
{
}

/// Get a list of productions.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetProductions(namespace As %String) As %DynamicObject
{
}

/// Get a list of constraint options for this rule type.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     assistClass, Rule type, in the form of an assist class.<br/>
///     constraints, Constraints to get options for.<br/>
ClassMethod GetConstraintOptions(namespace As %String, assistClass As %String, constraints As %DynamicArray) As %DynamicObject
{
}

/// Get a list of production configuration items.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     production, Get the configuration items for only this production.<br/>
///     targets, Only get the configuration items of type 'target'.<br/>
ClassMethod GetProductionConfigItems(namespace As %String, production As %String, targets As %Boolean) As %DynamicObject
{
}

/// Get a list of data transforms.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetTransforms(namespace As %String) As %DynamicObject
{
}

/// Get the 'path' portion of the Interoperability management URL for a given namespace.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetMgmtUrl(namespace As %String) As %DynamicObject
{
}

/// Get the language for this session
ClassMethod GetLanguage() As %DynamicObject
{
}

/// Set the language for this session<br/>
/// The method arguments hold values for:<br/>
///     language, Language code to set for this session.<br/>
ClassMethod SetLanguage(language As %String) As %DynamicObject
{
}

/// Get information on this class.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     ruleClass, Name of the ObjectScript class in which this rule definition is defined.<br/>
ClassMethod GetTestingInputs(namespace As %String, ruleClass As %String) As %DynamicObject
{
}

/// Run rule and return logs<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
///     ruleClass, Name of the ObjectScript class in which this rule definition is defined.<br/>
///     ruleTestMessage, Defines test parameters for rule class<br/>
ClassMethod TestRule(namespace As %String, ruleClass As %String, ruleTestMessage As %DynamicObject) As %DynamicObject
{
}

/// Get a list of production items in rule.<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetProductionItems(namespace As %String) As %DynamicObject
{
}

/// Get a list of doctype names and categories for HL7 rule testing<br/>
/// The method arguments hold values for:<br/>
///     namespace, InterSystems IRIS namespace this operation will be performed in.<br/>
ClassMethod GetDocTypes(namespace As %String) As %DynamicObject
{
}

}
