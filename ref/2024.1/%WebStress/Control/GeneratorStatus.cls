Class %WebStress.Control.GeneratorStatus Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Property Running As %Integer(DISPLAYLIST = ",Running,Not running", VALUELIST = ",0,1");

Property Status As %Integer;

Property GenSystemID As %String(MAXLEN = 255);

}
