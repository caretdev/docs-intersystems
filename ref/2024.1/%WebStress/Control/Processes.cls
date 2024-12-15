Class %WebStress.Control.Processes Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Property Script As %String(TRUNCATE = 1);

Property Generator As %String(TRUNCATE = 1);

Property WebServer As %String(TRUNCATE = 1);

Property WebServerPort As %Integer [ InitialExpression = 80 ];

Property RequestedProcesses As %Integer;

Property StartedProcesses As %Integer;

}
