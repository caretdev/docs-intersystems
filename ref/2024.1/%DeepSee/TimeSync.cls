/// Subclass this class to implement a class that processes all objects of the specified class that have been
/// modified since the last time the <method>%Synchronize</method> or the <method>%SynchronizeAll</method> was run.
/// <br>
/// All objects in the extent of the specified class can be processed by invoking the <method>%SynchronizeAll</method>.
/// </p>
/// <p>
/// The user implements <method>%OnProcessObject</method>. This method is responsible for concurrency and for
/// processing the object. For example, the class might be used to synchronize a objects extent with
/// some external archive. The user can also implement <method>%OnProcessStart</method> that will be called before
/// processing any objects and <method>%OnProcessEnd</method> method that will be called after processing the objects
/// is finished.
/// </p>
Class %DeepSee.TimeSync [ Abstract, System = 3 ]
{

/// <p>
/// For the specified class invoke %OnProcessObject for all objects that have been updated since the last time
/// this class was processed by either <var>%Synchronize</var> or <method>%SynchronizeAll</method>.
/// <method>%OnProcessStart</method> is called before processing any objects. <method>%OnProcessEnd</method>
/// is called after processing all objects is finished.
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pClassName</td>
/// 		<td>Input</td>
/// 		<td>The name of the class to synchronize. This class must be persistent and declare DSTIME as AUTO or MANUAL.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pVerbose</td>
/// 		<td>Input</td>
/// 		<td>If true (a non-zero integer) then status messages will be written to the current device.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pObjectsUpdated</td>
/// 		<td>Output</td>
/// 		<td>
/// 			The number of objects processed by this operation.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>%Status value indicating success or failure.</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %Synchronize(pClassName As %String(MAXLEN=250) = "", pVerbose As %Boolean = 1, Output pObjectsUpdated As %Integer) As %Status
{
}

/// <p>
/// For the specified class invoke %OnProcessObject for all objects in the extent of the specified
/// class. <method>%OnProcessStart</method> is called before processing any objects. <method>%OnProcessEnd</method>
/// is called after processing all objects is finished.
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pClassName</td>
/// 		<td>Input</td>
/// 		<td>The name of the class to synchronize. This class must be persistent and declare DSTIME as AUTO or MANUAL.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pVerbose</td>
/// 		<td>Input</td>
/// 		<td>If true (a non-zero integer) then status messages will be written to the current device.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pObjectsUpdated</td>
/// 		<td>Output</td>
/// 		<td>
/// 			The number of objects processed by this operation.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>%Status value indicating success or failure.</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %SynchronizeAll(pClassName As %String(MAXLEN=250) = "", pVerbose As %Boolean = 1, Output pObjectsUpdated As %Integer) As %Status
{
}

/// <p>
/// This method is called by the <method>%Synchronize</method> and <method>%SynchronizeAll</method> methods
/// before processing any objects.
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pClassName</td>
/// 		<td>Input</td>
/// 		<td>The name of the class that is being processed.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pAll</td>
/// 		<td>Input</td>
/// 		<td>True (1) if called by <method>%SynchronizeAll</method>.</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>%Status value indicating success or failure. If failure is reported then no further processing by the
/// 			calling method will be performed.
/// 			</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %OnProcessStart(pClassName As %String(MAXLEN=""), pAll As %Integer = 0) As %Status
{
}

/// <p>
/// This method is called by the <method>%Synchronize</method> and <method>%SynchronizeAll</method> methods
/// after processing is completed.
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pClassName</td>
/// 		<td>Input</td>
/// 		<td>The name of the class that is being processed.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pAll</td>
/// 		<td>Input</td>
/// 		<td>True (1) if called by <method>%SynchronizeAll</method>.</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>%Status value indicating success or failure. If failure is reported then no further processing by the
/// 			calling method will be performed.
/// 			</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %OnProcessEnd(pClassName As %String(MAXLEN=""), pAll As %Integer = 0) As %Status
{
}

/// <p>
/// This method is called by the <method>%Synchronize</method> and <method>%SynchronizeAll</method> methods
/// for each object to be processed. The user is expected to define this method to implement the desired processing.
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pClassName</td>
/// 		<td>Input</td>
/// 		<td>The name of the class to synchronize. This class must be persistent and declare DSTIME as AUTO or MANUAL.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pID</td>
/// 		<td>Input</td>
/// 		<td>The ID of the object to process.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pFileAction</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The type of filing event. When synchronizing all objects from a class this value will be 1 (Insert). <br>
/// 			The <var>pFileAction</var> values are:
/// 			<table>
/// 				<tr><th align="left">Code</th><th align="left">Operation</th>
/// 				<tr><td>0</td><td align="center">Update</td></tr>
/// 				<tr><td>1</td><td align="center">Insert</td></tr>
/// 				<tr><td>2</td><td align="center">Delete</td></tr>
/// 			</table>
/// 			<br>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pTimeStamp</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The timestamp (segment ID) in which this object (identified by <var>pID</var>) was filed. When synchronizing all objects from a class this value will be 0. <br>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>%Status value indicating success or failure.</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %OnProcessObject(pClassName As %String(MAXLEN=""), pID As %String(MAXLEN="") = "", pFileAction As %Integer = 0, pTimeStamp As %Integer) As %Status
{
}

/// <p>
/// This method can be called by the user at any time to reset the DSTIME stamp of the last synchronization for a given class.
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pClassName</td>
/// 		<td>Input</td>
/// 		<td>The name of the class whose timestamp data is to be reset.</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>%Status value indicating success or failure.</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %ResetTime(pClassName As %String(MAXLEN="")) As %Status
{
}

}
