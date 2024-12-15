/// Defines an input/output port for a <class>sprite</class> object.<br>
Class %ZEN.SVGComponent.port Extends svgObject [ Deprecated, System = 3 ]
{

/// Type of this port: input or output.<br>
Property type As %ZEN.Datatype.string(VALUELIST = ",input,output");

/// x position of this port.<br>
Property x As %ZEN.Datatype.float [ InitialExpression = 0 ];

/// y position of this port.<br>
Property y As %ZEN.Datatype.float [ InitialExpression = 0 ];

/// List of connectors connected to this port.
Property connectors As list Of connector(XMLPROJECTION = "NONE");

/// Render the svg for this port.
ClientMethod renderPort() [ Language = javascript ]
{
}

/// Internal method: add a connector to this port.
/// Return true if successful.
ClientMethod addConnector(connector) [ Language = javascript ]
{
}

/// Internal method: update position of all connectors
/// connected to this port.
ClientMethod updateConnectors() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
