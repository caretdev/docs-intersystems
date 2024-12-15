/// For Studio temaplates make sure they stay until the Studio connection is closed.
Class %CSP.StudioTemplateEvent Extends %CSP.SessionEvents [ System = 4 ]
{

/// Handle EndSession event
ClassMethod OnEndSession()
{
}

}
