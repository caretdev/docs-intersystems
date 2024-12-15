/// This class is used to define DeepSee Quality Measures.<br/>
Class %DeepSee.QualityMeasure.QualityMeasure Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = (%DeepSee.Model.QualityMeasure.qualityMeasure, %DeepSee.Utils), System = 4 ]
{

/// This projection is used to keep track of when Quality Measure classes are compiled or deleted.
/// This XData definition defines the Quality Measure.
XData QualityMeasure [ XMLNamespace = "http://www.intersystems.com/deepsee/qualityMeasure" ]
{
}

/// Process the model for this quality measure.
ClassMethod %GetModel() As %DeepSee.Model.QualityMeasure.qualityMeasure [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// Return the caption of the quality measure.
ClassMethod %GetQualityMeasureCaption() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the description of the quality measure.
ClassMethod %GetQualityMeasureDescription() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the linkedTo setting for the quality measure.
ClassMethod %GetQualityMeasureLinkedTo() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the logical name of the quality measure.
ClassMethod %GetQualityMeasureName() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the logical catalog of the quality measure.
ClassMethod %GetQualityMeasureCatalog() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the logical set of the quality measure.
ClassMethod %GetQualityMeasureSet() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Test if the quality measure is published.
ClassMethod %IsPublished() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the format string for the quality measure.
ClassMethod %GetFormat() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the logical id of the quality measure.
ClassMethod %GetQualityMeasureId() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the name of the subject area this quality measure applies to.
ClassMethod %GetSubjectArea() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Test whether this class is abstract or not.
ClassMethod %IsAbstract() As %Boolean [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the set of groups and elements for this quality measure.
ClassMethod %GetGroupsAndElements(Output pList) [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the MDX expression for this quality measure.<br/>
/// If <var>pGroup</var> is defined, return the specific expression for the group.
/// If <var>pGroup</var> and <var>pElement</var> are defined, return the specific expression for the element within the group.
ClassMethod %GetExpression(pGroup As %String = "", pElement As %String = "") As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

}
