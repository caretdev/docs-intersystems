Class %SYSTEM.SQL.Security Extends %SYSTEM.Help [ Abstract, Not ProcedureBlock, System = 4 ]
{

/// Check if user has SQL privilege for a particular action. This does not check grant privileges.
/// <br><br>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>Username</i>
/// <dd>Name of the user to check.  Required.
/// <dt><i>ObjectType</i>
/// <dd>Required. Specifies the type to check the privilege of. ObjectTypes are 1 (table), 3 (view), 5 (schema), 6 (ml configuration), 7 (foreign server), 9 (procedure).
/// <dt><i>Object</i>
/// <dd>Required. The name the object to check the privilege of.
/// <dd>For example, ObjectType and Object could be "1" and "Sample.Person", or "9" and "SQLUser.My_Procedure".
/// <dt><i>Action</i>
/// <dd>Comma delimited string of actions letters to check privileges for.  Actions are one or more of the
/// letters "a,s,i,u,d,r,e,l" (in any order) which stands for ALTER,SELECT,INSERT,UPDATE,DELETE,REFERENCES,EXECUTE,USE (USE for ML Configurations/Foreign Server).
/// Privilege "e" is only allowed for Procedures.  Privilege "l" is only allowed for ML Configurations and Foreign Servers. CheckPrivilege will only return 1 if the user has privileges on all Actions specified.  Required.
/// <dt><i>Namespace</i>
/// <dd>Namespace object resides in (optional) default is current namespace
/// </dl>
/// <p><b>Returns</b>:
/// <li>1 - if the Username does have the privilege</li>
/// <li>0 - if the Username does not have the privilege</li>
/// <li>%Status - if CheckPrivilege call is reporting an error</li>
/// <p><b>Notes:</b>
/// <li>If Username is a user with the %All role, CheckPrivilege will return 1 even if the Object does not exist.
/// <li>If the user calling CheckPrivilege is not the same as Username, the calling user must hold the %Admin_Secure:"U" privilege.
/// <p><b>Example</b>:
/// <ul>
/// <li>Do $SYSTEM.SQL.Security.CheckPrivilege("Miranda",3,"SQLUser.Person","s","PRODUCT")</li>
/// </ul>
ClassMethod CheckPrivilege(Username As %String, ObjectType As %Integer, Object As %String, Action As %String, Namespace As %String = "") As %Boolean
{
}

/// Check if user has SQL grant privilege for a particular action.
/// <br><br>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>Username</i>
/// <dd>Name of the user to check.  Required.
/// <dt><i>ObjectType</i>
/// <dd>Required. Specifies the type to check the grant privilege of. ObjectTypes are 1 (table), 3 (view), 5 (schema), 6 (ml configuration), 7 (foreign server), 9 (procedure).
/// <dt><i>Object</i>
/// <dd>Required. The name the object to check the grant privilege of.
/// <dd>For example, ObjectType and Object could be "1" and "Sample.Person", or "9" and "SQLUser.My_Procedure".
/// <dt><i>Action</i>
/// <dd>Comma delimited string of actions letters to check grant privileges for.  Actions are one or more of the
/// letters "a,s,i,u,d,r,e,l" (in any order) which stands for ALTER,SELECT,INSERT,UPDATE,DELETE,REFERENCES,EXECUTE,USE (USE for ML Configurations/ForeignServers).
/// Privilege "e" is only allowed for Procedures.  Privilege "l" is only allowed for ML Configurations and Foreign Servers. CheckPrivilegeWithGrant will only return 1 if the user has grant privileges on all Actions specified.  Required.
/// <dt><i>Namespace</i>
/// <dd>Namespace object resides in (optional) default is current namespace
/// </dl>
/// <p><b>Returns</b>:
/// <li>1 - if the Username does have the privilege</li>
/// <li>0 - if the Username does not have the privilege</li>
/// <li>%Status - if CheckPrivilegeWithGrant call is reporting an error</li>
/// <p><b>Notes:</b>
/// <li>If Username is a user with the %All role, CheckPrivilegeWithGrant will return 1 even if the Object does not exist.
/// <li>If the user calling CheckPrivilegeWithGrant is not the same as Username, the calling user must hold the %Admin_Secure:"U" privilege.
/// <p><b>Example</b>:
/// <ul>
/// <li>Do $SYSTEM.SQL.Security.CheckPrivilegeWithGrant($username,1,"HHR.ProductionValues","s,i,u,d","USER")</li>
/// </ul>
ClassMethod CheckPrivilegeWithGrant(Username As %String, ObjectType As %Integer, Object As %String, Action As %String, Namespace As %String = "") As %Boolean
{
}

/// GrantPrivilege lets you grant an <i>ObjPriv</i> to a <i>User</i> via this call instead of using the SQL GRANT statement.
/// This does not include grant privileges.
/// <p>
/// $SYSTEM.SQL.Security.GrantPrivilege(<i>ObjPriv</i>,<i>ObjList</i>,<i>Type</i>,<i>User</i>)<br>
/// <dl>
///   Parameters:
/// <p>
/// <dt><i>ObjPriv</i>
/// <dd>Comma delimited string of actions to grant. * for all actions:<br>
/// <ul>
/// <li>Alter</li>
/// <li>Select</li>
/// <li>Insert</li>
/// <li>Update</li>
/// <li>Delete</li>
/// <li>References</li>
/// <li>Execute</li>
/// <li>Use</li>
/// <li>or any combination</li>
/// </ul>
/// <dt><i>ObjList</i>
/// <dd> * for all objects, else a comma delimited list of SQL object names (tables, views, procedures, schemas). The specified schemas cannot be empty. <br>
/// <dt><i>Type</i>
/// <dd> Table, View, Schema, Stored Procedures, ML Configuration, or Foreign Server<br>
/// <dt><i>User</i>
/// <dd> Comma delimited list of users<br>
ClassMethod GrantPrivilege(ObjPriv As %String, ObjList As %String, Type As %String, User As %String) As %Status [ ProcedureBlock = 1, PublicList = SQLCODE ]
{
}

/// GrantPrivilegeWithGrant lets you grant an <i>ObjPriv</i>, WITH GRANT OPTION, to a <i>User</i>
/// <p>
/// $SYSTEM.SQL.Security.GrantPrivilegeWithGrant(<i>ObjPriv</i>,<i>ObjList</i>,<i>Type</i>,<i>User</i>)<br>
/// <dl>
///   Parameters:
/// <p>
/// <dt><i>ObjPriv</i>
/// <dd>Comma delimited string of actions to grant. * for all actions:<br>
/// <ul>
/// <li>Alter</li>
/// <li>Select</li>
/// <li>Insert</li>
/// <li>Update</li>
/// <li>Delete</li>
/// <li>References</li>
/// <li>Execute</li>
/// <li>Use</li>
/// <li>or any combination</li>
/// </ul>
/// <dt><i>ObjList</i>
/// <dd> * for all objects, else a comma delimited list of SQL object names (tables, views, procedures, schemas). The specified schemas cannot be empty. <br>
/// <dt><i>Type</i>
/// <dd> Table, View, Schema, Stored Procedure, ML Configuration, or Foreign Server<br>
/// <dt><i>User</i>
/// <dd> Comma delimited list of users<br>
ClassMethod GrantPrivilegeWithGrant(ObjPriv As %String, ObjList As %String, Type As %String, User As %String) As %Status [ ProcedureBlock = 1, PublicList = SQLCODE ]
{
}

/// Wrapper around GrantPrivilege() and GrantPrivilegeWithGrant() to support
/// declarative syntax in CPF Actions
ClassMethod GrantOne(ByRef Properties As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// RevokePrivilege lets you revoke an <i>ObjPriv</i> from a <i>User</i> via this call instead of using the SQL REVOKE statement
/// <p>
/// $SYSTEM.SQL.Security.RevokePrivilege(<i>ObjPriv</i>,<i>ObjList</i>,<i>Type</i>,<i>User</i>,<i>wGrant</i>,<i>Cascade</i>,<i>AsGrantor</i>)<br>
/// <dl>
///   Parameters:
/// <p>
/// <dt><i>ObjPriv</i>
/// <dd>Comma delimited string of actions to grant. * for all actions:<br>
/// <ul>
/// <li>Alter</li>
/// <li>Select</li>
/// <li>Insert</li>
/// <li>Update</li>
/// <li>Delete</li>
/// <li>References</li>
/// <li>Execute</li>
/// <li>Use</li>
/// <li>or any combination</li>
/// </ul>
/// <dt><i>ObjList</i>
/// <dd> * for all objects, else a comma delimited list of SQL object names (tables, views, procedures, schemas)<br>
/// <dt><i>Type</i>
/// <dd> Table, View, Schema, ML Configuration, Foreign Server, or Stored Procedures<br>
/// <dt><i>User</i>
/// <dd> Comma delimited list of users<br>
/// <dt><i>wGrant</i>
/// <dd> 0/1 for WITH GRANT OPTION<br>
/// <dt><i>Cascade</i>
/// <dd> 0/1 cascade revoke?<br>
/// <dt><i>AsGrantor</i>
/// <dd> Alternate User to remove privileges for. AsGrantor can be a user name, a comma-separated list of user names, or "*". <br>
ClassMethod RevokePrivilege(ObjPriv As %String, ObjList As %String, Type As %String, User As %String, wGrant As %Integer = 0, Cascade As %Integer = 0, AsGrantor As %String = "") As %Status [ ProcedureBlock = 1, PublicList = SQLCODE ]
{
}

/// Wrapper around RevokePrivilege() to support declarative syntax in CPF Actions
ClassMethod RevokeOne(ByRef Properties As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// Wrapper around SQL call "GRANT <admin-privs> TO <grantee> [WITH ADMIN OPTION]"
/// Validates all user input to protect against SQL injection
ClassMethod GrantAdminOne(ByRef Properties As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// Wrapper around SQL call "REVOKE <admin-privs> FROM <grantee>"
/// Validates all user input to protect against SQL injection
ClassMethod RevokeAdminOne(ByRef Properties As %String) As %Status [ Internal, ProcedureBlock = 1 ]
{
}

/// This entry point can be used to determine if a role exists.
/// <br><br>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>rolename</i>
/// <dd>Name of the role to check.
/// </dl>
/// <p><b>Examples</b>:
/// <ul>
/// <li>Write $SYSTEM.SQL.Security.RoleExists("SalesManager") // Writes a 1 if role SalesManager exists</li>
/// </ul>
/// This method can also be called as a Stored Procedure named %SYSTEM_SQL.Security_RoleExists(<i>rolename</i>)
ClassMethod RoleExists(rolename As %Library.String = "") As %Library.Boolean [ SqlProc ]
{
}

/// This entry point can be used to determine if a user exists.
/// <br><br>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>username</i>
/// <dd>Name of the user to check.
/// </dl>
/// <p><b>Examples</b>:
/// <ul>
/// <li>Write $SYSTEM.SQL.Security.UserExists("Robert") // Writes a 1 if user Robert exists</li>
/// </ul>
/// This method can also be called as a Stored Procedure named %SYSTEM_SQL.Security_UserExists(<i>username</i>)
ClassMethod UserExists(username As %Library.String = "") As %Library.Boolean [ SqlProc ]
{
}

}
