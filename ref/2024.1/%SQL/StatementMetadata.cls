/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25SQL.StatementMetadata">SQL Metadata</a>.</p>
/// Metadata describes the statement interface. The statement metadata contains the type of statement, the number of
/// columns defined by the statement and the metadata for each column. Statement columns are of three primary types:
/// result columns, parameters, and the return value. There is also a distinction between the metadata available for a
/// prepared statement and for a statement that has been executed since not all statement results are known at prepare
/// time. For all statement types except CALL, the statement metadata is all available at prepare time. CALL statement metadata
/// that is available at prepare time includes the metadata from the statement itself and that metadata is not to be confused
/// with the metadata defined by the SQL routine that is called. Each routine defines a formal interface that consists of an
/// optional return value and option input, input-output and output parameters. An SQL routine might also return a single
/// preplanned result set. That metadata is available at prepare time and it consists of some number of columns of type
/// SQLRESULTCOL. An SQL routine might also declare that it returns some dynamic result sets, the metadata for which is not
/// available until after the statement is executed and the result sets bound dynamic cursors.
Class %SQL.StatementMetadata Extends %RegisteredObject [ System = 4 ]
{

/// <p>Integer value indicating the type of statement.</p>
/// <table>
/// 	<tr><td>1</td><td>SELECT</td></tr>
/// 	<tr><td>2</td><td>INSERT (also 'INSERT OR UPDATE')</td></tr>
/// 	<tr><td>3</td><td>UPDATE</td></tr>
/// 	<tr><td>4</td><td>DELETE</td></tr>
/// 	<tr><td>5</td><td>COMMIT</td></tr>
/// 	<tr><td>6</td><td>ROLLBACK</td></tr>
/// 	<tr><td>7</td><td>GRANT</td></tr>
/// 	<tr><td>8</td><td>REVOKE</td></tr>
/// 	<tr><td>9</td><td>CREATE TABLE</td></tr>
/// 	<tr><td>10</td><td>ALTER TABLE</td></tr>
/// 	<tr><td>11</td><td>DROP TABLE</td></tr>
/// 	<tr><td>12</td><td>CREATE VIEW</td></tr>
/// 	<tr><td>13</td><td>ALTER VIEW</td></tr>
/// 	<tr><td>14</td><td>DROP VIEW</td></tr>
/// 	<tr><td>15</td><td>CREATE INDEX</td></tr>
/// 	<tr><td>16</td><td>ALTER INDEX (Not supported)</td></tr>
/// 	<tr><td>17</td><td>DROP INDEX</td></tr>
/// 	<tr><td>18</td><td>CREATE ROLE</td></tr>
/// 	<tr><td>19</td><td>DROP ROLE</td></tr>
/// 	<tr><td>20</td><td>SET TRANSACTION</td></tr>
/// 	<tr><td>21</td><td>START TRANSACTION</td></tr>
/// 	<tr><td>22</td><td>%INTRANSACTION</td></tr>
/// 	<tr><td>23</td><td>%BEGTRANS (Alias for START TRANSACTION)</td></tr>
/// 	<tr><td>24</td><td>%INTRANS (Alias for %INTRANSACTION)</td></tr>
/// 	<tr><td>25</td><td>GET (Not supported)</td></tr>
/// 	<tr><td>26</td><td>SET OPTION</td></tr>
/// 	<tr><td>27</td><td>STATISTICS (UPDATE STATISTICS, not supported))</td></tr>
/// 	<tr><td>28</td><td>%CHECKPRIV</td></tr>
/// 	<tr><td>29</td><td>CREATE USER</td></tr>
/// 	<tr><td>30</td><td>ALTER USER</td></tr>
/// 	<tr><td>31</td><td>DROP USER</td></tr>
/// 	<tr><td>32</td><td>%CHECKPRIV (SQL Admin Privilege)</td></tr>
/// 	<tr><td>33</td><td>GRANT (SQL Admin Privilege)</td></tr>
/// 	<tr><td>34</td><td>REVOKE (SQL Admin Privilege)</td></tr>
/// 	<tr><td>35</td><td>CREATE FUNCTION</td></tr>
/// 	<tr><td>36</td><td>CREATE METHOD</td></tr>
/// 	<tr><td>37</td><td>CREATE PROCEDURE</td></tr>
/// 	<tr><td>38</td><td>CREATE QUERY</td></tr>
/// 	<tr><td>39</td><td>DROP FUNCTION</td></tr>
/// 	<tr><td>40</td><td>DROP METHOD</td></tr>
/// 	<tr><td>41</td><td>DROP PROCEDURE</td></tr>
/// 	<tr><td>42</td><td>DROP QUERY</td></tr>
/// 	<tr><td>43</td><td>CREATE TRIGGER</td></tr>
/// 	<tr><td>44</td><td>DROP TRIGGER</td></tr>
/// 	<tr><td>45</td><td>CALL</td></tr>
/// 	<tr><td>46</td><td>SAVEPOINT</td></tr>
/// 	<tr><td>47</td><td>LOCK TABLE</td></tr>
/// 	<tr><td>48</td><td>UNLOCK TABLE</td></tr>
/// 	<tr><td>49</td><td>CREATE DATABASE</td></tr>
/// 	<tr><td>50</td><td>DROP DATABASE</td></tr>
/// 	<tr><td>51</td><td>USE DATABASE</td></tr>
/// 	<tr><td>52</td><td>TUNE TABLE</td></tr>
/// 	<tr><td>53</td><td>DECLARE</td></tr>
/// 	<tr><td>54</td><td>CREATE MODEL</td></tr>
/// 	<tr><td>55</td><td>DROP MODEL</td></tr>
/// 	<tr><td>56</td><td>TRAIN MODEL</td></tr>
/// 	<tr><td>57</td><td>ALTER MODEL</td></tr>
/// 	<tr><td>58</td><td>VALIDATE MODEL</td></tr>
/// 	<tr><td>59</td><td>SET ML CONFIGURATION</td></tr>
/// 	<tr><td>60</td><td>CREATE ML CONFIGURATION</td></tr>
/// 	<tr><td>61</td><td>ALTER ML CONFIGURATION</td></tr>
/// 	<tr><td>62</td><td>DROP ML CONFIGURATION</td></tr>
/// 	<tr><td>63</td><td>FREEZE PLANS</td></tr>
/// 	<tr><td>64</td><td>UNFREEZE PLANS</td></tr>
/// 	<tr><td>65</td><td>PURGE</td></tr>
/// 	<tr><td>66</td><td>BUILD INDEX</td></tr>
/// 	<tr><td>67</td><td>CREATE AGGREGATE</td></tr>
/// 	<tr><td>68</td><td>DROP AGGREGATE</td></tr>
/// 	<tr><td>69</td><td>LOAD</td></tr>
/// 	<tr><td>70</td><td>CREATE SCHEMA</td></tr>
/// 	<tr><td>71</td><td>DROP SCHEMA</td></tr>
/// 	<tr><td>72</td><td>CREATE SERVER</td></tr>
/// 	<tr><td>73</td><td>ALTER SERVER</td></tr>
/// 	<tr><td>74</td><td>DROP SERVER</td></tr>
/// 	<tr><td>75</td><td>CREATE FOREIGN TABLE</td></tr>
/// 	<tr><td>76</td><td>ALTER FOREIGN TABLE</td></tr>
/// 	<tr><td>77</td><td>DROP FOREIGN TABLE</td></tr>
/// 	<tr><td>78</td><td>CANCEL QUERY</td></tr>
/// 	<tr><td>79</td><td>EXPLAIN</td></tr>
/// 	<tr><td>80</td><td>THROUGH</td></tr>
/// 	<tr><td>99</td><td>Anything not list above</td></tr>
/// </table>
Property statementType As %Integer;

/// interface is an integer value indicating the routine interface:
/// -2	-	Return value, dynamic cursors returned (zero, one or more)
/// -1	-	No return value, dynamic cursors returned (RETURNRESULTSETS, zero one or more)
///  0	-	No return value, no dynamic cursors (NOT RETURNRESULTSETS, aka "function" procedure although a function should return a value (interface = 2))
///  1	-	No return value, one pre-planned result set (AKA "query" procedure)
///  2	-	Return value, no dynamic cursors (NOT RETURNRESULTSETS)
Property interface As %Integer;

/// The number of columns defined as SQLRESULTCOL that are returned by executing this statement.
/// This is the same as columns.Count().
Property columnCount As %Integer;

/// columns is a collection of StatementColumn objects. Each StatementColumn object
/// contains the metadata a column defined by the statement as an SQLRESULTCOL column type.
Property columns As list Of %SQL.StatementColumn;

/// Index on column names and column number.
Property columnIndex As %String(MAXLEN = "") [ MultiDimensional ];

/// formalParameters is a collection of '?' parameters found in the prepared statement.
/// It may differ from the parameters collection if literal replacement occurred. This
/// property is mainly for internal use and metadata reporting. It is not meant to be used
/// for the statement descriptor.
Property formalParameters As list Of %SQL.StatementParameter;

/// The number of parameters defined in this statement. This is the same as
/// parameters.Count().
Property parameterCount As %Integer;

/// The parameters collection contains the metadata for each actual parameter
/// contained in the source statement. ..parameters.Count() is equivalent to the
/// number of '?' parameters found in the source statement and the list position
/// corresponds to the ordinal position of the '?' in the source statement.
Property parameters As list Of %SQL.StatementParameter;

/// A collection of StatementObject objects representing the columns that are object values.
Property objects As list Of %SQL.StatementObject;

/// GenerateMetadata constructs the serialized metadata from the query processor's info array.
///
/// IF %protocol 41 and higher:
///  metadata = $lb()
/// 		1 - # of SELECT columns
/// 		2 - i:  <For each SELECT column>
/// 			1) Name
/// 			2) ODBC Type
/// 			3) Precision
/// 			4) Scale
/// 			5) NULLABLE (integer)
/// 			6) Column Label (same as Name)
/// 			7) Column Table Name
/// 			8) Column Schema Name
/// 			9) Column Qualifier Name - NULL
/// 			10) $Char(1)/$Char(0) string / $Extract position:
/// 				1)  isAutoIncrement
/// 				2)  isCaseSensitive
/// 				3)  isCurrency
/// 				4)  IsReadOnly
/// 				5)  IsRowVersion
/// 				6)  IsUnique
/// 				7)  IsAliased
/// 				8)  IsExpression
/// 				9)  IsHidden
/// 				10) IsIdentity
/// 				11) IsKeyColumn
/// 				12) IsRowid
/// 				13) IsList
/// 		j - # of Parameters
/// 		j+1 - k:  <For each Parameter>
/// 			1) ODBC Type
/// 			2) Precision
/// 			3) Scale
/// 			4) NULLABLE
/// 				5) colName
/// 				6) colType
/// IF %protocol less than 41:
///  metadata = $lb()
/// 		1 - # of SELECT columns
/// 		2 - i:  <For each SELECT column>
/// 			1) Name
/// 			2) ODBC Type
/// 			3) Precision
/// 			4) Scale
/// 			5) NULLABLE
/// 			6) Column Label (same as Name)
/// 			7) Column Table Name
/// 			8) Column Schema Name
/// 			9) Column Qualifier Name - NULL
/// 		j - # of Parameters
/// 		j+1 - k:  <For each Parameter>
/// 			1) ODBC Type
/// 			2) Precision
/// 			3) Scale
/// 			4) NULLABLE
///
ClassMethod %GenerateMetadata(ByRef pInfo As %Binary, pStatementType As %Integer = 0, ByRef pMetadata As %Binary, ByRef pParameters As %Binary = "", ByRef pObjects As %Binary, ByRef pActual As %List = "", ByRef pDynamic As %List = "") As %Status
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
///
/// %SQL.StatementMetadata is a metadata class for dynamic statement metadata. The initial value is the metadata from a StatementCache object.
/// or it is the result set object itself.
///
/// pMetadata describes only the ROWTYPE metadata for a result set. Additional metadata is contained in pParameters and pObjects.
/// The non-ROWTYPE metadata is a single node for non-result columns (in pParameters) and a single node for object metadata (in pObjects).
Method %OnNew(pStatementType As %Integer = 0, ByRef pMetadata As %Binary = "", pParameters As %Binary = "", pObjects As %Binary = "", pArguments As %Binary = "", pActualBinding As %List = "", pDynamic As %List = "") As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// This method serializes the parameter collection as a metadata string in xDBC format.
Method getParameterMetadata() As %List [ Internal ]
{
}

/// Display metadata on the current device.
Method %Display() As %Status
{
}

Method printMetadata(pMetadata As %RawString) As %Status
{
}

Method GenerateRowType() As %Library.String(MAXLEN="") [ Internal, ServerOnly = 1 ]
{
}

}
