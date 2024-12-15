///
/// %ML Utilities
///
Class %ML.Utils [ System = 4 ]
{

///
/// Invoke a method and capture it's output to the specified stream
///
ClassMethod %RunMethodWithCapture(%oref As %ObjectHandle, %method As %String, %log As %GlobalCharacterStream = {$$$NULLOREF}, ByRef %result, %args...) As %Status [ Internal, ProcedureBlock = 0 ]
{
}

///
/// Kills ALL data: models, trained models and training runs
///
/// !!! WARNING: Do not use without knowing what this does !!!
///
ClassMethod %KillAllData() As %Status
{
}

}
