/// This class defines a task that can be executed by the Task Manager.
/// To create a new task, create a subclass and override the OnTask method.<br>
/// All public properties whose name does not start with a "%" are treated
/// as user-configurable "settings" for this task.
Class %SYS.Task.Definition Extends %RegisteredObject [ System = 4 ]
{

Parameter PROPERTYVALIDATION = 2;

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// This defines the user-visible name of this task.
/// It is defined in the subclasses.
Parameter TaskName As STRING;

/// This specifies a security resource and optional permission. Access to the resource
/// will be required to create, modify or run a task of this type.
/// The format is "<resource>:<permission>". If <permission> is ommited, "USE" is implied.
/// Note that this parameter cannot be overridden using the COSEXPRESSION parameter type.
Parameter RESOURCE As STRING;

Property %RunDate As %Date;

Property %RunTime As %Time;

/// This method is responsible for executing the task.<br>
/// At the scheduled time, the Task Manager creates an instance of this object,
/// sets any property values using the stored "Settings" for the task, and then
/// invokes this method to execute the task.<br>
/// In order to execute a real task, override this method in a subclass.
Method OnTask() As %Status
{
}

/// Return a serialized list of user-defined Property values for an instance of this Task as a $List.
/// This serialized list is stored in %SYS.Task.Settings for the scheduled Task and used by
/// the Task Manager to set the Properties before OnTask() is run.<br>
/// The serialized state is of the form: $LB(name,val,name,val)
Method GetSettings() As %List [ CodeMode = objectgenerator, Final ]
{
}

/// Called by the Task Manager prior to running OnTask() to set all Property values.<br>
/// The 'pState' value is the serialized list of Property values stored in the scheduled
/// Task in %SYS.Task.Settings.
Method SetSettings(pState As %List) As %Status [ Final ]
{
}

/// This callback is called when this form is submitted.
/// <var>pID</var> is the ID value associated with the form.
/// The default implementation will perform a Save if the AutoForm is a persistent object.<br>
/// <var>pSubmit</var> is the name of the submit button (i.e., $AUTOFORM_SAVE).
Method OnSubmit(ByRef pID As %String, pSubmit As %String) As %Status [ CodeMode = objectgenerator, Final ]
{
}

/// Returns the localized name of this task.
ClassMethod GetTaskName() As %String [ CodeMode = objectgenerator, Final ]
{
}

ClassMethod GetPropertyName(propertyName As %String) As %String [ CodeMode = objectgenerator, Final ]
{
}

/// Return a collection type for a property. By passing reference tCollection we can get all properties which are collections.
ClassMethod GetCollectionType(propertyName As %String, ByRef tCollection As %String) As %String [ CodeMode = objectgenerator, Final ]
{
}

/// This method checks if the current process has the permission defined by the RESOURCE parameter for the given Task class. This will
/// return 1 if the process has permission, or if no RESOURCE is defined. It will return 0 otherwise.
ClassMethod CheckPermission(taskClass As %String, namespace As %String, Output sc As %Status) As %Boolean
{
}

ClassMethod GetResource(taskClass As %String, namespace As %String) As %String [ Final, Private ]
{
}

}
