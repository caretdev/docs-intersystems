Class %Atelier.v1.Utils.General Extends %RegisteredObject [ Owner = {%Developer} ]
{

/// This method returns the path for the named CSP application
ClassMethod GetCSPAppPath(pName As %String, Output pPath) As %Status
{
}

/// This method parses a document header and extracts the name
ClassMethod GetNameFromDocArray(ByRef pTextArray, Output pName)
{
}

/// This method returns a list of accessible namespaces
ClassMethod AccessibleNamespaces(Output pList As %String)
{
}

/// This method takes a document name and computes a hash value
/// by applying the sha1 hash function to normalized source
ClassMethod GetDocHash(pName As %String, Output pHash As %String, Output pTextArray As %String) As %Status
{
}

/// Given an array of normalized text lines, compute the textual hash value
ClassMethod CalcHash(ByRef pTextArray As %String, Output pHash) As %Status
{
}

/// This method starts capturing the output from a program
ClassMethod BeginCaptureOutput(Output pCookie As %String) As %Status
{
}

/// This method retrieves the captured output and delivers it as an array of lines
ClassMethod EndCaptureOutput(pCookie As %String, Output pText As %DynamicArray) As %Status
{
}

/// <b>ValidateDocName</b> tests that a DocName has legal syntax
/// <p>
/// Returns a <class>%Boolean</class>:<ul>
/// <li>1 - If pDocName has legal DocName syntax
/// <li>0 - Otherwise</ul>
/// <p>
/// Also returns the Category of the document and a Boolean of whether the
/// document needs to be transmitted as binary or not.
///
ClassMethod ValidateDocName(pDocName As %String, Output pStatus, Output pCategory As %String, Output pBinary As %Boolean) As %Boolean
{
}

/// Given a document name, return the category. The <class>%Status</class> value is from <method>ValidateDocName</method>.
ClassMethod GetDocCategory(pDocName As %String, Output pCategory As %String) As %Status
{
}

/// <b>NormalizeDocName</b> adds the default package name to .cls files.  It also
/// down cases the DocName type for class and routine types.
/// <p>
/// The pDocName is assumed to have been validated by ..<method>ValidateDocName</method>.
/// <p>
/// Returns the normalized DocName as a <class>%String</class>.
///
ClassMethod NormalizeDocName(pDocName As %String) As %String
{
}

/// <b>ExistsDoc</b> checks that the item named by pDocName exists and returns
/// the appropriate <class>%Boolean</class> value.
///
ClassMethod ExistsDoc(pDocName As %String, Output pStatus) As %Boolean
{
}

/// <b>ValidType</b>(pType,pKeyword) checks that a Type attribute is valid.
/// If the type is valid then it is changed to upper case, inserted into the pKeywords
/// array (passsed by reference) and returned as the result of <b>ValidType</b>
/// <p>
/// If the type is invalid then <b>ValidType</b> returns "".
/// <p>
/// Note:  If the pKeywords array contains a conflicting Type value or
/// a conflicting LanguageMode value then the Type attribute is invalid.
///
ClassMethod ValidType(pType As %String, ByRef pKeywords As %String) As %String
{
}

/// <b>ValidLANG</b>(pMode,pKeyword) checks that a LanguageMode attribute
/// is valid.  If the mode is valid then it is inserted into the pKeywords
/// array (passed by reference) and returned as the result of <b>ValidLANG</b>
/// <p>
/// If the mode is invalid then <b>ValidLANG</b> returns "".
/// <p>
/// Note:  If the pKeywords array contains a conflicting Type value or
/// a conflicting LanguageMode value then the mode attribute is invalid.
///
ClassMethod ValidLANG(pMode As %String, ByRef pKeywords As %String) As %String
{
}

/// This method wraps a client document with an XML wrapper which allows it to be imported into InterSystems IRIS
ClassMethod WrapRtnDocWithXML(pDocumentArray As %String, Output pWrappedDocument As %Stream) As %Status
{
}

/// Return a normalized timestamp for a document
ClassMethod TS(pDocName, ByRef pUpToDate) As %String
{
}

/// Given the name of a class, return the database to which it is mapped
ClassMethod GetDbForDoc(pDocName As %String, Output pDatabase) As %Status
{
}

/// Given an array of hashes which represent databases, and using the database mappings for the
/// current namespace, return a list of documents of the requested type which have been modified
/// after the given hash was generated. The list is in the returned process private global.
ClassMethod GetModifiedDocuments(ByRef pHashes, pType As %String, ByRef pGbl As %String, pShowGenerated As %Boolean = 1) As %Status
{
}

ClassMethod GetModifiedClassesIndex(ByRef dirlist, dbdir As %String, dbname As %String, pShowGenerated As %Boolean, hashIn As %String, ByRef hashOut As %String) As %Status [ Private ]
{
}

ClassMethod GetModifiedRoutinesIndex(pType As %String, ByRef dirlist, dbdir As %String, dbname As %String, pShowGenerated As %Boolean, hashIn As %String, ByRef hashOut As %String) As %Status [ Private ]
{
}

/// Given a database name and a hash value, return a list of documents of the requested type which have been modified
/// after the given hash was generated. The current hash value will be returned in the pHash argument.
ClassMethod GetModifiedDocumentsDB(pDatabase As %String, ByRef pHash As %String, pType As %String, Output pDocs As %String, pShowGenerated As %Boolean = 1) As %Status
{
}

ClassMethod GetDbNameFromDir(pDir As %String) As %String
{
}

/// Create a document object
ClassMethod CreateDocumentObject(Output pDocObject As %DynamicObject, ByRef pDocArray, pName As %String, pDocStatus As %Status, pTimeStamp As %String, pUpToDate As %Boolean) As %Status
{
}

/// Create a document collection object from an array of document objects
ClassMethod CreateDocumentCollection(ByRef pArray) As %Atelier.v1.Utils.LazyCollection
{
}

/// Output a message array
ClassMethod WriteMsg(ByRef pMsgArray As %String)
{
}

/// Compute a hash value but replace potentially problematic characters
ClassMethod Hash(pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Encode a stream as BASE64
ClassMethod Base64FromStream(pStream As %Stream, Output pEncoded As %Stream) As %Status
{
}

/// Return list of databases where the routines for a namespace are mapped.
/// It does not include the default database.
ClassMethod NamespaceDbList(pNamespace As %String, Output pDB As %String) As %Status
{
}

/// Given the database directory definition, get the creation time hash value
ClassMethod GetDbdirCrhash(pDbdir As %String, Output pHash As %String) As %Status
{
}

ClassMethod Compile(ByRef pItemArray As %String, pFlags As %String, pGetSource As %Boolean = 1, Output pResult As %DynamicObject) As %Status
{
}

/// For use via the Query API (/:namespace/action/query):
/// Returns a token for use in CSPCHD in a URL
/// May validate and extend an existing token (pToken)
ClassMethod GetCSPToken(pPage As %String, pToken As %String = "") As %String [ SqlProc ]
{
}

/// Get the routine mappings and break them out into
/// lists for each routine type
ClassMethod GetRoutineMappings(Output rtndir) As %Status
{
}

}
