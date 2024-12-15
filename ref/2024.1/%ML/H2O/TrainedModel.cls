Class %ML.H2O.TrainedModel Extends %ML.TrainedModel [ ClassType = persistent ]
{

Property h2oProvider As %ML.H2O.Provider [ Transient ];

Property ByteStream As %Stream.GlobalBinary;

/// Cached info
Property withcolumnnames As %List [ Internal, Transient ];

/// Cached info
Property withcolumntypes As %List [ Internal, Transient ];

///
/// Begin trained model operations
///
Method %Begin() As %Status
{
}

///
/// End trained model operations
///
Method %End() As %Status
{
}

///
/// Bulk Predict
///
/// arguments:
/// 	tfn		 - tempfile index
/// 	argspos		 - Positions of the WithColumns in the temp rows, $list(column-positions)
/// 	predpos		 - Position of the predicted value, $list(result-column-positions)
/// 	probpos		 - Position of the probability value, $list(result-column-positions)
/// 	expr		 - expression for probability
/// returns:
/// 	$$$OK on success, otherwise a $$$ERROR(...)
///
Method %PredictAll(tfn As %Integer, argspos As %List, predpos As %List = "", probpos As %List = "", expr As %String = "") As %Status
{
}

Method %Predict(data As %List, ByRef results As %List) As %Status
{
}

///
/// Predict probability on an ML model
/// Arguments:
/// 	expr:     The argument of PROBABILITY's FOR clause, defaults to 1
/// 	data:     $List of WITH clause values
/// 	results:  PBR, return value
Method %Probability(expr As %String = 1, data As %List, ByRef results As %List) As %Status
{
}

Method predictORprobability(expr As %String, data As %List, ByRef results As %List, predict As %Boolean) As %Status [ Internal ]
{
}

Method PredictAllH2O(select As %String, selectcnt As %String, predictingcolumn As %String, classname As %String) As %Status [ Internal ]
{
}

Method ProbAllH2O(select As %String, selectcnt As %String, predictingcolumn As %String, classname As %String, expr As %String) As %Status [ Internal ]
{
}

}
