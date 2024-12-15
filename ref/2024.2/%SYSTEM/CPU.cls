/// This class holds information about available processors.
/// The number of threads (virtual or logical cpus), cores
/// and chips always reflect the situation in the current
/// partition or processor set.
Class %SYSTEM.CPU Extends (%RegisteredObject, %SYSTEM.Help) [ System = 4 ]
{

/// Architecture, eg: x86, Itanium, SPARC, PA-RISC
Property Arch As %String;

/// Chip model, eg: Pentium 4, POWER5
Property Model As %String;

/// Chip vendor, eg: Intel, Sun, IBM
Property Vendor As %String;

/// Total number of threads (virtual or logical cpus)
Property nThreads As %Numeric;

/// Total number of cores
Property nCores As %Numeric;

/// Total number of chips
Property nChips As %Numeric;

/// Number of threads per core (physical property)
Property nThreadsPerCore As %Numeric;

/// Number of cores per chip (physical property)
Property nCoresPerChip As %Numeric;

/// Clock in MHz
Property MHz As %Numeric;

/// Is Hardware Multi-Threading supported?
Property MTSupported As %Boolean;

/// Is Hardware Multi-Threading enabled? (eg: HyperThreading(Intel) or SMT(ppc))
Property MTEnabled As %Boolean;

/// Is IRIS running inside a cgroup
Property InsideCgroup As %Numeric;

/// cgroup cfs period in us
Property PeriodUs As %Numeric;

/// cgroup cfs quota in us
Property QuotaUs As %Numeric;

/// Force update and get new properties
Method Refresh() As %Status
{
}

/// Query the system and update object properties
Method GetProperties() As %Status [ Private ]
{
}

Method %OnNew() As %Status
{
}

/// Display CPU information
ClassMethod Dump()
{
}

}
