/// This class is a datatype class defining what a valid comment can be in the CPf file.
Class Config.CommentList Extends %Library.String [ System = 4 ]
{

/// Validate a comment list in the form $lb(property,Comment,Comment1,Comment2,...,CommentX).<br>
ClassMethod IsValid(%Val As %RawString) As %Status [ Internal ]
{
}

}
