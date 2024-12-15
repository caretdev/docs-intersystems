/// The source system receives queries from the destination via TCP and sends answers.
/// Objects of this class are maintained automatically by the system and should not
/// be modified.  This class can be queried to obtain the running state of any DataCheck
/// configurations for which this system is acting as a source.
/// <p>
/// See <CLASS>System</CLASS> for overview.
Class SYS.DataCheck.Source Extends SYS.DataCheck.System
{

/// Name of the DataCheck destination system initiating the connection
Property DestinationName As SystemName;

/// Host of the destination system initiating the connection
Property DestinationHost As %String;

/// We've inherited a TCP socket from our parent, the Super Server.
/// Get marching orders from our peer.
/// The sslerr is true when Super Server SSL is Required but the incoming connection is non-SSL.
ClassMethod StartJobFromServer(sslerr As %Integer) As %Status [ Internal ]
{
}

ClassMethod AuthenticationError(msg) [ Internal ]
{
}

/// The Source Query Manager
Method Manager() [ Internal ]
{
}

/// The Source Sender dequeues query answers from the MainQ and sends them to the destination Receiver
Method Sender() [ Internal ]
{
}

/// The Utility job answers requests for information required by the destination.
/// It holds no lock and must not perform any actions that could interfere with the running system.
Method Utility() [ Internal ]
{
}

}
