/// A %Monitor data type class representing a Counter. Corresponds to the SNMP Counter32 data type.
/// May only increase and will wrap when it reaches the maximum 32 bit value.
Class %Monitor.Counter Extends %Monitor.Integer [ Not ProcedureBlock, System = 3 ]
{

}