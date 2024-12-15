/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>A test for invoking commands from an AutoPage.
Class %CSP.Util.TableForm Extends (%RegisteredObject, AutoForm) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Set this to 1 for command forms...
Parameter COMMANDFORM = 1;

Method OnSubmit(ByRef pID As %String, pSubmit As %String) As %Status
{
}

ClassMethod OnDefineButtons(ByRef pButtons As FormButton)
{
}

}
