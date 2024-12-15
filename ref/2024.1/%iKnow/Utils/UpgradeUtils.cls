/// This class allows users to upgrade a domain created in an older version of InterSystems IRIS to
/// the latest version, enabling all new features available in this current version.
Class %iKnow.Utils.UpgradeUtils Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// <p>This method will upgrade a domain from a previous iKnow data structure version to
/// the latest version and take advantage of the new features available in this newer version.</p>
/// <p>This operation involves <b>re-indexing</b> all sources currently
/// in the domain into a new one and therefore requires appropriate storage capacity
/// for the duration of the upgrade process. The data will be read as it is stored in the
/// current domain, which means the original files, tables or other sources of information
/// do not have to be accessible, but also the upgraded domain will automatically incorporate
/// any changes made by using User Dictionaries as part of their initial load. See also
/// <class>%iKnow.Utils.CopyUtils</class>.</p>
/// <p>Please note the upgraded domain will have a new domain ID, but still has the same name
/// as the old domain, which is dropped automatically based on the value of <var>pDropOldDomain</var>.
/// Also, while any external identifiers in the new domain will be exactly the same as in the
/// old domain, some internal IDs might differ.</p>
/// <p>If <var>pLockOldDomain</var> is 1, no sources can be added to the domain while the upgrade process
/// is running. Otherwise, if <var>pPickupNewSources</var> is set to 1, any <i>new sources</i> added to the old
/// domain while the upgrade process was running will be copied to the new domain as well. This
/// does not include any source deletions or updates made to metadata of existing sources.</p>
/// <p>While a domain upgrade process is running, no other domain elements such as
/// dictionaries and black lists can be added, removed or updated.</p>
/// <p>If required, a specific iKnow Configuration name (cf <class>%iKnow.Configuration</class>)
/// can be supplied through <var>pUseConfiguration</var> to use while re-indexing the data.
/// If this parameter is left blank (default), the default configuration of the original domain
/// (configured using the $$$IKPDEFAULTCONFIG domain parameter) or $$$DEFAULTCONFIG will be
/// used.</p>
/// <p>The <var>pRename</var> argument identifies whether the old domain should be renamed
/// to "[domain name] - archived" (if <var>pRename</var>="OLD") with the newly created
/// (upgraded) one getting the existing domain name, or vice versa, with the old domain
/// retaining its name and the new one being renamed to "[domain name] - upgraded" (if
/// <var>pRename</var>="NEW"). In either case, an integer might be added to the new name
/// to prevent duplicate domain names if another domain would already carry that name.</p>
/// <p>Please read the output produced by this utility method carefully.</p>
ClassMethod UpgradeDomain(pDomainId As %Integer, pDropOldDomain As %Boolean = 0, pLockOldDomain As %Boolean = 1, pPickupNewSources As %Boolean = 0, pUseConfiguration As %String = "", pRename As %String(VALUELIST="OLD,NEW") = "OLD", Output pUpgradedDomainId As %Integer = 0) As %Status
{
}

/// Internal method called by STU.mac when the system starts.
/// This method performs post-install operations when all databases are mounted.
ClassMethod %OnSystemStartup(pFirstSinceInstall As %Boolean = 0, pIsPrimary As %Boolean = 1) As %Status [ Internal ]
{
}

}
