Class %DeepSee.extensions.modelling.TableGenerator Extends Base [ System = 4 ]
{

Property config As %DeepSee.extensions.modelling.conf.Table;

Property AttrRS As %IResultSet;

Property AttrValueList As %List;

Property AttrDisplayList As %List;

Property AttrTypeList As %List;

Property AttrArray [ MultiDimensional ];

Method setConfig(conf As %DeepSee.extensions.modelling.conf.Table) As %Status
{
}

Method setAttrResultSet(rs As %IResultSet) As %Status
{
}

Method setAttrList(valueList As %List, displayList As %List = "") As %Status
{
}

Method setAttrListFromConfig() As %Status
{
}

Method setAttrArray(ByRef array) As %Status
{
}

Method apply() As %Status
{
}

Method genClassifierTable() As %Status
{
}

Method genAttributes(classDef As %Dictionary.ClassDefinition, Output dim As %Integer) As %Status
{
}

Method genClassifierTableBody(classDef As %Dictionary.ClassDefinition, dim As %Integer) As %Status
{
}

Method AddPMMLDataField(pName As %String, pDataType As %String, pOptype As %String = "continuous", pDisplayName As %String = "") As %Status
{
}

ClassMethod createNewClass(className As %String, Output classDef As %Dictionary.ClassDefinition) As %Status
{
}

ClassMethod deleteIfExists(className As %String) As %Status
{
}

ClassMethod relate(parent As %String, child As %String, pProp As %String, cProp As %String, idx As %Boolean) As %Status
{
}

ClassMethod addProperty(classDef As %Dictionary.ClassDefinition, name As %String, type As %String, maxlen As %Integer = 0, collation As %String = "", valuelist As %String = "", isRequired As %Boolean = 0, Output propDef As %Dictionary.PropertyDefinition, pDefaultValue As %String = "") As %Status
{
}

ClassMethod addCollection(classDef As %Dictionary.ClassDefinition, name As %String, type As %String, ctype As %String, storage As %String = "") As %Status
{
}

ClassMethod addMethod(classDef As %Dictionary.ClassDefinition, name As %String, type As %String, plist As %String, code As %List, static As %Boolean = 0) As %Status
{
}

ClassMethod addCompProperty(classDef As %Dictionary.ClassDefinition, name As %String, type As %String, code As %String, collation As %String = "") As %Status
{
}

ClassMethod addXData(classDef As %Dictionary.ClassDefinition, name As %String, content As %XML.Adaptor) As %Status
{
}

ClassMethod addParameter(classDef As %Dictionary.ClassDefinition, name As %String, type As %String, value As %String) As %Status
{
}

ClassMethod addIndex(classDef As %Dictionary.ClassDefinition, name As %String, properties As %String, isUnique As %Boolean = 0, isPK As %Boolean = 0, isBitmap As %Boolean = 0) As %Status
{
}

ClassMethod addIDKey(classDef As %Dictionary.ClassDefinition, name As %String, properties As %String) As %Status
{
}

ClassMethod compile(classDef As %Dictionary.ClassDefinition, Output tableName As %String, flags As %String = "") As %Status
{
}

ClassMethod dts(ts1 As %TimeStamp, ts2 As %TimeStamp) As %Double
{
}

ClassMethod TableName(className As %String, Output tableName As %String) As %Status
{
}

ClassMethod getType(class As %String, column As %String, Output type As %String)
{
}

ClassMethod idColumn(class As %String, Output sc As %Status) As %String
{
}

ClassMethod propertyName(name As %String) As %String
{
}

ClassMethod bestKey(class As %String, Output column As %String, Output id1 As %String) As %Status
{
}

}
