/// Whitelist facility to selectively restrict web access to [ZenMethod]
/// calls.  The whitelist in question is namespace specific.  This allows
/// system administrators to configure the visibility of system level
/// calls based upon from whence the call originated. <p />
/// The whitelist is checked when a callback first attempts to call either
/// an instance or class method that has previously been compiled with a
/// [ZenMethod] tag.  This check is only done when the request comes in
/// from the client, purely internal invocations of the methods are not
/// restricted.<p />
/// If whitelisting is enabled for the namespace, for a given method to be
/// called, it must be enabled in the whitelist.  Methods that are explicitly
/// disabled or simply not listed in the whitelist are rejected and an
/// exception is thrown<p />
/// <b>How to Set-up and Enable Whitelisting:</b><p/>
/// The call <br/>
/// <code>Do ##class(%CSP.WhitelistUtils).%InitializeWhitelist()</code><br />
/// will scan the current namespace for all defined or inherited [ZenMethod]
/// functions.  Each function discovered will be added to the whitelist and
/// enabled by default (this is done for backwards compatibility).  If a
/// previous whitelist has been defined, this call will reinitialize it.  The
/// newly minted whitelist will not yet be active (and if whitelisting was
/// previsously active, it will be turned off until the new list has been
/// approved. <b>Note:</b> Depending on the size and complexity of the class
/// dictionary in the current namespace, this method may take several seconds
/// to complete<p />
/// The default initial list may be edited using the following two routines:<p />
/// <code>Do ##class(%CSP.WhitelistUtils).%EnableMethod(myClass,myMethod)</code><br />
/// <code>Do ##class(%CSP.WhitelistUtils).%DisableMethod(myClass,myMethod)</code><p />
/// The first adds or edits a given entry, approving it for general access.  The
/// second explicitly bars web applications from calling the method in question.<p />
/// To approve the current whitelist for use and start enforcing the new policy, call:<br />
/// <code> Do ##class(%CSP.WhitelistUtils).%ActivateWhitelist()</code><p />
/// To temporarily disable whitelisting without reconfiguring the whitelist itself, call:<br />
/// <code> Do ##class(%CSP.WhitelistUtils).%DeactivateWhitelist()</code><p />
/// To see if whitelisting is active for the namespace, call:<br />
/// <code>Write ##class(%CSP.WhitelistUtils).%IsWhitelistEnabled()</code><p />
/// To query the individual entries of the whitelist, call:<br />
/// <code>Write ##class(%CSP.WhitelistUtils).%IsMethodEnabled(myClass,myMethod)</code><p />
/// Attempts to create, edit or change the activity status of the whitelist
/// require <b>Admin_Secure:USE</b> privilege.  Queries to inspect the whitelist or
/// its status are not so restricted.
Class %CSP.WhitelistUtils [ Abstract, Final, System = 3 ]
{

Parameter WHITELIST As STRING [ Final, Internal ] = "^ISCMethodWhitelist";

/// Search the named class for the methods matching the search criteria
/// Return an AET consisting of the name of the class searched (class)
/// and an array (methods) of all names of methods matching the criteria
/// or "" if no methods matching the criteria are found
ClassMethod SelectSearchNodes(className As %String, ref As %String, criteria As %DynamicObject) As %DynamicObject [ Internal ]
{
}

/// Get an array of matching classname hits based on a search pattern,
/// a classname pattern, and assorted flags
ClassMethod SelectTargetClasses(PatternList As %String = "*.cls", System As %Boolean = 0, Max As %Integer = 20000) As %DynamicArray [ Internal ]
{
}

/// Build an object, organized by classname, for all the ZenMethods
/// found in the current namespace.
ClassMethod IdentifyZenMethods(aet) As %DynamicObject [ Internal ]
{
}

ClassMethod CommitWhitelist(aet As %DynamicArray) [ Internal ]
{
}

/// Validate that the user has appropriate access.
ClassMethod CheckSecurity() As %Boolean [ Internal ]
{
}

/// This method identifies (and tags as approved) all methods tagged as
/// ZenMethod callbacks in the current namespace.  This data is used to
/// build the initial whitelist.  This list may then be edited (using the
/// methods found here) as needed.  This call does <b>NOT</b> activate the
/// use of the whitelist.  That is done by a separate call
/// (%ActivateWhitelist) once the whitelist has been configured to the
/// site administrators' satisfaction.<br />
/// If a previous version of the whitelist was in place, this call will
/// overwrite its settings in favor of a fresh scan and will mark the list
/// as inactive pending approval.
ClassMethod %InitializeWhitelist() As %Status
{
}

/// Turn on the use of the whitelist for the current namespace.
/// When activated, all web callbacks to zenMethods will be tested against
/// the whitelist.  Any method that is either missing or set to false (0)
/// will be disallowed.  Methods set to true (1) in the whitelist will be
/// allowed to execute according to normal role and privilege restrictions.
ClassMethod %ActivateWhitelist() As %Status
{
}

/// Turn off (but do not otherwise alter) the use of the whitelist for
/// the current namespace.  When deactivated, all web callbacks to
/// zenMethods will be permitted according to normal role and privilege
/// restrictions.
ClassMethod %DeactivateWhitelist() As %Status
{
}

/// Tag a given member of the whitelist as false (meaning do not execute).
/// The entry remains in the whitelist.
ClassMethod %DisableMethod(pClass As %String, pMethod As %String) As %Status
{
}

/// Tag a given member of the whitelist as true (meaning ok to execute).
/// When the whitelist is active, a method must both appear in the whitelist
/// and be set to true in order for the method to be called from a web
/// access point.
ClassMethod %EnableMethod(pClass As %String, pMethod As %String) As %Status
{
}

/// Test to see if whitelist checking is enabled for this namespace
ClassMethod %IsWhitelistEnabled() As %Boolean
{
}

/// Test to see if the given method call should be allowed under the
/// current whitelist policy
ClassMethod %IsMethodEnabled(pClass As %String, pMethod As %String) As %Boolean
{
}

}
