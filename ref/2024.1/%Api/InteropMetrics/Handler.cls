/// Default rest handler for /api/monitor/interop/. Forwards requests to the highest version of the API if no version specified.
/// Provide Interoperability metrics in Prometheus format
Class %Api.InteropMetrics.Handler Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

}
