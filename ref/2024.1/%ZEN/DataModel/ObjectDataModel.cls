/// This class is used to implement the Model portion of the Zen
/// Model-View-Controller mechanism.<br>
/// An ObjectDataModel is specific type of <class>DataModel</class> that
/// contains a set of named values (properties).<br>
/// The properties of an ObjectDataModel can either be formally defined within
/// the ObjectDataModel class, or they can be "virtual" properties - properties
/// defined at run-time.<br>
/// When an ObjectDataModel is displayed using a <class>%ZEN.Component.dynaForm</class>, the
/// properties will be displayed in the following default ways:<br>
/// <ul>
/// <li>Private properties - Not displayed.</li>
/// <li>Reference properties - Using a <class>%ZEN.Component.dataCombo</class>.</li>
/// <li>Strings - Using a <class>%ZEN.Component.text</class>.</li>
/// <li>Strings with MAXLEN over 250 - Using a <class>%ZEN.Component.textarea</class>.</li>
/// <li>Numerics - Using a <class>%ZEN.Component.text</class>.</li>
/// <li>Dates - Using a <class>%ZEN.Component.dateText</class>.</li>
/// <li>Enumerated value (using VALUELIST) - Using a <class>%ZEN.Component.radioSet</class> or <class>%ZEN.Component.comboBox</class>.</li>
/// </ul>
Class %ZEN.DataModel.ObjectDataModel Extends %ZEN.DataModel.DataModel [ Abstract, DependsOn = (%ZEN.Generator, %ZEN.DataModelUtils), Deprecated, PropertyClass = %ZEN.DataModel.objectModelParameters, System = 3 ]
{

/// Localization domain.
/// DataModel classes that wish to support localization must provide a value for this
/// within subclasses.
Parameter DOMAIN;

/// If true (the default), then this dataModel class supports dynamic properties:
/// that is, you can reference arbitrary property names within the data model object.
/// Any such properties that are not formally defined will refer to a location within the
/// private property, <property>%data</property> using the dynamic dispatch mechanism.
/// Set this to false to disable this feature.
Parameter DYNAMICPROPERTIES As BOOL = 1;

/// This property is used to hold any virtual properties used
/// by this model.<br>
/// A virtual property is a property referenced by the data model but not
/// defined as a formal property within the data model class.
/// This is only used when the DYNAMICPROPERTIES parameter is true.
Property %data As %ZEN.Datatype.string(POPORDER = -1, XMLPROJECTION = "NONE") [ InitialExpression = {$H}, Internal, MultiDimensional, Transient ];

/// If needed, this transient property is used to hold a copy of the source
/// object used by this model.
Property %source As %RegisteredObject(POPORDER = -1, XMLPROJECTION = "NONE") [ Transient ];

/// Create an instance of this DataModel object.<br>
/// Subclasses may override this for special behavior.<br>
/// The default implementation returns the DataModel itself as the source
/// object (this allows for simple DataModel classes that have no actual
/// source object).
ClassMethod %CreateModelInstance(pID As %String, pConcurrency As %Integer = -1, Output pSC As %Status = {$$$OK}) As %RegisteredObject [ CodeMode = expression ]
{
}

/// Open and return an instance of this DataModel object (given an id value <var>pID</var> and
/// fill in its property values.<br>
/// The actual loading of the properties is carried out by the <method>%OnLoadModel</method> method.
/// The property values can come from an independent
/// data source object or may be local to this data model object.<br>
/// If <var>pID</var> is "", then a new instance of data model object should
/// be created.<br>
/// <var>pConcurrency</var> is an optional concurrency flag that can be used in cases
/// where the data source is a persistent object.<br>
/// On return, <var>pSC</var> contains a status code indicating success of failure.
ClassMethod %OpenModel(pID As %String, pConcurrency As %Integer = -1, Output pSC As %Status = {$$$OK}) As %RegisteredObject [ Final ]
{
}

/// Save the values currently within this DataModel object back to a data source.
/// Before saving, the values of the properties will be validated (as specified
/// by the property definitions).<br>
/// The actual save operation works as follows:<br>
/// The <method>%OnStoreModel</method> callback is invoked. This copies the
/// properties of this model back to the data source object (if there is an
/// independent data source).<br>
/// The <method>%OnSaveSource</method> callback is invoked. This causes the independent
/// data source object to be saved.<br>
/// Returns a status code indicating success or failure.
Method %SaveModel() As %Status [ Final ]
{
}

/// Delete a given DataModel instance.<br>
/// This is implemented by the subclasses of this class by providing implementations
/// of the <method>%OnDeleteModel</method> and <method>%OnDeleteSource</method> methods.
ClassMethod %DeleteModel(pID As %String) As %Status
{
}

/// This callback method is invoked when a DataModel is loaded into memory.
/// If implemented, it loads an instance of the data source object
/// used by the DataModel.<br>
/// The default implementation returns the DataModel itself as the source
/// object (this allows for simple DataModel classes that have no actual
/// source object).
Method %OnOpenSource(pID As %String, pConcurrency As %Integer = -1, Output pSC As %Status = {$$$OK}) As %RegisteredObject
{
}

/// This callback method is invoked when a new instance of DataModel is required.
/// If implemented, it returns a new instance of the data source object
/// used by the DataModel.<br>
/// The default implementation returns the DataModel itself as the source
/// object (this allows for simple DataModel classes that have no actual
/// source object).
Method %OnNewSource(Output pSC As %Status = {$$$OK}) As %RegisteredObject
{
}

/// This callback method does the actual work of loading values from the source object.
Method %OnLoadModel(pSource As %RegisteredObject) As %Status
{
}

/// This callback method does the actual work of copying values
/// from the DataModel to the data source.<br>
/// The default implementation is an expression method.
Method %OnStoreModel(pSource As %RegisteredObject) As %Status [ CodeMode = expression ]
{
}

/// This callback method is called when the DataModel is saved. If
/// implemented, it is responsible for saving changes to the data source.
Method %OnSaveSource(pSource As %RegisteredObject) As %Status
{
}

/// This callback method is invoked when the DataModel is deleted.
/// This is implemented by the subclasses of this class.
ClassMethod %OnDeleteModel(pID As %String) As %Status
{
}

/// This callback method is called when the DataModel is deleted. If
/// implemented, it is responsible for making the appropriate deletes
/// against the data source.
ClassMethod %OnDeleteSource(pID As %String) As %Status
{
}

/// Internal method.<br>
/// Called by the dataController to move data into this model.
/// Copies the values in the array <var>pData</var> (subscripted by series and property name)
/// into this data model.
Method %CopyDataToModel(ByRef pData, pSeries As %Integer = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = (%GetPropertyInfo, %OnCopyDataToModel), Internal ]
{
}

/// Internal method.<br>
/// Called by the dataController to get data from this model.
/// Copies the values in the data demo to the array <var>pData</var>
/// (subscripted by series number and property name).
Method %CopyDataFromModel(Output pData, Output pTypes, pSeries As %Integer = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = (%GetPropertyInfo, %OnCopyDataFromModel), Internal ]
{
}

/// If defined, this callback method is invoked just before the dataController
/// copies its values into the properties of this DataModel object.<br>
/// <var>pData</var> is an array containing the values provided by the
/// controller, subscripted by property name.
Method %OnCopyDataToModel(ByRef pData) As %Status [ Abstract ]
{
}

/// If defined, this callback method is invoked just as this DataModel object
/// is about to copy its values into a dataController.<br>
/// <var>pData</var> is an array containing the values that will be provided to the
/// controller, subscripted by property name.
Method %OnCopyDataFromModel(ByRef pData) As %Status [ Abstract ]
{
}

/// Return an array, subscripted by property name, describing the properties within this DataModel.<br>
/// These are returned as an array of the form:<br>
/// pInfo(name) = seqno<br>
/// If <var>pExtended</var> is true (1), then the array will include
/// additional nodes for each property. This information is used to
/// create dynamic forms for this model.<br>
/// Applications should not change this method. To modify the information
/// returned by this method, override the <method>%OnGetPropertyInfo</method>
/// callback method.
ClassMethod %GetPropertyInfo(Output pInfo As %String, pExtended As %Boolean = 0, pModelId As %String = "", pContainer As %String = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %OnGetPropertyInfo ]
{
}

/// This callback method, if present, is called by the <method>%GetPropertyInfo</method>
/// method. This gives subclasses the opportunity to add additional property
/// descriptions to the DataModel.<br>
/// <var>pIndex</var> is the index number that should be used to add the next
/// property to the list.<br>
/// <var>pInfo</var> is a multidimensional array containing information about the
/// properties of this data model.<br>
/// If <var>pExtended</var> is true, then complete information about the properties
/// should be returned; if false, then only property names need be returned (applications
/// can simply ignore this).<br>
/// <var>pModelId</var> is the id value of the current Data Model instance. This is provided
/// for cases where the contents of a dynamic form may vary by instance of the Data Model object.<br>
///
ClassMethod %OnGetPropertyInfo(pIndex As %Integer, ByRef pInfo As %String, pExtended As %Boolean = 0, pModelId As %String = "", pContainer As %String = "") As %Status [ Abstract ]
{
}

/// Return a comma-delimited list of properties within this DataModel,
/// including any virtual properties provided by the <method>%OnGetPropertyInfo</method>
/// <var>pContainer</var> is the containing property in the case of an embedded object.
/// This method is simply an optimization for cases where there is no user-defined
/// <method>%OnGetPropertyInfo</method> method.
ClassMethod %GetPropertyList(pModelId As %String = "", pContainer As %String = "") As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetPropertyInfo, Internal ]
{
}

/// Internal method.<br>
/// Build a comma-delimited list of of properties within this DataModel
/// using the list returned by <method>%GetPropertyInfo</method>.
ClassMethod %BuildPropertyList(pModelId As %String = "", pContainer As %String = "") As %String [ Internal, Private ]
{
}

/// Internal method.<br>
/// This generated method contructs client-side JS validation code
/// for the properties within this provider.
/// The client-side code is returned as a string that is converted to
/// JS function at run-time.
ClassMethod %GetJSValidationCode() As %String [ CodeMode = objectgenerator ]
{
}

/// Internal method.
/// This is called in order to get the SQL statements (specified
/// by the ZENSQL and ZENSQLLOOKUP parameters) that will provide a set of lookup
/// values for a property.
ClassMethod %GetLookupSQL(pProperty As %String, Output pSQL As %String, Output pSQLLookup As %String) As %Status [ CodeMode = objectgenerator, Internal ]
{
}

/// Provide a property dispatch method to catch references to
/// virtual properties.<br>
/// This should not be called directly.<br>
/// This method is only generated if the DYNAMICPROPERTIES parameter is true.
Method %DispatchGetProperty(pProperty As %String) [ CodeMode = objectgenerator, Internal ]
{
}

/// Provide a property dispatch method to catch references to
/// virtual properties.<br>
/// This should not be called directly.<br>
/// This method is only generated if the DYNAMICPROPERTIES parameter is true.
Method %DispatchSetProperty(pProperty As %String, pValue As %String) [ CodeMode = objectgenerator, Internal ]
{
}

/// Internal method.<br>
/// If a form connected to this DataModel is submitted, this method handles the
/// server-side processing of the submit.
ClassMethod %SubmitHandler(pSubmit As %ZEN.Submit) As %Status
{
}

/// If defined, this callback is called when a form connected to this
/// DataModel is submitted.<br>
/// The contents of this DataModel will be filled in from the submitted values
/// before this callback is invoked.<br>
/// The default implementation is to store the submitted values back to the model.
Method %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

}
