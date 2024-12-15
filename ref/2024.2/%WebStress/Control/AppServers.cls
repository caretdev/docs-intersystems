Class %WebStress.Control.AppServers Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Property AppServer As %String(TRUNCATE = 1);

Property Address As %String(TRUNCATE = 1);

Property Port As %Integer;

Property URL As %String(MAXLEN = 255, TRUNCATE = 1);

Property CommunicationStatus As %Boolean;

Property RequestedStatus As %Boolean;

Property CurrentStatus As %Boolean;

}
