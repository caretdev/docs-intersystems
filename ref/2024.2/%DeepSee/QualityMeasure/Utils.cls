/// Run-time and compile-time utility methods for Quality Measures.
/// This class should be consider to be INTERNAL to DeepSee;
/// There are no methods intended for public use.
Class %DeepSee.QualityMeasure.Utils Extends %RegisteredObject [ System = 4 ]
{

/// Build the meta data for the given quality measure.
ClassMethod %ProcessQualityMeasure(pQMSRDef As %DeepSee.Model.QualityMeasure.qualityMeasure, Output pInfo) As %Status [ Internal ]
{
}

/// Given the logical name, <var>pQMSRName</var> of a DeepSee Quality Measure,
/// test if it exists.
ClassMethod %QualityMeasureExists(pQMSRName As %String, Output pStatus As %Status) As %Boolean
{
}

/// Given the logical name, <var>pQMSRName</var> of a DeepSee Quality Measure,
/// return its name in its original case.
ClassMethod %GetQualityMeasureName(pQMSRName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pQMSRName</var> of a DeepSee Quality Measure,
/// return a list of the groups and elements it contains.
ClassMethod %GetQualityElements(pQMSRName As %String, Output pList As %String) As %Status
{
}

/// Given the logical name, <var>pQMSRName</var> of a DeepSee Quality Measure,
/// return its MDX expression.
ClassMethod %GetQualityMeasureExpression(pQMSRName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pQMSRName</var> of a DeepSee Quality Measure,
/// return the class name of the quality measure definition.</br>
/// If <var>pUseLink</var> is true, then return the resolved master class name for a linked measure.
ClassMethod %GetQualityMeasureClass(pQMSRName As %String, Output pStatus As %Status, pUseLink As %Boolean = 0, ByRef pVisited) As %String
{
}

/// Given the logical full name, <var>pQMSRName</var> of a DeepSee Quality Measure,
/// return the quality measure name as well as the optional group and element names.
/// A full name takes the form: "catalog/set/id/group/element".
ClassMethod %ParseQualityMeasureName(pQMSRName As %String, Output pGroup As %String, Output pElement As %String) As %String
{
}

/// Test that the current user holds privileges on the given quality measure.
ClassMethod %CheckPrivilege(pQMSRName As %String) As %Boolean [ Final ]
{
}

/// Given the logical name, <var>pQMSRName</var> of a DeepSee quality measure,
/// return an instance of the <class>%DeepSee.Model.QualityMeasure.qualityMeasure</class>
/// meta-data object that describes the quality measure.<br/>
/// Return "" if the given quality measure does not exist.<br/>
ClassMethod %GetModel(pQMSRName As %String, Output pStatus As %Status, pUseLink As %Boolean = 0) As %DeepSee.Model.QualityMeasure.qualityMeasure
{
}

/// Get a list of currently defined (and published) quality measures for a specific cube. This is returned as:<br/>
/// pList(NAME) = $LB(name,caption,description)<br/>
ClassMethod %GetQualityMeasuresForCube(Output pList As %List, pCube As %String) As %Status
{
}

/// Get a list of currently defined quality measures. This is returned as:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type,msrCaption)<br/>
ClassMethod %GetQualityMeasureList(Output pList As %List, pCatalog As %String = "", pSet As %String = "") As %Status
{
}

/// Return an array of all currently defined DeepSee Quality Measures
/// in a format that can be used by a finderDialog.
ClassMethod %GetQualityMeasureArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Utility method to create and save a qmsr definition class.
ClassMethod %SaveQMsrDefinition(pClassName As %String, pSuper As %String = "", pDesc As %String, pModel As %DeepSee.Model.cube, pDomain As %String = "") As %Status [ Internal ]
{
}

/// Get a list of currently defined quality measure catalogs. This is returned as:<br/>
/// pList(NAME) = $LB(name)<br/>
ClassMethod %GetCatalogList(Output pList As %List) As %Status
{
}

/// Get a list of currently defined quality measure sets. This is returned as:<br/>
/// pList(NAME) = $LB(name)<br/>
ClassMethod %GetSetList(Output pList As %List, pCatalog As %String = "") As %Status
{
}

}
