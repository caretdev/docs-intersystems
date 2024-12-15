Class %Embedding.TextSplitter Extends %RegisteredObject
{

/// Splits text into chunks naively based on one separator.
ClassMethod split(text As %String, separator As %String = " ", chunkSize As %Integer = 4000, overlap As %Integer = 200, stripWhitespace As %Boolean = 1) As %List
{
}

/// Splits text into chunks recursively, based on a list of separators.
ClassMethod recursiveSplit(text As %String, separators As %DynamicArray, chunkSize As %Integer = 4000, overlap As %Integer = 200, stripWhitespace As %Boolean = 1, separatorIdx = 0) As %List
{
}

/// Method to merge splits to reach desired chunkSize and overlap
ClassMethod mergeSplits(splits As %List, chunkSize As %Integer = 4000, overlap As %Integer = 200, separator As %String = " ", stripWhitespace As %Boolean = 1) As %List
{
}

}
