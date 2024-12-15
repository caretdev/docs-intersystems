Class %Monitor.System.CSPGateway Extends %Monitor.System.Adaptor [ System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CSPGateway";

Parameter INDEX [ Internal ] = "GatewayName";

/// Name of dataset
Property GatewayName As %Monitor.String;

Property GWNumber As %Monitor.Integer;

Property GWVersion As %Monitor.String;

Property Activity As %Monitor.String;

Property MaxConnections As %Monitor.Integer;

Property ActualConnections As %Monitor.Integer;

Property InUseConnections As %Monitor.Integer;

Property PrivateConnections As %Monitor.Integer;

Property GWRegistry As %CSP.Mgr.GatewayRegistry;

Property GWList As %Library.ListOfObjects;

/// Initialize Gateway metrics.
Method Initialize() As %Status
{
}

/// Interrogate the Gateway to obtain metrics
/// <br><br>
/// A return code of $$$OK indicates there is a new Gateway instance.<br>
/// A return code of 0 indicates there is no Gateway instance.
Method GetSample() As %Status
{
}

ClassMethod SetAlert(Minimum As %Integer) As %Integer
{
}

}
