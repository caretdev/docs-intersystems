/// ObjectScript API for building Hyper Log Log estimates of the number of unique elements (cardinality) in a group of data.<br><br>
/// The estimates are kept in containers called sketches. The containers are identified by the <property>id</property> of this class.<br>
/// Lets assume you have 1 million pieces of data and want to know how many of those pieces are unique:<br>
/// 1) Use <method>%New</method> to instantiate a new HLL object:<br><pre>
///    set hll= ##class(%SQL.HLL).%New()</pre><br>
/// 2) Feed one million pieces of data into the sketch with <method>update</method>:<br><pre>
///    for i=1:1:1000000 {do hll.update(i)}</pre><br>
/// 3) Get an estimate of the cardinality by calling <method>estimate</method><br><pre>
///    write hll.estimate()</pre><br><pre>
///    996537</pre><br><br>
/// Notes: We test this class at Intersystems by using murmur hash with a seed of hll.#SEED:<br>
///        $zcrc(yourdata,9,2059198193) or $zcrc(yourdata,9,hll.#SEED)<br>
///        The underlying library uses 64 bits of this 128 bit hash.<br><br>
/// Estimate Partitioning: pass an existing sketch into <method>%New</method> to initialize its state<br>
/// from the standard serialized form (optionally Base64 encoded).<br>
/// To combine estimates <method>get</method> and <method>merge</method> your sketches, if your data is distributed<br>
/// across many processes.
Class %SQL.HLL Extends %RegisteredObject
{

/// Whether or not to Base64 encode/decode by default during <method>get</method> and <method>%New</method>
Parameter ENCODE = 1;

/// Murmur hash seed to use for $zcrc(,9,)
Parameter SEED = 2059198193;

Parameter %MODULENAME [ Internal ] = 15;

/// Internal identifier of allocated memory for this HLL sketch's representation as managed by the callout library
Property id As %Integer [ Internal, ReadOnly ];

/// Whether the estimator is currently sparse or dense
Property type As %String [ Calculated, ReadOnly ];

/// Precision of the estimator
Property precision As %Integer [ Calculated, ReadOnly ];

/// Index of $zf(-4) addresses
Property libIndex As %Integer [ Internal, MultiDimensional, Private ];

Method getFunctionID(function As %String) As %Integer [ Internal ]
{
}

ClassMethod getLibraryID() As %Integer [ Internal ]
{
}

/// Creates the memory and sets <property>id</property> for a new sketch. If you pass the sketch parameter, the new sketch will be initialized with the serialized sketch you passed in.
Method %OnNew(sketch As %Binary = "", decode As %Boolean = {..#ENCODE}, Output err As %String = "") As %Status
{
}

/// Updates this sketch with the user supplied hash value<br>
/// Use $zcrc(yourdata,9,2059198193) or $zcrc(yourdata,9,hll.#SEED) to get the hash.<br>
Method updateHash(hash As %Binary) As %Integer [ Language = cpp ]
{
}

/// Updates this sketch with the $zcrc(,9,) hash of the stringdata. Hash done inside API.<br>
Method update(stringdata As %Binary) As %Integer [ Language = cpp ]
{
}

/// Merges the supplied sketch object into the current one. This merges the cardinality estimates.
Method merge(other As %SQL.HLL, Output err As %String = "") As %Status
{
}

/// Returns the current unique value estimate (cardinality) for this sketch.
Method estimate(Output err As %String = "") As %Integer
{
}

/// Returns the serialized form of the current sketch so that multiple sketches can be merged.
/// Potentially you might obtain the sketch from a different process.
Method get(encode As %Boolean = {..#ENCODE}, Output err As %String = "") As %Binary
{
}

/// Frees up the memory associated with this sketch.
/// After this method has been called, subsequent calls for this sketch will yield a <FUNCTION>
/// error. This method is called implicitly by the object destructor.
Method releaseSketch(Output err As %String = "") As %Status [ Internal ]
{
}

/// Helper method to retrieve metadata for the current sketch.
Method info(Output type As %String, Output precision As %String, Output err As %String) As %Status [ Internal ]
{
}

Method typeGet() As %String [ Internal, ServerOnly = 1 ]
{
}

Method precisionGet() As %Integer [ Internal, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status
{
}

/// Returns the version of the underlying callout library.
ClassMethod version() As %Integer
{
}

}
