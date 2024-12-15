/// Utility container for the management of cube versions
Class %DeepSee.CubeVersion.Utils Extends %RegisteredObject
{

Parameter DEPRECATED = "deprecated";

Parameter ACTIVE = "active";

Parameter PENDING = "pending";

/// If a cube has different versions, get the name of the version currently active given the reference name <var>pCubeGenericName</var>.
/// If a cube does not use cube versioning this will return the upper-case cube index.
ClassMethod %GetVersionedCubeName(pCubeGenericName As %String = "", pVersion As %Integer = "", pSC As %Status) As %String
{
}

/// If a cube has different versions, get the reference name given a version name <var>pCubeName</var>.
/// If the cube was not produced using cube versioning this will return the upper-case cube index.
ClassMethod %GetGenericCubeName(pCubeVersionName As %String = "", pSC As %Status) As %String
{
}

ClassMethod %ActivatePendingCubeVersion(pCubeGenericName As %String, pRemoveDeprecated As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// Mark a cube version as deprecated. Once deprecated, a version is ready for removal.
ClassMethod %DeprecateCubeVersion(pCubeGenericName As %String = "", pVersion As %Integer) As %Status
{
}

/// Completely remove all components of a cube version from the system. This cannot be performed on a cube version marked "active".
ClassMethod %RemoveCubeVersion(pCubeGenericName As %String = "", pVersion As %Integer) As %Status
{
}

/// Return the active version number for <var>pCubeGenericName</var>
ClassMethod %GetActiveCubeVersion(pCubeGenericName As %String) As %Integer
{
}

/// Return the pending version number for <var>pCubeGenericName</var>. An empty string indicates there is no pending version.
ClassMethod %GetPendingCubeVersion(pCubeGenericName As %String = "") As %String
{
}

/// Given the generic name of a versioned cube, collect the list of deprecated versions currently on the system.
ClassMethod %GetDeprecatedVersionList(pCubeGenericName As %String = "", ByRef pList) As %Status
{
}

/// Return the current promotion status of version <var>pVersion</var> the cube <var>pCubeGenericName</var>.
ClassMethod %GetCubeVersionStatus(pCubeGenericName As %String, pVersion As %Integer) As %String
{
}

/// It is valid to manually write a cube logical name that can look like a version when it is not.
/// Verify the cube name entered in <var>pCubeName</var> is a true version of a generic cube definition.
/// Optionally return the decomposition of the original cube name into its genericName and version parts.
/// If a non-versioned cube is entered as <var>pCubeName</var>, then:<br>
///  <var>pCubeGenericName</var> = <var>pCubeName</var>
///  <var>pVersion</var> = ""
ClassMethod %IsVersion(pCubeName As %String, Output pCubeGenericName, Output pVersion) As %Boolean
{
}

/// Test whether the current cube <var>pCubeVersionName</var> is the active version.
ClassMethod %IsActiveVersion(pCubeVersionName As %String) As %Boolean
{
}

/// Test whether the current cube <var>pCubeVersionName</var> is the pending version.
ClassMethod %IsPendingVersion(pCubeVersionName As %String) As %Boolean
{
}

/// Test whether the current cube <var>pCubeVersionName</var> is deprecated.
ClassMethod %IsDeprecatedVersion(pCubeVersionName As %String) As %Boolean
{
}

/// Performs the actual work of marking a specific version as the active version that will be used when
/// the generic name <var>pCubeGenericName</var> is used. This will remove the "active" flag from any other
/// version of <var>pCubeGenericName</var>.
ClassMethod %SetActiveCubeVersion(pCubeGenericName As %String, pVersion As %Integer) As %Status [ Internal ]
{
}

/// Performs the actual work of marking a specific version as the pending version for the cube <var>pCubeGenericName</var>.
/// This will remove the "pending" flag from any other version of <var>pCubeGenericName</var>.
ClassMethod %SetPendingCubeVersion(pCubeGenericName As %String, pVersion As %Integer) As %Status [ Internal ]
{
}

/// Performs the actual work of storing the current promotion status of version <var>pVersion</var> for the cube <var>pCubeGenericName</var>.
/// This will only accept valid status strings: "active","pending","deprecated".
ClassMethod %SetCubeVersionStatus(pCubeGenericName As %String, pVersion As %Integer, pNewCubeStatus As %String) As %Status [ Internal ]
{
}

/// Kill all active tasks for a cube. This is used just before activating a pending cube to clear any queries that are running.
ClassMethod %KillTasksForCube(pCubeName As %String) [ Internal ]
{
}

/// <b>Called by the %GetModel generator - do not call this directly</b>.<br>
/// Create a new definition class for a cube which contains a copy of the cube definition class currently being compiled. The new class
/// will have the name <br><br>
/// &lt<var>pClassName</var>&gt.Version&lt<var>pCube.version</var>&gt <br><br>
/// The <var>pClassName</var> must be the name of a cube definition class with the parameter <parameter>USECUBEVERSIONS</parameter>=1 and
/// the corresponding cube model <var>pCube</var> must be the cube defined in that class. Additionally, <var>pCube</var> must have the "version"
/// attribute set to a valid integer value. <br><br>
/// The generated model will have <parameter>USECUBEVERSIONS</parameter> and version attributes removed to prevent recursion in the compiler. The
/// <var>pCube</var> object is unchanged after this call.
ClassMethod %CreateCubeVersionDefinition(pClassName As %String = "", pCube As %DeepSee.Model.cube, Output pNewClassName, Output pNewCubeIndex) As %Status [ Internal ]
{
}

}
