/// WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class.
/// <br><br><br>
/// Edit/Modify an existing LDAP Entry
/// <P>The following shows an example of editting an entry:</P>
/// <EXAMPLE>
///     Set err=""
///     Set session=##class(%Net.LDAP.Client.Session).%New()
///     Set DC="DC=testldap,DC=com"
///     Set c=session.Connect("lx2",0,"CN=admin,"_DC,"password", 0)
///     If ($$$ISERR(c)) {
///         Do DecomposeStatus^%apiOBJ(c,.err)
///         Write "Failed to connect : err : ", err(err),!
///         Quit
///     }
///     Write "Connected to (",DC,")",!
///
///     ;; Create a test entry
///     ;; Build attributes to be added to the entry
///     Set p=session.GetPropList()
///     Set c=p.Insert("objectclass","organizationalRole") w:(c'=$$$OK) "objclass attrib insert failed!!",!
///     Set cn="test4"
///     Set c=p.Insert("cn",cn) w:(c'=$$$OK) "cn attrib insert failed!!",!
///     Set DN="cn="_cn_","_DC
///     Set c=session.AddNewEntry(DN,p)
///     If ($$$ISERR(c)) {
///         Do DecomposeStatus^%apiOBJ(c,.err)
///         Write "Failed to add/create a new entry(",DN,") : err : ", err(err),!
///     } else {
///         Write "Entry added (",DN,")",!
///     }
///     ;; Edit/Modify DN
///     s ed=session.EditEntry(DN)
///     ;; Modifiy "description" attrib with multiple value
///     s mv=session.GetValueList()
///     s c=mv.Insert("Modified for testing!!") w:(c'=$$$OK) "1- multi value insert failed!!",!
///     s:('$$$ISERR(c)) c=mv.Insert("Last updated - "_$zdt($ztimestamp)) w:(c'=$$$OK) "2- multi value insert failed!!",!
///     ;; Queue an add of a multi-value "description" attrib,
///     ;; and replace "postaladdress" attrib value
///     s:('$$$ISERR(c)) c=ed.Add("description",mv)
///     s:('$$$ISERR(c)) c=ed.Replace("postalAddress","123 - New addr")
///     if ($$$ISERR(c)) {
///         d DecomposeStatus^%apiOBJ(c,.err)
///         W "--- Failed to edit DN(",DN,") : err : ", err(err),!
///     } else {
///         w "Edits Q-ed ok!!",!
///     }
///     ;; Commit the edits
///     s c=ed.Commit()
///     if ($$$ISERR(c)) {
///         d DecomposeStatus^%apiOBJ(c,.err)
///         W "--- Failed to commit DN(",DN,") changes : err : ", err(err),!
///     } else {
///         w "Committed ok!!",!
///     }
///     ;; Display the changes
///     ;; Get all "ObjectClass", "postalAddress", "description", and "cn" in DC
///     ;; build a list of desired attributes
///     Set sl=session.GetStringList()
///     Do sl.InsertStr("ObjectClass","cn","postalAddress","description")
///     Set session.MaxItems=100  ;; specify max number of results
///     Set ents=session.Search(DC,scope, "(ObjectClass=*)",sl,1000)
///     If ('$IsObject(ents)) {
///         Do DecomposeStatus^%apiOBJ(ents,.err)
///         Write "Search failed : err : ", err(err),!
///     } else {
///         Write !,"Search result:",!
///         Set count=0
///         Set entDN=""
///         For  { ; iterate through returned entries
///            Set ent=ents.GetNext(.entDN)
///            Quit:(entDN="")
///            Set count=count+1
///            Write "  ",count," - Entry(",entDN,")",!
///            if ($IsObject(ent)) {
///               Set attrNM=""
///               For  { ; iterate through each attribute of an entry
///                  Set val=ent.GetNext(.attrNM)
///                  Quit:(attrNM="")
///                  Write "       Ent(",entDN,"), attr(",attrNM,")",!
///                  ;; iterate through values associated with each attribute
///                  For i=1:1:val.GetNumItems() {
///                     Write "         ",i," - Value(",val.GetValue(i),")",!
///                  }
///               }
///            } else {
///               Quit  ;; list end
///            }
///         }
///         Write !,"Search done!! Count == ",count,!
///     }
///     Set c=session.DeleteEntry(DN)
///     If ($$$ISERR(c)) {
///         Do DecomposeStatus^%apiOBJ(c,.err)
///         Write "Failed to delete entry(",DN,") : err : ", err(err),!
///     } else {
///         Write "Delete entry (",DN,")",!
///     }
/// </EXAMPLE>
Class %Net.LDAP.Client.EditEntry Extends %RegisteredObject [ ServerOnly = 1, System = 4 ]
{

/// Entry DN
Property DN As %String [ Internal ];

/// Parent Session
Property Parent As Session [ Internal ];

/// Q of pending changes
/// $char of instruction, args.
/// See LDAPCli.inc kEdit* macros
Property Q As %Net.LDAP.Client.PropList [ Internal ];

/// Remove an attribute value.
/// <p><b>attribute</b> Attribute to change</p>
/// <p><b>value</b> Value to be deleted</p>
/// <p>The value could be string, stream, or a binary blub </p>
/// <p>If no value is provided, it will remove the attribute and all values<p>
/// <p>This change is committed by the <b>Commit</b> method </p>
Method Remove(attribute As %String, value As %RawString = "", binary As %Boolean = 0) As %Status
{
}

/// Replace an attribute value.
/// <p><b>attribute</b> Attribute to change</p>
/// <p><b>value</b> New value of the attribute</p>
/// <p>The value could be string, stream, or a binary blub</p>
/// <p>If attribute doesn't exist in the entry, the attribute will be added<p>
/// <p>This change is committed by the <b>Commit</b> method </p>
Method Replace(attribute As %String, value As %RawString, binary As %Boolean = 0) As %Status
{
}

/// Add a value to an attribute.
/// <p><b>attribute</b> Attribute to change</p>
/// <p><b>value</b> New value</p>
/// <p>The value could be string, stream, or a binary blub </p>
/// <p>If attribute doesn't exist in the entry, the attribute will be added<p>
/// <p>This change is committed by the <b>Commit</b> method </p>
Method Add(attribute As %String, value As %RawString, binary As %Boolean = 0) As %Status
{
}

/// Commit the changes.
/// <p>Applies the pending changes. On success, resets/clears the change list.</p>
Method Commit() As %Status
{
}

ClassMethod Test(testnum As %Integer = 0, scope As %Net.LDAP.Client.Search.Scope = 2) As %Status [ Internal ]
{
}

}
