/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25iKnow.Model.listFiles">NLP Domains</a>.</p>
/// <p>Subclass of <class>%iKnow.Model.list</class> dedicated to represent lists for the
/// File Lister. This class has its own set of properties representing the specific Lister
/// paramaters of the File Lister and hence is more easy to use than the generic list class.
/// Any &lt;parameter&gt; elements nested within this element will be overwritten with the values
/// specified for the corresponding shorthand attributes.</p>
/// <p>See also <class>%iKnow.Source.File.Lister</class> for more details on these Lister
/// Parameters.</p>
Class %iKnow.Model.listFiles Extends %iKnow.Model.list [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "files";

Property listerClass As %String(MAXLEN = 250, XMLPROJECTION = "attribute") [ InitialExpression = "%iKnow.Source.File.Lister", ReadOnly ];

/// The filesystem path, accessible to this InterSystems IRIS instance, where to load data from.
Property path As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// Whether or not to recurse into subdirecories of <property>path</property>
Property recursive As %Boolean(XMLPROJECTION = "attribute");

/// Which file extensions to consider. Leave empty to load all files.
Property extensions As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// If set, this COS expression is called using xecute command for every file discovered by the
/// File Lister. If it returns false, the file is skipped.
Property filterCondition As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// The encoding to use when processing files in this location. (Note that this is actually a
/// parameter of the File Processor <class>%iKnow.Source.File.Processor</class>)
Property encoding As %String(XMLPROJECTION = "attribute");

ClassMethod %OnBeforeApplyParams(pCode As %CharacterStream, pVar As %String, pObj) [ CodeMode = objectgenerator, Internal ]
{
}

}
