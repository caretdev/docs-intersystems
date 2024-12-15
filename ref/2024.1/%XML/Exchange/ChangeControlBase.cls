/// Configuration Management Change Control Base <br>
///
/// This class is the change control superclass.  It does nothing but provide interface for the real
/// extensibility classes to use. Subclass from this and implement the methods as required.
Class %XML.Exchange.ChangeControlBase Extends %RegisteredObject [ System = 4 ]
{

/// The username of this source control user.
Property Username As %Library.Username;

/// This just calls the <method>Login</method> to perform an initialisation.
/// Note that this is called automatically via the <class>%XML.Exchange.ChangeControlInterface</class>
/// class, do not call %New directly.
Method %OnNew(initval As %String) As %Status [ Final ]
{
}

/// Call the <method>LogOut</method> method before the object closes.
Method %OnClose() As %Status
{
}

/// Perform any login step here.
Method Login(Name As %String, Password As %String) As %Status
{
}

/// Perform any logout step here.
Method Logout() As %Status
{
}

/// This is called before the actual load of data to give the chance
/// to load the Exchange Item from an external format.
/// Note: This event is not fired prior to an update via SQL.
Method OnBeforeLoad(InternalName As %String) As %Status
{
}

/// This is called after the Exchange Item is loaded.
Method OnAfterLoad(InternalName As %String) As %Status
{
}

/// Called before the Exchange Item is saved to the database. If you quit with an error
/// value then it will abort the save.
Method OnBeforeSave(InternalName As %String, Insert As %Boolean) As %Status
{
}

/// This is called after the Exchange Item has been saved to the database.
Method OnAfterSave(InternalName As %String, Insert As %Boolean) As %Status
{
}

/// Called before a Exchange Item is deleted. Returning an error code prevents the delete from occurring.
Method OnBeforeDelete(InternalName As %String) As %Status
{
}

/// Called after a Exchange Item is deleted.
Method OnAfterDelete(InternalName As %String) As %Status
{
}

/// Internal use event.
Method %BeforeLoad(InternalName As %String) As %Status
{
}

/// Internal use event.
Method %AfterLoad(InternalName As %String, Object As %RegisteredObject = {$$$NULLOREF}) As %Status
{
}

/// Internal use event.
/// Note: Internal ids are not allocated to new objects prior to this event.
Method %BeforeSave(InternalName As %String, Object As %RegisteredObject = {$$$NULLOREF}, Insert As %Boolean) As %Status
{
}

/// Internal use event.
Method %AfterSave(InternalName As %String, Object As %RegisteredObject = {$$$NULLOREF}, Insert As %Boolean) As %Status
{
}

/// Internal use event.
Method %BeforeDelete(InternalName As %String) As %Status
{
}

/// Internal use event.
Method %AfterDelete(InternalName As %String) As %Status
{
}

/// Internal use trigger.
/// Note: Id has already been allocated when the before insert trigger is fired.
Method %BeforeInsertTrigger(InternalName As %String, Values As %String) As %Status
{
}

/// Internal use trigger.
Method %AfterInsertTrigger(InternalName As %String, Values As %String) As %Status
{
}

/// Internal use trigger.
Method %BeforeUpdateTrigger(InternalName As %String, Values As %String) As %Status
{
}

/// Internal use trigger.
Method %AfterUpdateTrigger(InternalName As %String, Values As %String) As %Status
{
}

/// Internal use trigger.
Method %BeforeDeleteTrigger(InternalName As %String) As %Status
{
}

/// Internal use trigger.
Method %AfterDeleteTrigger(InternalName As %String) As %Status
{
}

}
