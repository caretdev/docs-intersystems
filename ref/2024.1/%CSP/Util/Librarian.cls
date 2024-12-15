/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Utility class that is used to find DocBook entries that correspond to
/// Management Portal Pages.
Class %CSP.Util.Librarian [ Abstract, System = 4 ]
{

/// Find closest link to DocBook page given an array contain topic information.
/// pID(1) is a category, pID(2) is a sub-category.
ClassMethod FindDocBookLink(ByRef pID As %String, pReturnType As %String = 0) As %String
{
}

}
