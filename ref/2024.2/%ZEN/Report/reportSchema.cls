/// Utilities for ZEN Report schema.
Class %ZEN.Report.reportSchema [ Abstract, Deprecated, System = 4 ]
{

/// Generate a schema for a report and write it to a file
ClassMethod %DrawToXSD(pClassName As %String(MAXLEN=""), outputfile As %String(MAXLEN="")) As %Status
{
}

/// generate XSD from a compiled Zen report definition
ClassMethod GenerateSchema(pClassName As %String(MAXLEN=""), pXSD As %Stream.Object) As %Status
{
}

ClassMethod writeSchema(pCompiledClass As %Dictionary.CompiledClass, pReport As %ZEN.Report.report, pXSD As %Stream.Object) As %Status
{
}

ClassMethod writeGroupType(pGroup As %ZEN.Report.group, pXSD As %Stream.Object)
{
}

/// Converts a ClientType enum to its equivalent SOAP xsd type<br>
/// 1       BINARY           %Binary<br>
/// 2       DATE             %Date<br>
/// 3       DOUBLE           %Double<br>
/// 4       HANDLE           %ObjectHandle<br>
/// 5       INTEGER          %Integer<br>
/// 6       LIST             %List<br>
/// 7       LONGVARCHAR      VarChar, %Stream<br>
/// 8       TIME             %Time<br>
/// 9       TIMESTAMP        %Timestamp<br>
/// 10      VARCHAR          %String<br>
/// 11      STATUS           %Status<br>
/// 12      BINARYSTREAM     BINARYSTREAM<br>
/// 13      CHARACTERSTREAM  CHARACTERSTREAM<br>
/// 14      NUMERIC          %Numeric<br>
/// 15      CURRENCY         %Currency<br>
/// 16      BOOLEAN          %Boolean<br>
/// 17      OID              OID<br>
/// 18      BIGINT           %BigInt<br>
/// 19      FDATE            %FilemanTimeStamp<br>
/// 20      FTIMESTAMP       %FilemanDate<br>
/// 21      DECIMAL          %Float<br>
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.<br><br>
ClassMethod TypeToXSD(Type As %Integer, ByRef hasXSDToLogical As %Boolean, ByRef hasLogicalToXSD As %Boolean) As %String [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

}
