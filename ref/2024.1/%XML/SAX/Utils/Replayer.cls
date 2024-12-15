/// This classes exposes a single class method which can replay a recording of an XML Parse
/// Use the %XML.SAX.Recorder content handler to record the sequence of calls and their parameters
/// made by the SAX parser. You can then substitute your own content handler witht the Replay method
/// below to simulate a parse by the SAX parser. This greatly aids in debugging as the debugger cannot
/// be activated during a regular CacheSAX callback.
Class %XML.SAX.Utils.Replayer Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// Target is the key in IRIS.Temp into which %XML.SAX.Recorder has placed its data
/// Handler is your %XML.SAX.ContentHandler subclass
ClassMethod Replay(Target As %Integer, Handler As %XML.SAX.ContentHandler)
{
}

}
