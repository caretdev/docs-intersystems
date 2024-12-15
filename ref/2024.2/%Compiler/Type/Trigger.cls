/// Trigger member superclass, for internal use only
Class %Compiler.Type.Trigger [ NoContext, System = 1 ]
{

ClassMethod Execute(%oper As %Integer = 0, ByRef pNew, ByRef pOld, ByRef pChanged, ByRef %ok, ByRef %msg) [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

ClassMethod ExecutePy(trigger As %Library.TriggerHelper) [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

}
