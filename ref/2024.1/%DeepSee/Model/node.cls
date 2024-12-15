/// Base class for DeepSee Cube Definition meta-data objects.<br/>
Class %DeepSee.Model.node Extends abstractNode [ Abstract, System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter XMLINCLUDEINGROUP = 1;

Parameter DOMAIN = "%DeepSee";

/// Logical name of this element.
Property name As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");

/// Localized name of this element.
/// This is used by tools but not within actually queries.
Property displayName As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");

/// Optional description for this node.
Property description As %DeepSee.Datatype.string(MAXLEN = 2500, XMLPROJECTION = "attribute");

/// Disabled flag. If true, then this member will be ignored when the
/// DeepSee cube model is compiled.
Property disabled As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Client marker to track whether or not changes have been made too this item in the current session.
Property isModified(XMLPROJECTION = "none") [ InitialExpression = 0 ];

Property additionalDescription As %DeepSee.Datatype.string;

/// Produce the structures needed to emit the appropriate JSON and export this item to AtScale
Method %AtScaleExport(pStatus As %Status = {$$$OK}, ByRef pAuxiliaryIndex As %DynamicAbstractObject = {$$$NULLOREF}) As %DynamicAbstractObject
{
}

/// Initialize the arrays to collect information for post-processing. These items will get filled
/// in as the export walks the elements of the model.
Method %AtScaleInitIndex(pIndex As %DynamicAbstractObject = {$$$NULLOREF}) As %DynamicAbstractObject
{
}

/// Given the provided <var>pDataSource</var> as either a class or table name, produce the
/// DataSet as a %DynamicObject with required parameters for import to AtScale. By default this
/// will assume the dataset will have the setting isFact=true. Thas can be controlled using
/// <var>pIsFact</var>.
Method %AtScaleProduceDataSet(pDataSource As %String, Output pStatus, pIsFact = 1) As %DynamicAbstractObject
{
}

/// Produce an attribute definition for import to AtScale
Method %AtScaleProduceAttribute(pProperty = "", pAuxiliaryIndex As %DynamicAbstractObject = {$$$NULLOREF}, pTimeFunction = "") As %DynamicAbstractObject
{
}

/// Unpack a source property into the datasets, joins and attributes needed to provide data for an AtScale cube.
/// Incoming values for <var>sourceProperty</var> are expected to be correct class-reference syntax. In the case where
/// the source is a simple property, it is added as a formal Attribute and placed in the <var>pAuxiliaryIndex</var> as
/// a column to be later added to the primary dataset.
Method %AtScaleProcessSourceRef(pSourceProperty As %String = "", pAuxiliaryIndex As %DynamicAbstractObject = {$$$NULLOREF}, pTimeFunction = "") As %Status
{
}

/// Convert an IRIS column type to a best match to the AtScale dimension types.
ClassMethod %AtScaleConvertType(pIRISType As %String = "", pStatus As %Status) As %String
{
}

/// Convert an IRIS time function to a best match for AtScale TimeUnit.
ClassMethod %AtScaleConvertTimeFunction(pIRISTimeFunction As %String = "", pStatus As %Status, Output pSQLFunction) As %String
{
}

/// Convert a measure aggregate from the IRIS definition to the best match from the AtScale aggregates.
Method %AtScaleConvertAggregate(pIRISAgg As %String, pIRISType As %String = "number", pStatus As %Status) As %String
{
}

/// Produce a Message object from the message text and a type string.
Method %AtScaleCreateMessageObj(pMessageText = "", pType = {$$$msgInfo}) As %DynamicObject
{
}

}
