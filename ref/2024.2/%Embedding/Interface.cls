/// Abstract class for %Embeddings. Each child class should
Class %Embedding.Interface Extends %RegisteredObject [ Abstract ]
{

/// Abstract method to retrieve embeddings. To be implemented by subclass of %Embedding
ClassMethod Embedding(input, configuration) As %Vector [ Abstract ]
{
}

/// Abstract method to validate configuration. To be implemented by subclass of %Embedding
ClassMethod IsValidConfig(config As %DynamicObject, ByRef errorMsg As %String) As %Boolean [ Abstract ]
{
}

}