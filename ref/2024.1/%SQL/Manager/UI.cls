/// %SQL.Manager's Web UI Methods
Class %SQL.Manager.UI Extends %Persistent [ Abstract, System = 3 ]
{

/// Writes out common JavaScript code for wizard pages.
ClassMethod CommonJS()
{
}

/// Write out alert box
ClassMethod DisplayError(ze As %String)
{
}

/// Writes out JavaScript code for selecting and deselecting properties
/// and move selected properties up and down
ClassMethod SelectJS() As %Status
{
}

/// Returns export steps that should be shown
ClassMethod ExportSteps(Step As %Integer = 1) As %String
{
}

/// Returns import steps that should be shown
ClassMethod ImportSteps(Step As %Integer = 1) As %String
{
}

/// This init is called by the w*.csp
ClassMethod WizardInit()
{
}

/// Write common code that is used by link table wizards
ClassMethod WizardStyle()
{
}

ClassMethod listTableOpen()
{
}

ClassMethod listTableClose(total)
{
}

ClassMethod listSteps(Step, finalstep)
{
}

/// Return text that is shown in wizard header
ClassMethod writeHeader(Wizard) As %String
{
}

/// Return text that is shown in wizard status bar
ClassMethod writeStatus(text)
{
}

}
