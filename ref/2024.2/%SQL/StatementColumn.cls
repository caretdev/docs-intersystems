/// %SQL.StatementColumn - contains the metadata for a statement column whose column type is
/// SQLRESULTCOL.
Class %SQL.StatementColumn Extends %SerialObject [ StorageStrategy = resultCol, System = 2 ]
{

/// The column name.
Property colName As %String(MAXLEN = 255);

/// The column ODBC type integer:
///
Property ODBCType As %Integer;

/// Precision
Property precision As %Integer;

/// Scale
Property scale As %Integer;

/// isNullable is TRUE (1) if the column value can be NULL.
Property isNullable As %Boolean;

Property label As %String(MAXLEN = 255);

/// The table where this column originates.
Property tableName As %String;

/// The schema qualifier of tableName.
Property schemaName As %String;

Property qualifier As %String;

Property isAutoIncrement As %Boolean;

Property isCaseSensitive As %Boolean;

Property isCurrency As %Boolean;

Property isReadOnly As %Boolean;

Property isRowVersion As %Boolean;

Property isUnique As %Boolean;

Property isAliased As %Boolean;

Property isExpression As %Boolean;

Property isHidden As %Boolean;

Property isIdentity As %Boolean;

Property isKeyColumn As %Boolean;

Property isRowId As %Boolean;

Property isList As %Boolean;

/// If this column corresponds to a property from the class that projected
/// the tableName table. This property is NULL if the column cannot be linked
/// to a property.
Property property As %Dictionary.CompiledProperty;

/// The objects type class
Property typeClass As %Dictionary.CompiledClass;

/// Returns the type of column <var>n</var> in the result set where type is an integer associated with
/// the client datatype. If the type cannot be determined, 0 (zero) is returned.
/// <table>
/// <tr><td>1<td><td>BINARY</td></tr>
/// 	<tr><td>2<td><td>DATE</td></tr>
/// 	<tr><td>3<td><td>DOUBLE</td></tr>
/// 	<tr><td>4<td><td>HANDLE</td></tr>
/// 	<tr><td>5<td><td>INTEGER</td></tr>
/// 	<tr><td>6<td><td>LIST</td></tr>
/// 	<tr><td>7<td><td>LONGVARCHAR</td></tr>
/// 	<tr><td>8<td><td>TIME</td></tr>
/// 	<tr><td>9<td><td>TIMESTAMP</td></tr>
/// 	<tr><td>10<td><td>VARCHAR</td></tr>
/// 	<tr><td>11<td><td>STATUS</td></tr>
/// 	<tr><td>12<td><td>BINARYSTREAM</td></tr>
/// 	<tr><td>13<td><td>CHARACTERSTREAM</td></tr>
/// 	<tr><td>14<td><td>NUMERIC</td></tr>
/// 	<tr><td>15<td><td>CURRENCY</td></tr>
/// 	<tr><td>16<td><td>BOOLEAN</td></tr>
/// 	<tr><td>17<td><td>OID</td></tr>
/// 	<tr><td>18<td><td>BIGINT</td></tr>
/// 	<tr><td>19<td><td>FDATE</td></tr>
/// 	<tr><td>20<td><td>FTIMESTAMP</td></tr>
/// </table>
Property clientType As %Integer;

Method IsNumeric() As %Boolean [ CodeMode = expression ]
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
Method TypeToXSD(ByRef hasXSDToLogical As %Boolean, ByRef hasLogicalToXSD As %Boolean) As %String [ Internal, ServerOnly = 1 ]
{
}

/// <p>getColInfo() is an internal method that returns a column type descriptor in
/// ODBC metadata form:</p>
/// 	<br>
/// </p>
/// 		Column metadata
/// 		<table title="Column metadata">
/// 		<tr><td>Name</td><td>Description</td></tr>
/// 		<tr><td>ODBCType</td><td>ODBC Type</td></tr>
/// 		<tr><td>Precision</td><td></td></tr>
/// 			<tr><td>Scale</td><td></td></tr>
/// 		<tr><td>nullable</td><td>NULLABLE (integer)</td></tr>
/// 		<tr><td>label</td><td>Column Label (same as Name)</td></tr>
/// 		<tr><td>table</td><td>Column Table Name</td></tr>
/// 		<tr><td>schema</td><td>Column Schema Name</td></tr>
/// 		<tr><td>qualifier</td><td>Column Qualifier Name - NULL</td></tr>
/// 		<tr><td>columnoptions</td><td>$Char(1)/$Char(0) string<br></td></tr>
/// 			<tr><td></td><td>
/// 					<table title="ColumnOptionString">
/// 					<tr><th>position</th><th>Option</th></tr>
/// 					<tr><td>1</td><td>isAutoIncrement</td></tr>
/// 					<tr><td>2</td><td>isCaseSensitive</td></tr>
/// 					<tr><td>3</td><td>isCurrency</td></tr>
/// 					<tr><td>4</td><td>isReadOnly</td></tr>
/// 					<tr><td>5</td><td>isRowVersion</td></tr>
/// 					<tr><td>6</td><td>isUnique</td></tr>
/// 					<tr><td>7</td><td>isAliased</td></tr>
/// 					<tr><td>8</td><td>isExpression</td></tr>
/// 					<tr><td>9</td><td>isHidden</td></tr>
/// 					<tr><td>10</td><td>isIdentity</td></tr>
/// 					<tr><td>11</td><td>isKeyColumn</td></tr>
/// 					<tr><td>12</td><td>isRowid</td></tr>
/// 					<tr><td>13</td><td>isList</td></tr>
/// 					</table>
/// 				</td>
/// 			</tr>
/// 		</table>
/// 	</p>
Method getColInfo() As %Library.List [ Internal ]
{
}

/// Default behavior of the JSON generation facility.  Map the current
/// registered object into a dynamic one via $toAbstractObject() and
/// output the JSON representation of the abstract object.  Subclasses
/// may wish to override this routine to perform post processing on the
/// abstract object prior to JSON generation, or dispense with the
/// abstract layer entirely in favor of direct, local JSON output
Method %ToJSONValue(Output outstr = "") As %String [ ServerOnly = 1 ]
{
}

/// Default mechanism for mapping the fields of a registered object to
/// the key-value pairs of a dynamic entity. This method exists only to provide the user
/// with the ability to override the default composition of a dynamic object from a registered object.
Method %ToDynamicObject(target As %DynamicObject = "", ignoreUnknown = 0) As %Library.DynamicObject [ ServerOnly = 1 ]
{
}

}
