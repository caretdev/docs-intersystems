/// Extends the %Embedding.Interface class, using OpenAI's API endpoint.
Class %Embedding.OpenAI Extends %Embedding.Interface
{

/// Validates %Embedding.Config's Configuration property.
/// { "modelName": <Embedding model name>, "apiKey" : <OpenAI Api Key>, "sslConfig" : <Name of SSL Configuration>, "checkTokenCount": <Optional, whether to check token count of input>, "maxTokens": <Optional, token threshold for input>, "httpConfig": <Optional JSON of http configurations>}
/// As OpenAI's API uses a https endpoint, User must set up a SSL config in the Management Portal: System Administration -> Security -> SSL/TSL Configurations -> Create new configuration
ClassMethod IsValidConfig(config As %DynamicObject, ByRef errorMsg As %String) As %Boolean
{
}

/// Generates embeddings using Open AI's embedding API endpoint
ClassMethod Embedding(input As %String, configuration As %String) As %Vector
{
}

ClassMethod EstimateTokenCount(input As %String)
{
}

}
