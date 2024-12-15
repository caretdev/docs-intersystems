/// This class contains methods used for displaying DeepSee cube information.
Class %CSP.Documatic.CubeInfo Extends %CSP.Documatic [ System = 3 ]
{

/// Draw HTML for DeepSee Cube Information.
ClassMethod RenderCubeInfo(pClass As %String, pIsSub As %Boolean) As %Status [ Private ]
{
}

ClassMethod DrawSumMea(%model, Output tMeaList) As %Integer
{
}

ClassMethod DrawSumDim(%model, Output tDimList) As %Integer
{
}

/// Draw cube element Hierarchies (pDim passed in is the Dimension object)<br/>
/// pBaseModelDim is the base model object for this dimension or null.
ClassMethod DrawHier(pClass, pDim, pIsSub, pBaseModelDim)
{
}

/// Draw cube element Levels (pLevel is passed is the objec of tHier.levels
/// pBaseModelHier is the base model object for this subject area's hierarch or null for cube.
ClassMethod DrawLevel(pClass, pLevel, dimType, pHierPath, pIsSub, pBaseModelHier)
{
}

/// Draw cube element Properties (pProp passed in is the object of tLevel.properties)
ClassMethod DrawProp(pClass, pProp, pLevPath)
{
}

ClassMethod DrawPivot(pClass, pPivotList, cubeName)
{
}

ClassMethod DrawSumCal(%model, Output tCalList) As %Integer
{
}

ClassMethod DrawSumNamed(%model, Output tNamedList) As %Integer
{
}

ClassMethod DrawSumList(%model, Output tListList) As %Integer
{
}

ClassMethod DrawSumListField(%model, Output tListFieldList) As %Integer
{
}

ClassMethod DrawSumRel(%model, Output tRelList) As %Integer
{
}

/// This method draws some common stuff of an item. <br>
/// pItemType is a string, such as "dimension", "named set";<br>
/// pItem is the item's object<br>
/// pClass is the current cube class name.
ClassMethod DrawItemLine(pItemType, pItem, pClass)
{
}

/// Draw HTML for DeepSee Subject Area Information.
ClassMethod RenderSubjectAreaInfo(pClass As %String, pIsSub As %Boolean) As %Status [ Private ]
{
}

/// Given the DeepSee class name (subject area),
/// return an instance of the <class>%DeepSee.Model.SubjectArea.subjectArea</class>
/// meta-data object that describes the subject area.<br/>
/// Return "" if the given cube does not exist.<br/>
/// This method does not work on base cubes; use %GetModel.
ClassMethod %GetSubjectAreaModel(pClassName As %String, Output pStatus As %Status) As %DeepSee.Model.SubjectArea.subjectArea
{
}

ClassMethod DrawSumPivot(%model, Output tPivotList) As %Integer
{
}

/// Pre-process the string provided in <VAR>pDescription</VAR> to HTML escape everything that is
/// not a recognized documatic token.
ClassMethod RenderDescription(pClass As %String, pDescription As %String, starttag As %String, endtag As %String)
{
}

}
