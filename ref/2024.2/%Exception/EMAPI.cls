/// An EMAPI exception is instantiated and thrown when the Enterprise Manager remote API wishes to return an error.
Class %Exception.EMAPI Extends %Exception.AbstractException
{

ClassMethod Create(name As %String = "", data As %String = "") As %Exception.EMAPI [ Internal ]
{
}

ClassMethod CreateFromFault(fault As %SOAP.Fault) As %Exception.EMAPI [ Internal ]
{
}

ClassMethod ClientError(text As %String) As %Exception.EMAPI [ Internal ]
{
}

ClassMethod EMError(text As %String) As %Exception.EMAPI [ Internal ]
{
}

Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

}
