/// Handles prompting for chui applications.
Class %Library.Prompt Extends %SYSTEM.Help [ Abstract, System = 4 ]
{

/// Prompt for a number.<br>
/// <br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Value - Default value <br>
/// Min - Minimum value allowed<br>
/// Max - Maximum value allowed<br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$DisableHelpContextResponse - Disable entry of the help context character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
///      - $$$AllowNullMask - Allow null entry
/// TimeOut - Timeout for prompt<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// $$$HelpContextResponse - Help context character entered if $$$DisableHelpContextCharMask set <br>
/// Value - Entered number<br>
ClassMethod GetNumber(Prompt As %String, ByRef Value As %Integer, Min As %Integer, Max As %Integer, ByRef Help As %String, Flag As %Integer = 0, Timeout As %Integer = 0) As %Integer
{
}

/// Prompt for a number in a displayed menu.<br>
/// <br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Value - Default value <br>
/// List - Array of menu items. This should be in one of the following
/// two forms:<br>
/// List(1)="Option 1"<br>
/// List(2)="Option 2"<br>
/// List(n)="Option n"<br>
/// <br>
/// or
/// <br>
/// $lb(QueryName,ExecuteParam1,ExecuteParam2,ExecuteParamN)<br>
/// For example: $lb("SYS.Database:List","*")
/// <br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$DisableHelpContextCharMask - Disable entry of the help context character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
///      - $$$InitialDisplayMask - Display the menu when initially called<br>
/// TimeOut - Timeout for prompt<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// $$$HelpContextResponse - Help context character entered if $$$DisableHelpContextCharMask set <br>
/// Value - Entered number<br>
ClassMethod GetMenu(Prompt As %String, ByRef Value As %Integer, ByRef List As %String, ByRef Help As %String, Flag As %Integer = 0, Timeout As %Integer = 0) As %Integer
{
}

/// Prompt for a number or entry in a displayed menu. Returns the selected item.<br>
/// <br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Value - Default value <br>
/// List - Array of menu items. This should be in one of the following
/// two forms:<br>
/// List(1)="Option 1"<br>
/// List(2)="Option 2"<br>
/// List(n)="Option n"<br>
/// If List(n,0) exist then the help (? entered) will display List(n)_List(n,0).<br>
/// <br>
/// or
/// <br>
/// $lb(QueryName,ExecuteParam1,ExecuteParam2,ExecuteParamN)<br>
/// For example: $lb("SYS.Database:List","*")
/// <br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$DisableHelpContextCharMask - Disable entry of the help context character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
///      - $$$InitialDisplayMask - Display the menu when initially called<br>
///      - $$$AllowNullMask - Allow null entry<br>
///      - $$$EnableMultipleSelectionMask - Allow comma delimited numeric entry, ranges, and * for all<br>
///      - $$$MatchExactArrayMask - Only entries from the the array of options are allowed, case sensitive<br>
///      - $$$MatchArrayMask - Only entries from the array of options are allowed, not case sensitive<br>
/// TimeOut - Timeout for prompt<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// $$$HelpContextResponse - Help character entered if $$$DisableHelpContextCharMask set <br>
/// Value - Value of selected item; or if the $$$EnableMultipleSelectionMask flag is used, a list of selected items in $listbuild format.<br>
/// If the size of the selected set exceeds the maximum local variable string size either an error will be thrown or
/// if $$$TrapErrorMask is specified, an error will be returned<br>
/// <br>
ClassMethod GetArray(Prompt As %String, ByRef Value As %String, ByRef List As %String, MinLen As %Integer, MaxLen As %Integer, ByRef Help As %String, Flag As %Integer = 0, Timeout As %Integer = 0) As %Integer
{
}

/// Prompt for a String.<br>
/// <br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Value - Default value <br>
/// Min - Minimum length of string allowed<br>
/// Max - Maximum length of string allowed<br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$DisableHelpContextCharMask - Disable entry of the help context character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
/// TimeOut - Timeout for prompt<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// $$$HelpContextResponse - Help character entered if $$$DisableHelpContextCharMask set <br>
/// Value - Entered String<br>
ClassMethod GetString(Prompt As %String, ByRef Value As %String, MinLen As %Integer, MaxLen As %Integer, ByRef Help As %String, Flag As %Integer = 0, Timeout As %Integer = 0) As %Integer
{
}

/// Prompt for a Yes/No answer.<br>
/// <br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Value - Default value 0=No, 1=Yes<br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
/// TimeOut - Timeout for prompt<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// Value - 0=No, 1=Yes<br>
ClassMethod GetYesNo(Prompt As %String, ByRef Value As %Integer, ByRef Help As %String, Flag As %Integer = 0, Timeout As %Integer = 0) As %Integer
{
}

/// Prompt for More or Quit.<br>
/// <br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
/// TimeOut - Timeout for prompt<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// Value - Entered number<br>
ClassMethod GetMore(Prompt As %String = "-more-", ByRef Help As %String, Flag As %Integer = {$$$EnableQuitCharMask}, Timeout As %Integer = 0) As %Integer
{
}

/// Edits an objects properties.
ClassMethod EditFields(Obj, New) [ Internal ]
{
}

}
