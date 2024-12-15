Class %SYS.Studio.DocumentHistory Extends %RegisteredObject [ System = 3 ]
{

ClassMethod Add(DocumentName As %String, Action As %String = 1, Namespace As %String = {$namespace}, Username As %String = {$USERNAME}, MaxItems As %Integer = 100)
{
}

ClassMethod Delete(DocumentName As %String, Namespace As %String = {$namespace}, Username As %String = {$USERNAME}) As %Integer
{
}

ClassMethod Get(Namespace As %String = {$namespace}, Username As %String = {$USERNAME}, MaxItems As %Integer = 100) As %String
{
}

ClassMethod GetWithDate(Namespace As %String = {$namespace}, Username As %String = {$USERNAME}, MaxItems As %Integer = 100) As %String
{
}

ClassMethod Clear(Namespace As %String = {$namespace}, Username As %String = {$USERNAME})
{
}

}
