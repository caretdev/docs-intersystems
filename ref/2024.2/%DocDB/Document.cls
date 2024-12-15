Class %DocDB.Document Extends %Persistent [ Abstract, NoExtent ]
{

Parameter USEEXTENTSET = 1;

Property %DocumentId As %Integer(MINVAL = 1) [ Identity ];

/// This property holds the document state. Serialization is JSON.
Property %Doc As %Library.DynamicAbstractObject;

Property %LastModified As %Library.UTC [ SqlComputeCode = { set {*} = ##class(%Library.UTC).NowUTC() }, SqlComputed, SqlComputeOnChange = (%%INSERT, %%UPDATE) ];

ClassMethod %Size() As %Integer [ CodeMode = objectgenerator ]
{
}

}
