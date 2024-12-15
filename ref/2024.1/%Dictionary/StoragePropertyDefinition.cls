Class %Dictionary.StoragePropertyDefinition Extends %Persistent [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.StorageDefinition [ Cardinality = parent, Inverse = Properties ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// AverageFieldSize
Property AverageFieldSize As %RawString;

/// BiasQueriesAsOutlier
Property BiasQueriesAsOutlier As %RawString;

/// ChildBlockCount
Property ChildBlockCount As %RawString;

/// ChildExtentSize
Property ChildExtentSize As %RawString;

/// Histogram
Property Histogram As %RawString;

/// Name
Property Name As %RawString [ Required ];

/// OutlierSelectivity
Property OutlierSelectivity As %RawString;

/// Selectivity
Property Selectivity As %RawString;

/// StreamLocation
Property StreamLocation As %RawString;

ClassMethod BiasQueriesAsOutlierIsValid(val As %String) As %Status
{
}

Parameter SQLENABLED = 1;

Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]
{
}

Trigger OnDelete [ Event = DELETE, Time = AFTER ]
{
}

Method %OnNew(name As %String) As %Status [ Private ]
{
}

ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status
{
}

ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status
{
}

ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean
{
}

Method %LoadData(id As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

Method AverageFieldSizeSet(value As %String = "") As %Status
{
}

Method AverageFieldSizeReset()
{
}

Method AverageFieldSizeIsDefined() As %Boolean
{
}

Method BiasQueriesAsOutlierSet(value As %String = "") As %Status
{
}

Method BiasQueriesAsOutlierReset()
{
}

Method BiasQueriesAsOutlierIsDefined() As %Boolean
{
}

Method ChildBlockCountSet(value As %String = "") As %Status
{
}

Method ChildBlockCountReset()
{
}

Method ChildBlockCountIsDefined() As %Boolean
{
}

Method ChildExtentSizeSet(value As %String = "") As %Status
{
}

Method ChildExtentSizeReset()
{
}

Method ChildExtentSizeIsDefined() As %Boolean
{
}

Method HistogramSet(value As %String = "") As %Status
{
}

Method HistogramReset()
{
}

Method HistogramIsDefined() As %Boolean
{
}

Method NameSet(value As %String = "") As %Status
{
}

Method NameReset()
{
}

Method NameIsDefined() As %Boolean
{
}

Method OutlierSelectivitySet(value As %String = "") As %Status
{
}

Method OutlierSelectivityReset()
{
}

Method OutlierSelectivityIsDefined() As %Boolean
{
}

Method SelectivitySet(value As %String = "") As %Status
{
}

Method SelectivityReset()
{
}

Method SelectivityIsDefined() As %Boolean
{
}

Method StreamLocationSet(value As %String = "") As %Status
{
}

Method StreamLocationReset()
{
}

Method StreamLocationIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
