/// Extends the %Embedding.Interface class, using Hugging Face's SentenceTransformers package.
Class %Embedding.SentenceTransformers Extends %Embedding.Interface
{

/// Validates %Embedding.Config's Configuration property.
/// {
/// "modelName" : <Name of sentence_transformers model>,
/// "hfCachePath" : <Path to cache folder where models will be downloaded>,
/// "hfToken" : <Optional token to access gated hugging face models>,
/// "checkTokenCount": <Optional, whether to check token count of input>,
/// "maxTokens": <Optional, token threshold for input>
/// "pythonPath": <Optional, path to use to retrieve python packages>}
/// Also checks if the python package 'sentence_transformers' is installed.
ClassMethod IsValidConfig(config As %DynamicObject, ByRef errorMsg As %String) As %Boolean
{
}

/// Generates embeddings locally using sentence_transformers
ClassMethod Embedding(input As %String, configuration As %String) As %Vector
{
}

/// Embedded python function that uses sentence_transformers to retrieve embeddings. Example modelName: sentence-transformers/all-MiniLM-L6-v2
ClassMethod EmbeddingPy(modelName As %String, input As %String, cacheFolder As %String, token As %String, checkTokenCount As %Boolean, maxTokens As %Integer, pythonPath As %String = "") [ Language = python ]
{
}

ClassMethod DownloadModel(modelName As %String, cacheFolder As %String, token As %String, pythonPath As %String = "") [ Language = python ]
{
}

/// Throws an error if python package 'sentence_transformers' is not installed.
ClassMethod CheckInstall(pythonPath As %String = "") [ Language = python ]
{
}

/// Retrieves a model's vector length using the sentence_transformers package
ClassMethod GetVectorLength(modelName As %String, pythonPath As %String = "", cacheFolder As %String = "") As %Integer [ Language = python ]
{
}

/// Helper function to retrieve a model's maximum input tokens using the sentence_transformers package
ClassMethod GetMaxTokens(modelName As %String, pythonPath As %String = "", cacheFolder As %String = "") As %Integer [ Language = python ]
{
}

}
