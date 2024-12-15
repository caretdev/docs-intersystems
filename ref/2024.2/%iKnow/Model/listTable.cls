/// <p>Subclass of <class>%iKnow.Model.list</class> dedicated to represent lists for the
/// SQL Lister, geared to one specific table/class.
/// This class has its own set of properties mapping to the specific Lister
/// paramaters of the SQL Lister and hence is more easy to use than the generic list class.
/// Any &lt;parameter&gt; elements nested within this element will be overwritten with the values
/// specified for the corresponding shorthand attributes.</p>
/// <p>See also <class>%iKnow.Source.SQL.Lister</class> for more details on these Lister
/// Parameters.</p>
Class %iKnow.Model.listTable Extends %iKnow.Model.list [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "table";

Property listerClass As %String(MAXLEN = 250, XMLPROJECTION = "attribute") [ InitialExpression = "%iKnow.Source.SQL.Lister", ReadOnly ];

/// The table which contents should be indexed.
Property tableName As %String(MAXLEN = 500, XMLPROJECTION = "ATTRIBUTE");

/// An optional WHERE clause to filter the contents of table <property>tableName</property>
Property whereClause As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

/// The column in table <property>tableName</property> containing the local reference to use for
/// constructing the external ID for a loaded source.
Property idField As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

/// The column in table <property>tableName</property> containing the group name to use for
/// constructing the external ID for a loaded source.
Property groupField As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

/// The columns in table <property>tableName</property> containing the actual data to be indexed.
Property dataFields As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

/// The columns in table <property>tableName</property> containing any metadata values to be
/// stored with loaded sources.
Property metadataColumns As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// The names of the metadata fields positionally corresponding to the columns identified in
/// <property>metadataColumns</property>. If left empty, the column names in
/// <property>metadataColumns</property> are expected to correspond to metadata field names
/// themselves.
Property metadataFields As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

ClassMethod %OnBeforeApplyParams(pCode As %CharacterStream, pVar As %String, pObj) [ CodeMode = objectgenerator, Internal ]
{
}

}
