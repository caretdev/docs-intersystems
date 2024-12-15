Class %Library.Device Extends %SYSTEM.Help [ Abstract, System = 4 ]
{

/// Get and open an INPUT or OUTPUT device.<br>
/// Input Parameters:<br>
/// Prompt - Prompt to be displayed<br>
/// Value - Default value <br>
/// Help - Array of help text<br>
/// Flag - From %syPrompt.inc<br>
///      - $$$DisableBackupCharMask - Disable entry of the backup character<br>
///      - $$$TrapCtrlCMask - Trap CTRL/C and return CTRL/C status<br>
///      - $$$EnableQuitCharMask - Enable quit and return Quit status<br>
///      - $$$DisableHelpCharMask - Disable entry of the help character<br>
///      - $$$TrapErrorMask - Trap errors and return error status<br>
/// TimeOut - Timeout for prompt<br>
/// IOFlag - Mask containing one of the following values<br>
///        - 1= Get input or output device (Default)<br>
///        - 2= Get input device<br>
///        - 4= Get output device<br>
/// 	       - 8= Open passed in Value without prompting<br>
/// <br>
/// Output parameters:<br>
/// Status - One of the following from %syPrompt:<br>
/// $$$SuccessResponse - Successful entry, Value contains valid open device<br>
/// $$$BackupResponse - Backup character entered<br>
/// $$$QuitResponse - Quit character entered if $$$EnableQuitCharMask set<br>
/// $$$CtrlCResponse - CTRL/C entered if $$$TrapCtrlCMask set<br>
/// $$$ErrorResponse - Error during entry if $$$TrapErrorMask set<br>
/// $$$HelpResponse - Help character entered if $$$DisableHelpCharMask set <br>
/// <br>
/// Value - Open device name<br>
/// IOSL - Number of lines per screen<br>
/// IOM - Right margin<br>
/// IOBS - Backspace character<br>
/// IOPAR - IO parameters<br>
/// IOT - Device type<br>
/// IOST - Expanded device type<br>
/// ANS - Device typed in by user<br>
/// RMSDF - Default RMS parameters<br>
/// IODOC - Spool file name<br>
/// IODES - Spool file description<br>
/// <br><br>
/// Typical usage is as follows:
/// s Status=##Class(%Library.Device).Get("Device:",.Value,,$$$TrapCtrlCMask+$$$EnableQuitCharMask,,IOFlag,.IOSL,.IOM)<br>
/// i (Status=$$$CtrlCResponse)||(Status=$$$QuitResponse) q<br>
/// i (Status=$$$BackupResponse) g PreviousPrompt<br>
/// use Value<br>
/// w !,"Right margin is "_IOM<br>
/// w !,"Lines per page is "_IOSL<br>
/// close Value<br>
ClassMethod Get(Prompt As %String, ByRef Value As %String, ByRef Help As %String, Flag As %Integer = 0, Timeout As %Integer = 0, IOFlag As %Integer = 1, ByRef IOSL As %String, ByRef IOM As %Integer, ByRef IOF As %String, ByRef IOBS As %String, ByRef IOPAR As %String, ByRef IOT As %String, ByRef IOST As %String, ByRef ANS As %String, ByRef RMSDF As %String, ByRef IODOC As %String, ByRef IODES As %String)
{
}

/// Get current device info from %IS global.<br>
/// Get current device info from %IS global and set default
/// FormFeed and Backspace strings for the process based on
/// information in the %IS global.
/// <br>
/// Return Values:<br>
/// IO - Device name<br>
/// SL - Number of screen lines of the device<br>
/// RM - Right margin of the device<br>
/// FF - Form feed character of the device<br>
/// BS - Back space character of the device<br>
/// SUB - Device subtype<br>
/// XY - XY cursor positioning string<br>
///
/// This method replaces the CURRENT^%IS call.
ClassMethod GetCurrent(ByRef IO As %String, ByRef SL As %String, ByRef RM As %String, ByRef FF As %String, ByRef BS As %String, ByRef SUB As %String, ByRef XY As %String)
{
}

/// Try to return the internal format of the file.<br>
/// This method is only used by this class.
ClassMethod GetFileFormat(File) As %String [ Internal, Private ]
{
}

/// Return the Back Space string for the process principal device.<br>
ClassMethod GetBackSpace() As %String
{
}

/// Return the Clear Screen (Form Feed) string for the process principal device.<br>
ClassMethod GetClearScreen() As %String
{
}

/// Return the write mnemonic space routine directory for the current device.<br>
ClassMethod GetMnemonicDirectory() As %String
{
}

/// Return the write mnemonic space routine name for the current device.<br>
ClassMethod GetMnemonicRoutine() As %String
{
}

/// Return the name of the null device for the platform.<br>
ClassMethod GetNullDevice() As %String
{
}

/// Return a list of printers that the system recognizes.<br><br>
/// This method is supported only for Windows platform, for non Windows platform it always returns a null string.<br><br>
/// It returns a null string when there is no printer recognized by the system.<br>
/// Use $LISTLENGTH function to get number of printers in the returned list.
/// Use $LIST function to get each printer name in the list.
/// Note that you need to add "|PRN|" at beginning of each printer name in
/// order to use OPEN command to open the printer device.
ClassMethod GetPrinters() As %List
{
}

/// Return the read terminator string for the current device.<br>
/// Does not apply to some devices.
ClassMethod GetReadTerminators() As %String
{
}

/// Return the right margin setting for the current device.<br>
/// This only applies to terminals.
ClassMethod GetRightMargin() As %Integer
{
}

/// Returns an integer which specifies the type of device.<br>
/// 0 - sequential file<br>
/// 1 - terminal <br>
/// 2 - spool device (device #2)<br>
/// 3 - magnetic tape (device numbers 47-50)<br>
/// 4 - system operator's console (device 1)<br>
/// 5 - pseudo-device (device numbers 20-46)<br>
/// 6 - Null device<br>
/// 7 - spooled virtual console<br>
/// 8 - IJC device (devices 224-255)<br>
/// 9 - TCP device<br>
/// 11 - NetBIOS NTI device<br>
/// 12 - Named Pipe device<br>
/// 13 - Memory-mapped device<br>
/// 14 - XDEV extensible device<br>
/// <br>-1 - Unknown or no default device<br>
ClassMethod GetType() As %Integer
{
}

/// Return the Device name and its parameters if a terminal.<br>
/// This method is only used by this class.
ClassMethod VirtualTermCheck(ByRef Device As %String, ByRef DeviceData As %String) [ Internal ]
{
}

/// Description<br><br>
/// The Broadcast class method has two syntactic forms. The first
/// sends a message to the specified terminal, and can optionally
/// time out. The second sends a message to the operator console
/// (specified by the null string), and also logs the message.<br>
/// <br>
/// Broadcast(terminal,message) passes the message to the specified terminal. If you
/// specify your own principal device, your message appears on your terminal screen.<br>
/// <br>
/// Broadcast("",message) passes the message to the operator console, logging it in the
/// console log file. By default, the console log file is messages.log, which can be
/// accessed via the System Management Portal System Logs option. This default console log
/// file location is configurable. Go to the Management Portal, select
/// [Home] > [System Administration] > [Configuration] > [Additional Settings] > [Advanced Memory].
/// View and edit the current setting of ConsoleFile.
/// By default this setting is blank, routing console messages to
/// messages.log in the MGR directory. If you change this setting, you must restart the system
/// for this change to take effect.<br>
/// Broadcast does not add any carriage control to the message it sends. To include any
/// carriage control (carriage returns or line feeds), you must include them in the message,
/// using $CHAR(10) and $CHAR(13).<br>
/// <br>
/// Broadcast returns 1 if successful; 0 if not successful.<br>
/// <br>
/// Parameters<br><br>
/// terminal<br>
/// The device name of the terminal to which you want to send a message, specified as a
/// quoted string. Specify the null string ("") to send the message to the system console.<br>
/// <br>
/// message<br>
/// The message to send, specified as a quoted string.<br>
/// <br>
/// level<br>
/// Optional<br>
///   when used with named terminal only ? A timeout in seconds. If Broadcast is not able
/// to send the message during the period of the timeout, it ceases attempts to send the
/// message after the timeout expires.<br>
///   when used with operator console only ? The log level you want to assign to the message.<br>
/// <br>
/// You can use the following values:<br>
/// 0 = Send the message to the following locations: Operator console log file, InterSystems IRIS console.<br>
/// 1 = Send the message to the following locations: Operator console log file, InterSystems IRIS console,
/// System-wide operator console facility.<br>
///
ClassMethod Broadcast(terminal As %String, message As %String, level As %Integer = 0) As %Status
{
}

/// The SetFFBS class method specifies the form feed or backspace
/// control code sequence used by printers.<br>
/// <br>
/// Parameters<br>
/// ff : The new value for the form feed control code sequence.
/// If omitted, the system default, as defined for Device 0,
/// is used.  May not be omitted if the bs parameter is present.<br>
/// bs : The new value for the backspace control code sequence.
/// If omitted, the system default, as defined for
/// Device 0, is used.<br>
/// <br>
/// Description<br>
/// This function is used to change the form feed and backspace control
/// code sequences.<br>
/// SetFFBS(ff,bs) sets form feed control sequence to ff and backspace
/// control sequence to bs.<br>
/// SetFFBS(ff) sets form feed control sequence to ff and backspace
/// control sequence to system default.<br>
/// SetFFBS() sets the printer form feed and backspace control
/// sequences to system default.<br>
///
ClassMethod SetFFBS(ff As %String, bs As %String) As %Status
{
}

/// The ReDirectIO() class method returns the status of the I/O
/// redirection switch for the current device.<br>
/// <br>
/// The ReDirectIO(n) class method sets the I/O redirection
/// switch for the current device according to the boolean value n.
/// It returns the previous setting of this switch.<br>
///
ClassMethod ReDirectIO(n As %Boolean) As %Boolean
{
}

/// The ChangePrincipal() class method makes the current device (last
/// device specified in a USE command) be the principal I/O
/// device (referenceable by USE 0 or USE $PRINCIPAL.) This method
/// makes the current device the principal I/O device, while leaving
/// the former principal I/O device open, and thus capable of being
/// used explicitly by name.<br>
/// <br>
/// ChangePrincipal() takes no arguments. It returns 1 on success,
/// 0 on failure.<br>
///
ClassMethod ChangePrincipal() As %Status
{
}

/// The InstalledPrinters() class method returns the number of printers
/// currently installed on your system, counting from 1.<br>
/// <br>
/// The InstalledPrinters(n) method, where 1 <= n <= InstalledPrinters(),
/// returns the pathname of the printer currently installed on your
/// system that corresponds to n. The system counts printers from 1, and
/// assigns a sequential integer to each. If n is a number that does
/// not correspond to a printer, the system issues a <FUNCTION> error.<br>
///
ClassMethod InstalledPrinters(n As %Integer) As %DataType
{
}

}
