/// Provide IRIS metrics and alerts for Prometheus, SAM Manager and other monitoring.
Class %Api.Monitor Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

/// Collect the system metrics and send them to the client in Prometheus Exposition Format.
ClassMethod metrics() As %Status
{
}

/// Collect all system alerts from alerts.log and send them to the client as JSON.
ClassMethod alerts() As %Status
{
}

}
