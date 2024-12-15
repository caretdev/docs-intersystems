/// This class stores various Embedding endpoints as a table.
/// To use the EMBEDDING SQL function or the %Embedding datatype, users need to first insert a configuration into this table
Class %Embedding.Config Extends %Persistent [ Final ]
{

/// Name of configuration, to be referenced when using the EMBEDDING SQL function or the %Embedding datatype
Property Name As %String(MAXLEN = 100) [ Required ];

/// JSON formatted string that contains class specific configuration details. Refer to the Embedding Class's IsValidConfig for more information
Property Configuration As %String(MAXLEN = "") [ Required ];

/// Name of %Embedding class that extends %Embedding.Interface. Eg. %Embedding.SentenceTransformers
Property EmbeddingClass As %String(MAXLEN = 250) [ Required ];

/// Length of embedding vector. If using %Embedding.SentenceTransformers, this can be left empty and will be automatically computed. If not, users must provide the vector length.
Property VectorLength As %Integer [ SqlComputed, SqlComputeOnChange = %%UPDATE ];

/// Optional description of configuration
Property Description As %String(MAXLEN = 5000);

Trigger ValidateConfig [ Event = INSERT/UPDATE ]
{
}

ClassMethod VectorLengthComputation(cols As %Library.PropertyHelper) As %String
{
}

}
