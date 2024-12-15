/// This class provides various product version information.
///
/// <p>You can use it via the special <b>$system</b> object:
/// <example>
/// Write $system.Version.GetBuildOS()
/// </example>
Class %SYSTEM.Version Extends Help [ Abstract, System = 3 ]
{

/// Formats the version info according to the following format types:
/// <ul>
/// <li>0 - $ZV</li>
/// <li>1 - Product</li>
/// <li>2 - Product (Platform)</li>
/// <li>3 - Product (Platform) Version</li>
/// <li>4 - Product (Platform) Version (Build)</li>
/// <li>5 - Version (Build)</li>
/// <li>Other - ""</li>
/// </ul>
ClassMethod Format(Format As %Numeric = 0, zv As %String = {$zv}) As %String
{
}

/// Returns the build number for the product.
ClassMethod GetBuildNumber(zv As %String = {$zv}) As %Integer
{
}

/// Returns the date the product was built in $HOROLOG format.
ClassMethod GetBuildDate(zv As %String = {$zv}) As %String
{
}

/// Returns the operating system for which the product was built.
ClassMethod GetBuildOS(zv As %String = {$zv}) As %String
{
}

/// Returns the time of day the product was built in $HOROLOG format.
ClassMethod GetBuildTime(zv As %String = {$zv}) As %String
{
}

/// Return a %List of Component:Version for all components of ISC Product.<br>
/// At this time, InterSystems IRIS does not have components, so this method does not return anything for this product.
ClassMethod GetISCComponentVersionList(Product As %Integer = 0) As %List
{
}

///  Returns the installed components for the ISC Product as a %List.<br>
///  Product:  HealthShare = 3, InterSystems IRIS = 4<br>
///  At this time, InterSystems IRIS does not have components, so this method does not return anything for this product.
ClassMethod GetISCComponents(Product As %Integer = {..GetISCProduct()}) As %List
{
}

///  Returns the ISC Product component's installed version string.<br>
///  Product:  HealthShare = 3, InterSystems IRIS = 4<br>
///  At this time, InterSystems IRIS does not have components, so this method does not return anything for this product.
ClassMethod GetISCComponentVersion(Product As %Integer = {..GetISCProduct()}, Component As %String = "") As %String
{
}

///  Returns the installed ISC product code.
///  HealthShare = 3, InterSystems IRIS = 4
ClassMethod GetISCProduct() As %Integer
{
}

/// Displays all Components for the ISC Product to the current I/O Device.<br>
/// Product:  HealthShare = 3, InterSystems IRIS = 4<br>
/// At this time, InterSystems IRIS does not have components, so this method does not return anything for this product.
ClassMethod ListISCComponents(Product As %Integer = {..GetISCProduct()})
{
}

/// Displays all Components:Version for the ISC Product to the current I/O Device.<br>
/// Product:  HealthShare = 3, InterSystems IRIS = 4<br>
/// At this time, InterSystems IRIS does not have components, so this method does not return anything for this product.
ClassMethod ListISCComponentsVersions(Product As %Integer = {..GetISCProduct()})
{
}

/// Returns the patch ID[s] included in this version of the product;
ClassMethod GetPatchId(zv As %String = {$zv}) As %String
{
}

/// Returns the major version number for the product.
ClassMethod GetMajor(zv As %String = {$zv}) As %String
{
}

/// Returns the minor version number for the product.
ClassMethod GetMinor(zv As %String = {$zv}) As %String
{
}

/// Returns the major.minor[.point] version number for the product.
ClassMethod GetNumber(zv As %String = {$zv}) As %String
{
}

/// Returns the OS for which the product was built.
ClassMethod GetOS(zv As %String = {$zv}) As %String
{
}

/// Returns the platform for which the product was built.
ClassMethod GetPlatform(zv As %String = {$zv}) As %String
{
}

/// Returns the point version number for the product.
ClassMethod GetPoint(zv As %String = {$zv}) As %String
{
}

/// Returns the product name.
ClassMethod GetProduct(zv As %String = {$zv}) As %String
{
}

/// Returns a string containing complete version information.
ClassMethod GetVersion(zv As %String = {$zv}) As %String [ CodeMode = expression ]
{
}

/// Is this a 64-bit platform?
/// <p>Returns a boolean value which tells if the
/// kernel is 64-bit platform.
ClassMethod Is64Bits() As %Boolean
{
}

/// Is this system built for a big endian platform?
/// <p>Returns a boolean value which tells if the
/// platform uses big endian bit ordering.
ClassMethod IsBigEndian() As %Boolean
{
}

/// Is this a single-user server kit?
/// <p>Returns a boolean value which tells if the
/// product server is running a single-user evaluation (_SU) kit.
ClassMethod IsSingleUser() As %Boolean
{
}

/// Is this a UNICODE system?
/// <p>Returns a boolean value which tells if the
/// product server is a UNICODE system.
ClassMethod IsUnicode() As %Boolean
{
}

/// Return all the feature codes stored in $zversion(0)
/// <p>You can then test this for specific features using
/// $zbitget(return,bit)<p>
/// If you pass in a value for <var>bit</var> then this
/// will test for this specific bit and return 1 if it
/// is set otherwise 0.
ClassMethod FeatureBits(bit As %Integer = "") As %Binary
{
}

/// Returns the build number for the specified component. (Deprecated)
ClassMethod GetCompBuild(component As %String = "SYS") As %Integer [ Deprecated ]
{
}

/// Returns the build date for the specified component. (Deprecated)
ClassMethod GetCompBuildDate(component As %String = "SYS") As %String [ Deprecated ]
{
}

/// Returns the operating system a product component was built for. (Deprecated)
ClassMethod GetCompBuildOS(component As %String = "SYS") As %String [ Deprecated ]
{
}

/// Returns the Time of build for a product component. (Deprecated)
ClassMethod GetCompBuildTime(component As %String = "SYS") As %String [ Deprecated ]
{
}

/// Returns the patch ID[s] included in a component of this version of the product (Deprecated)
ClassMethod GetCompPatchId(component As %String) As %String [ Deprecated ]
{
}

/// Returns a list of components used by the %Version class. (Deprecated)
ClassMethod GetComponents() As %List [ Deprecated ]
{
}

/// Returns the major.minor version number of the language compiler.
/// <p>The system can only execute object code compiled with the same
/// major version number.  It can execute object code compiled with any
/// minor version number that is less than or equal to the current
/// minor version.
ClassMethod GetCompilerVersion() As %Numeric
{
}

/// Returns the major version number of the language compiler.
ClassMethod GetCompilerMajorVersion() As %Numeric
{
}

/// Returns the minor version number of the language compiler.
ClassMethod GetCompilerMinorVersion() As %Numeric
{
}

/// Returns the version of the C compiler used to build the kernel
ClassMethod GetKernelCompiler() As %String
{
}

/// Returns the version of the Linker used to link the kernel
ClassMethod GetKernelLinker() As %String
{
}

/// Returns the string identifying who linked the kernel
/// <p>InterSystems or User
ClassMethod GetKernelOrigin() As %String
{
}

/// The SystemMode string is usually set by the System Management Portal but it
/// can also be set by calling the $SYSTEM.Version.SystemMode(mode) method.
/// The currently supported SystemMode strings are:  "LIVE", "TEST",
/// "DEVELOPMENT" and "FAILOVER".
/// The SystemMode of the current instance is displayed in the Title of the System
/// Management Portal web page.  Attempting to set a nonsupported SystemMode
/// string will clear out the currently set SystemMode.
/// <p>
/// <b>Parameters</b>
/// <p>
/// <b>mode</b> -- The new SystemMode string for the current instance
/// <p>
/// Invoking $SYSTEM.Version.SystemMode() without specifiying the mode
/// parameter returns the current SystemMode string without changing it.
/// <p>
/// <b>Return value</b> -- the SystemMode value prior to calling the
/// $SYSTEM.Version.SystemMode method.  Returns the empty string when
/// a SystemMode has not been previously set.
ClassMethod SystemMode(mode As %String) As %String
{
}

}
