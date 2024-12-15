/// This class provides an API for node-level configuration of sharded clusters.
/// <p>You can use it via the special $SYSTEM object, for example:</p>
/// <pre>set status = $SYSTEM.Cluster.Initialize()</pre>
/// <h2>API Usage</h2>
/// <p>Call <method>Initialize</method> to set up an InterSystems IRIS instance as the first node of a new nonmirrored sharded cluster (that is,
/// a sharded cluster in which all data nodes are nonmirrored).</p>
/// <p>Call <method>InitializeMirrored</method> to set up an InterSystems IRIS instance as the first node of a new mirrored sharded cluster (that is,
/// a sharded cluster in which all data nodes are mirrored).</p>
/// <p>Call <method>AttachAsDataNode</method> to add an instance to a cluster as a nonmirrored data node.</p>
/// <p>Call <method>AttachAsMirroredNode</method> to add an instance to a cluster as a mirrored data node.</p>
/// <p>Call <method>AttachAsComputeNode</method> to add an instance to a cluster as a compute node.</p>
/// <p>Call <method>Detach</method> to detach an instance from a cluster.</p>
/// <p>Call <method>ListNodes</method> to print a list of a cluster's nodes.</p>
/// <p>Call <method>GetMetadata</method> to retrieve an overview of a cluster's metadata.</p>
/// <p>Call <method>ClusterNamespace</method> to get the name of the cluster namespace for the current instance.</p>
/// <h2>Terminology</h2>
/// <dl>
/// <dt><i>Sharded Cluster</i></dt>
/// <dd>An interconnected set of nodes which provides horizonal scalability of
///  users and data.</dd>
/// <dt><i>Node</i></dt>
/// <dd>An InterSystems IRIS instance that participates in a sharded cluster.
///  Nodes are of two types, "data" and "compute", but all nodes can be
///  used interchangeably as application servers, providing transparent
///  access to all data in the cluster. Data nodes can be mirrored or nonmirrored.
/// Compute nodes are always non-mirrored.</dd>
/// <dt><i>Data Node</i></dt>
/// <dd>A node that stores a partition (shard) of sharded data locally.</dd>
/// <dt><i>Compute Node</i></dt>
/// <dd>A node that does not store sharded data locally, but provides compute access
///  to the sharded data on a corresponding data node, via global mapping.</dd>
/// <dt><i>Cluster URL</i></dt>
/// <dd>The address of a node, specified in the format "IRIS://<i>host</i>:<i>port</i>/<i>cluster-namespace</i>".</dd>
/// <dt><i>Cluster Namespace</i></dt>
/// <dd> A namespace that exists, with the same name, on every node of a sharded
///  cluster, providing transparent access to all sharded and nonsharded data,
///  and all code, on the cluster.</dd>
/// <dt><i>Master Namespace</i></dt>
/// <dd>A namespace that exists only on node 1 of a sharded cluster.  Metadata
///  and nonsharded data stored in its globals databases, and code
///  stored in its routines database, are accessible in the cluster namespace
///  on every node of the cluster, via database mapping.</dd>
/// <dt><i>Shard Database</i></dt>
/// <dd>A database on each data node that stores a partition (shard) of sharded
///  data. A shard database is not the default database of any namespace,
///  but globals stored in it are visible within the cluster namespace on the
///  same data node, or any associated compute node, via global mapping.</dd>
/// </dl>
/// <h3>Architecture of a Sharded Cluster</h3>
/// <p>Sharded clusters configured using methods of this class have the following
/// architecture:</p>
/// <ul>
/// <li>Each node consists of a separate InterSystems IRIS instance on a
///   separate machine, and participates in only one sharded cluster.</li>
/// <li>Every node has a cluster namespace, which all have the same name on
///   every instance of the cluster ("IRISCLUSTER", by default).</li>
/// <li>A cluster has one or more data nodes, each of which has a shard database
///   which stores one partition (shard) of the cluster's sharded data.
///   Adding data nodes increases the degree of partitioning (number of
///   shards) of sharded data.</li>
/// <li>A cluster is either mirrored or nonmirrored. In a mirrored cluster, all
///   data nodes are mirrored. In a nonmirrored cluster, all data nodes are nonmirrored.</li>
/// <li>A cluster has zero or more compute nodes. These do not store any data,
///   but have mapped access to the sharded data of an associated data node.
///   Zero or more compute nodes can be associated with each data node, and
///   are transparently balanced across data nodes as more compute nodes are
///   added.  Adding compute nodes increases the computing bandwidth for
///   executing sharded queries.</li>
/// <li>All nonsharded data, and all code, is stored in the globals and routines
///   databases, respectively, of the master namespace on the first node of
///   the cluster, and is transparently accessible in the cluster namespace on
///   every node, via database mapping.  This master namespace, which exists
///   only on the first node, is largely transparent to users, as all user
///   data access can (and should) be done in the cluster namespaces.
///   <p>There is one special case where the master namespace should be used
///     directly: Any globals, package, or routine mappings that should be
///     visible in the cluster namespace on every node should be
///     defined by users in the master namespace, from which they are
///     automatically propagated to the cluster namespaces.  Mappings defined
///     by users in a cluster namespace are not propagated, and are only visible
///     in the cluster namespace of the node on which they are defined.</p></li>
/// <li>All sharded data is transparently accessible via SQL in the cluster
///   namespace of every node.  The underlying globals of each partition of
///   sharded data are only transparently accessible on the data node where that
///   partition is stored, or on any compute nodes associated with that data
///   node (although they can be accessed from any node via extended global
///   references).</li>
/// <li> Every node plays a dual role, as an application server providing
///   transparent access to all data and code, and as a shard server which
///   locally executes those portions of sharded queries and updates that
///   access sharded data stored on that node (in the case of a data node),
///   or mapped to that node (in the case of a compute node).  User connections
///   can be load balanced across all nodes, so adding nodes of either type
///   increases the computing bandwidth for user applications.</li>
/// </ul>
/// <h3 id="Prerequisites">Prequisites for Using This API</h3>
/// <ul>
/// <li>Machines must be provisioned and must be mutually accessible via TCP/IP.</li>
/// <li>InterSystems IRIS instances must be installed, with sharding-enabled
///   licenses.</li>
/// <li>InterSystems IRIS instances must have the ECP configuration parameters
///   MaxServers and MaxServerConn set to values at least as great as the
///   anticipated number of nodes in the sharded cluster.  Note that if these
///   values are changed after installation, the instances must be restarted
///   for the new values to take effect.</li>
/// </ul>
Class %SYSTEM.Cluster Extends %SYSTEM.Help
{

/// Sets up the current InterSystems IRIS instance as the first data node of a new cluster.
/// This method automatically and transparently performs all steps needed
/// to enable this instance as the first node of a cluster (subject to
/// these <a href="#Prerequisites">prerequisites</a>), including:
/// <ul>
/// <li>Enables the ECP and sharding services, and sets these
///   services' lists of allowed connections, if specified via the
///   pAllowedConnections argument.</li>
/// <li>Creates the cluster and master namespaces and their databases if they
///   don't already exist.</li>
/// <li>Creates all necessary mappings from the cluster namespace to the
///   globals and routines databases of the master namespace, and
///   to the shard database.</li>
/// </ul>
/// <p>
/// This method returns an error in any of the following cases:
/// <ul>
/// <li>The current InterSystems IRIS instance is already a node of a sharded cluster.</li>
/// <li>The current instance is a mirror member.</li>
/// <li>The specified cluster namespace already exists, and its globals database is mirrored.</li>
/// </ul>
/// <p><b>Parameters:</b></p>
/// <dl>
/// <dt><i>pClusterNamespace</i></dt>
/// <dd>Cluster namespace, visible on all nodes of this cluster, providing access to both sharded and nonsharded data.
///  If specified namespace does not exist, it is created.  Default name: IRISCLUSTER. </dd>
/// <dt><i>pMasterNamespace</i></dt>
/// <dd>Master namespace for this cluster.
///  If specified namespace does not exist, it is created.  Default name: IRISDM. </dd>
/// <dt><i>pAllowedConnections</i></dt>
/// <dd>List of hosts allowed to participate in this cluster, specified
///  as a semi-colon-separated list of IP addresses or hostnames.
///  Default: No restriction of which hosts can participate.  </dd>
/// <dt><i>pHostIPAddress</i></dt>
/// <dd>IP address other nodes of this cluster should use to connect to this node.  Specify a value for
///  for this parameter if the default hostname known to InterSystems IRIS does not resolve to an appropriate address, or no hostname is available.
///  Default: Default hostname will be used for inter-node connections. </dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// </dl>
/// <p><b>Notes:</b></p>
/// <ul>
/// <li>If either the cluster namespace or the master namespace already exists, the
/// existing namespace is used.
/// If one of them exists and the other doesn't, the globals database
/// for the one that doesn't exist is created using all of the same configuration
/// settings as the globals database of the namespace that already exists
/// (other than directory path).
/// If neither namespace exists, databases for both are created using default
/// settings.</li>
/// <li>If neither namespace exists, the namespaces are created without enabling
/// interoperability.  If one namespace exists, the other namespace is created
/// with interoperability enabled or not, according to whether it is enabled
/// in the existing namespace.</li>
/// <li>If the cluster namespace exists, its globals database becomes the shard
/// database for node 1.
/// The globals database of the master namespace is used to store all nonsharded
/// data for the cluster, and its routines database is use to store all code
/// for the cluster.</li>
/// </ul>
ClassMethod Initialize(pClusterNamespace As %String = "IRISCLUSTER", pMasterNamespace As %String = "IRISDM", pAllowedConnections As %String = "", pHostIPAddress As %String = "") As %Status
{
}

/// Sets up the current InterSystems IRIS instance as the first data node of a new mirrored cluster.
/// This method automatically and transparently performs all steps needed
/// to enable this instance as the first node of a mirrored cluster (subject to
/// these <a href="#Prerequisites">prerequisites</a>), including:
/// <ul>
/// <li>Enables the ECP and sharding services, and sets these
///   services' lists of allowed connections, if specified via the
///   pAllowedConnections argument.</li>
/// <li>If the current instance is not already the primary failover member of a mirror,
///   creates a new mirror set, and configures the current instance as its first
///   failover member.</li>
/// <li>Creates the cluster and master namespaces and their databases if they
///   don't already exist.</li>
/// <li>Creates all necessary mappings from the cluster namespace to the
///   globals and routines databases of the master namespace, and
///   to the shard database.</li>
/// </ul>
/// <p>
/// This method returns an error in any of the following cases:</p>
/// <ul>
/// <li>The current InterSystems IRIS instance is already a node of a sharded cluster.</li>
/// <li>The current instance is already a mirror member, but is not currently the
///  primary failover member.</li>
/// <li>The specified cluster namespace or master namespace already exists, but its globals
///  database is not mirrored.</li>
/// </ul>
/// <p><b>Parameters:</b></p>
/// <dl>
/// <dt><i>pClusterNamespace</i></dt>
/// <dd>Cluster namespace, visible on all nodes of this cluster, providing access to both sharded and nonsharded data.
///  If specified namespace does not exist, it is created.  Default name: IRISCLUSTER.</dd>
/// <dt><i>pMasterNamespace</i></dt>
/// <dd>Master namespace for this cluster.
///  If specified namespace does not exist, it is created.  Default name: IRISDM.</dd>
/// <dt><i>pAllowedConnections</i></dt>
/// <dd>List of hosts allowed to participate in this cluster, specified
///  as a semi-colon-separated list of IP addresses or hostnames.
///  Default: No restriction of which hosts can participate. </dd>
/// <dt><i>pHostIPAddress</i></dt>
/// <dd>IP address other nodes of this cluster should use to connect to this node.  Specify a value for
///  for this parameter if the default hostname known to InterSystems IRIS does not resolve to an appropriate address, or no hostname is available.
///  Default: Default hostname will be used for inter-node connections. </dd>
/// <dt><i>pArbiterIP</i></dt>
/// <dd>Arbiter's hostname or IP address. Specify a non-null value to configure this mirror set to use an arbiter.</dd>
/// <dt><i>pArbiterPort</i></dt>
/// <dd>Arbiter's port. Specify a non-zero value to configure this mirror to use an arbiter.</dd>
/// <dt><i>pSSLDirectory</i></dt>
/// <dd>SSL/TLS keys directory. Specify a non-null value to configure this mirror to use SSL/TLS. Directory is expected to
/// contain three files named "CAFile.pem", "CertificateFile.pem, and "PrivateKeyFile.pem".</dd>
/// <dt><i>pMirrorName</i></dt>
/// <dd>Name of mirror set to create. Default: IRISMIRROR1.</dd>
/// <dt><i>pMemberName</i></dt>
/// <dd>Name by which this instance is known to the mirror. Default: IRISMIRROR1A.</dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// </dl>
/// <p><b>Notes:</b></p>
/// <ul>
/// <li>If the current instance is already a mirror member, the mirror configuration parameters (pArbiterIP,
/// pArbiterPort, pSSLDirectory, pMirrorName, and pMemberName) are ignored, and the mirror
/// configuration is not modified.</li>
/// <li>If either the cluster namespace or the master namespace already exists, the
/// existing namespace is used.
/// If one of them exists and the other doesn't, the globals database
/// for the one that doesn't exist is created using all of the same configuration
/// settings as the globals database of the namespace that already exists
/// (other than directory path).
/// If neither namespace exists, databases for both are created using default
/// settings.</li>
/// <li>If neither namespace exists, the namespaces are created without enabling
/// interoperability.  If one namespace exists, the other namespace is created
/// with interoperability enabled or not, according to whether it is enabled
/// in the existing namespace.</li>
/// <li>If the cluster namespace exists, its globals database becomes the shard
/// database for node 1.
/// The globals database of the master namespace is used to store all nonsharded
/// data for the cluster, and its routines database is use to store all code
/// for the cluster.</li>
/// </ul>
ClassMethod InitializeMirrored(pClusterNamespace As %String = "IRISCLUSTER", pMasterNamespace As %String = "IRISDM", pAllowedConnections As %String = "", pHostIPAddress As %String = "", pArbiterIP As %String = "", pArbiterPort As %Integer = 0, pSSLDirectory As %String = "", pMirrorName As %String = "IRISMIRROR1", pMemberName As %String = "IRISMIRROR1A") As %Status
{
}

ClassMethod Init(pMirrored As %Boolean, pClusterNamespace As %String = "IRISCLUSTER", pMasterNamespace As %String = "IRISDM", pAllowedConnections As %String = "", pHostIPAddress As %String = "", pArbiterIP As %String = "", pArbiterPort As %Integer = 0, pSSLDirectory As %String = "", pMirrorName As %String = "", pMemberName As %String = "") As %Status [ Internal, Private ]
{
}

/// Attaches the current InterSystems IRIS instance to a specified cluster as a nonmirrored data node.
/// <p>This method automatically and transparently performs all steps needed
/// to enable this instance as a data node of the specified cluster (subject to
/// these <a href="#Prerequisites">prerequisites</a>), including:</p>
/// <ul>
/// <li>Enables the ECP and sharding services, and sets these
///   services' lists of allowed connections to match the lists on the node
///   specified by pClusterURL.</li>
/// <li>Creates the cluster namespace and shard database if they
///   don't already exist, configuring them to match the settings on the node
///   specified by pClusterURL.</li>
/// <li>Creates all necessary mappings from the cluster namespace to the
///   globals and routines databases of the master namespace on node 1, and
///   to the shard database on the current instance.</li>
/// <li>Propagates any user-defined mappings from the master namespace on node 1
///   to the cluster namespace on the current instance.</li>
/// <li> Sets all SQL configuration options to match their settings on the
///   node specified by pClusterURL. </li>
/// </ul>
/// <p>If a data node has been flagged for pending removal by calling <method>Detach</method> while
/// sharded tables exist, and the node's removal has not yet been completed by calling <method>Rebalance</method>,
/// the pending removal can be cancelled by calling <b>AttachAsDataNode</b>.   In that case, the <i>pHostIPAddress</i>
/// parameter is ignored, and an error is returned if the <i>pClusterURL</i> parameter does not specify a node
/// of the current cluster.  Call <method>ListNodes</method> to determine whether a node is flagged for pending removal.</p>
/// <p>This method returns an error in any of the following cases:</p>
/// <ul>
/// <li>The current InterSystems IRIS instance is already a node of a sharded cluster.</li>
/// <li>The current instance is a mirror member.</li>
/// <li>The specified cluster namespace already exists, and its globals database is mirrored.</li>
/// <li>The node specified by pClusterURL is mirrored.</li>
/// <li>The current instance is a node of a sharded cluster, flagged for pending removal, and the node specified
/// by <i>pClusterURL</i> is not a node of the same cluster.</li>
/// </ul>
/// <p><b>Parameters:</b></p>
/// <dl>
/// <dt><i>pClusterURL</i></dt>
/// <dd>Identifies the cluster to which to attach, by specifying the address of any existing node of the cluster,
///  in the format "IRIS://<i>host</i>:<i>port</i>/<i>cluster-namespace</i>". Namespace may optionally be omitted, since
///  there can be at most one cluster namespace in an InterSystems IRIS instance.
///  </dd>
/// <dt><i>pHostIPAddress</i></dt>
/// <dd>IP address other nodes of this cluster should use to connect to this node.  Specify a value for
///  for this parameter if the default hostname known to InterSystems IRIS does not resolve to an appropriate address, or no hostname is available.
///  Default: Default hostname will be used for inter-node connections.
/// </dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// </dl>
/// <p><b>Notes:</b></p>
/// <ul>
/// <li>A cluster namespace, with same name as on all other nodes of this cluster,
/// is created if a namespace of that name doesn't already exist.
/// If it does already exist, its globals database becomes the shard database for
/// this node.</li>
/// <li>If the node specified by pClusterURL is a data node, it is used as the template
/// for configuration settings on this node.  If the specified
/// node is a compute node, the corresponding data node is used as the template.</li>
/// <li>If the cluster namespace doesn't exist, it is created with interoperability
/// enabled or not according to whether it is enabled for the cluster namespace
/// on the template node, and with its globals database settings,
/// including directory path, matching those of the shard database on the template
/// node.</li>
/// <li>All SQL configuration settings are set to match those on the template node.</li>
/// <li>Data nodes are assigned a numeric id, in sequence starting from 1, in the
/// order they are attached to the cluster.  A data node's id is the same as
/// its shard number.  Nodes are listed by id by <method>ListNodes</method> and
/// <method>GetMetadata</method>.</li>
/// </ul>
ClassMethod AttachAsDataNode(pClusterURL As %String, pHostIPAddress As %String = "") As %Status
{
}

/// Attaches the current InterSystems IRIS instance to a specified cluster as a compute node.
/// <p>This method automatically and transparently performs all steps needed
/// to enable this instance as a compute node of the specified cluster (subject to
/// these <a href="#Prerequisites">prerequisites</a>), including:</p>
/// <ul>
/// <li>Enables the ECP and sharding services, and sets these
///   services' lists of allowed connections to match the lists on the node
///   specified by pClusterURL.</li>
/// <li>Creates the cluster namespace if it
///   doesn't already exist, configuring it to match the settings on the node
///   specified by pClusterURL.</li>
/// <li>Associates this compute node with a data node that previously had
///   the minumum number of associated compute nodes, so as to automatically
///   balance compute nodes across data nodes.</li>
/// <li>Creates all necessary mappings from the cluster namespace to the
///   globals and routines databases of the master namespace on node 1, and
///   to the shard database on the the associated data node. </li>
/// <li>Propagates any user-defined mappings from the master namespace on node 1
///   to the cluster namespace on the current instance.</li>
/// <li>Sets all SQL configuration options to match their settings on the
///   node specified by pClusterURL. </li>
/// </ul>
/// <p>This method returns an error if the current InterSystems IRIS instance
/// is already a node of a sharded cluster.</p>
/// <p><b>Parameters:</b></p>
/// <dl>
/// <dt><i>pClusterURL</i></dt>
/// <dd>Identifies the cluster to which to attach, by specifying the address of any existing node of the cluster,
///  in the format "IRIS://<i>host</i>:<i>port</i>/<i>cluster-namespace</i>". Namespace may optionally be omitted, since
///  there can be at most one cluster namespace in an InterSystems IRIS instance.</dd>
/// <dt><i>pHostIPAddress</i></dt>
/// <dd>IP address other nodes of this cluster should use to connect to this node.  Specify a value for
///  for this parameter if the default hostname known to InterSystems IRIS does not resolve to an appropriate address, or no hostname is available.
///  Default: Default hostname will be used for inter-node connections.
/// </dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// </dl>
/// <p><b>Notes:</b></p>
/// <ul>
/// <li>A cluster namespace, with same name as on all other nodes of this cluster,
/// is created if a namespace of that name doesn't already exist.
/// Note that if it does already exist, its globals database is "orphaned",
/// as the global database of the cluster namespace is mapped to the globals
/// database of the master namespace on node 1, and a compute node does not
/// need to reuse this database as a shard database.</li>
/// <li>If the cluster namespace doesn't exist, it is created with interoperability
/// enabled or not according to whether it is enabled for the cluster namespace
/// on the node specified by pClusterURL.</li>
/// <li>All SQL configuration settings are set to match those on the node
/// specified by pClusterURL.
/// <li>Compute nodes are assigned a numeric id, in sequence starting from 1001,
/// in the order they are attached to the cluster.
/// Nodes are listed by id by <method>ListNodes</method> and
/// <method>GetMetadata</method>.</li>
/// </ul>
ClassMethod AttachAsComputeNode(pClusterURL As %String, pHostIPAddress As %String = "") As %Status
{
}

/// Attaches the current InterSystems IRIS instance to a specified cluster as a mirrored data node.
/// <p>This method automatically and transparently performs all steps needed
/// to enable this instance as a data node of the specified cluster (subject to
/// these <a href="#Prerequisites">prerequisites</a>), including: </p>
/// <ul>
/// <li>Enables the ECP and sharding services, and sets the sharding
///   services' lists of allowed connections to match the lists on the node
///   specified by pClusterURL.</li>
/// <li>If the current instance is not already a member of a mirror, performs
///   mirror configuration according to role specified by pMemberRole:
///   <ul>
///   <li><i>"primary"</i>
///   Creates a new mirror set, and configures the current instance as its first
///   failover member.</li>
///   <li><i>"backup"</i>
///   Configures the current instance as the backup failover member of the mirror set
///   whose primary failover member is specified by pClusterURL.</li>
///   <li><i>"drasync"</i>
///   Configures the current instance as a DR async member of the mirror set
///   whose primary failover member is specified by pClusterURL.</li>
///   </ul></li>
/// <li>Creates the cluster namespace and shard database if they
///   don't already exist, configuring them to match the settings on the node
///   specified by pClusterURL.  If pMemberRole is <i>"backup"</i> and pClusterURL
///   specifies node 1 of this cluster, also creates the master namespace and
///   master database if they don't already exist.</li>
/// <li> Creates all necessary mappings from the cluster namespace to the
///   globals and routines databases of the master namespace on node 1, and
///   to the shard database on the current instance.  (Mappings are not created when pMemberRole is "drasync".)</li>
/// <li>Propagates any user-defined mappings from the master namespace on node 1
///   to the cluster namespace on the current instance.  (Mappings are not propagated when pMemberRole is "drasync".)</li>
/// <li>Sets all SQL configuration options to match their settings on the
///   node specified by pClusterURL. </li>
/// </ul>
/// <p>If a mirrored node has been flagged for pending removal by calling <method>Detach</method> while sharded
/// tables exist, and the node's removal has not yet been completed by calling the <class>%SYSTEM.Sharding</class> <b>Rebalance</b> method, the
/// pending removal can be cancelled by calling <b>AttachAsMirroredNode</b>.  In that case, all parameters
/// except pClusterURL and pMemberRole are ignored.  pMemberRole may be specified as either
/// <i>"primary"</i> or <i>"backup"</i>, regardless of the current instance's current failover role, but if <i>"backup"</i> is specified,
/// then an error is returned if pClusterURL does not specify the other failover member of this mirror.  Call
/// <method>ListNodes</method> to determine whether a node is flagged for pending removal.</p>
/// <p>This method returns an error in any of the following cases:</p>
/// <ul>
/// <li>The current InterSystems IRIS instance is already a node of a sharded cluster.</li>
/// <li>The specified cluster namespace already exists, and its globals database is not mirrored.</li>
/// <li>pMemberRole is <i>"backup"</i>, pClusterURL specifies node 1 of this cluster, and a
/// namespace with the same name as the master namespace already exists, and is not mirrored.</li>
/// <li>The node specified by pClusterURL is not mirrored.</li>
/// <li>pMemberRole is <i>"backup"</i>, and the node specified by pClusterURL belongs to a mirror
/// set which already has two failover members.</li>
/// <li>The current instance is a member of an existing mirror set, in a role different from the one
/// specified by pMemberRole.</li>
/// <li>The current instance is a backup or DR async member of a different mirror set than the node specified
/// by pClusterURL.</li>
/// <li>pMemberRole is <i>"backup"</i>, and one of the backup databases created by this method could
/// be caught up within two minutes. This is rare, and is most likely due to a delay in this instance
/// becoming an active mirror backup member (check messages.log for possible causes). In this event,
/// the error message "Cannot catch up database <i>dbname</i>, manual catchup required" is returned.
/// The method <method>CatchupDB</method> can be used to perform manual catchup.</li>
/// <li>The current instance is a node of a sharded cluster, flagged for pending removal, and the node
/// specified by pClusterURL is not a node of the same cluster.</li>
/// <li>The current instance is a node of a sharded cluster, flagged for pending removal, and pMemberRole is
/// <i>"backup"</i>, but pClusterURL does not specify a node of the same cluster.</li>
/// </ul>
/// <p><b>Parameters:</b></p>
/// <dl>
/// <dt><i>pClusterURL</i></dt>
/// <dd>Identifies the cluster to which to attach, by specifying the address of am existing node of the cluster,
///  in the format "IRIS://<i>host</i>:<i>port</i>/<i>cluster-namespace</i>". Namespace may optionally be omitted, since
///  there can be at most one cluster namespace in an InterSystems IRIS instance. If pMemberRole is <i>"primary"</i>,
///  pClusterURL may specify any existing node.  If pMemberRole is <i>"backup"</i>, pClusterURL
///  must specify the node which is the primary failover member of the mirror set for which the current instance will
///  be attached as the backup failover member.</dd>
/// <dt><i>pMemberRole</i>
///  This node's role as a mirror member:</dt>
/// <dd><ul>
///  <li><i>"primary"</i> Attach as primary failover member.</li>
///  <li><i>"backup"</i> Attach as backup failover member of mirror whose primary failover member is specified by pClusterURL.</li>
///  <li><i>"drasync"</i> Attach as DR async member of mirror whose primary failover member is specified by pClusterURL.</li>
/// </ul></dd>
/// <dt><i>pHostIPAddress</i></dt>
/// <dd>IP address other nodes of this cluster should use to connect to this node.  Specify a value for
///  for this parameter if the default hostname known to InterSystems IRIS does not resolve to an appropriate address, or no hostname is available.
///  Default: Default hostname will be used for inter-node connections.
/// </dd>
/// <dt><i>pArbiterIP</i></dt>
/// <dd>Arbiter's hostname or IP address. Specify a non-null value to configure this mirror to use an arbiter, overriding the value inherited from the node specified by
/// <i>pClusterURL</i>.
/// Ignored when attaching a backup failover member.</dd>
/// <dt><i>pArbiterPort</i></dt>
/// <dd>Arbiter's port. Specify a non-zero value to configure this mirror to use an arbiter, overriding the value inherited
/// from the node specified by <i>pClusterURL</i>. Ignored when attaching a backup failover member.</dd>
/// <dt><i>pSSLDirectory</i></dt>
/// <dd>SSL/TLS keys directory. Specify a non-null value to configure this mirror to use SSL/TLS, overriding the value
/// inherited from the node specified by <i>pClusterURL</i>. Directory is expected to
/// contain three files named "CAFile.pem", "CertificateFile.pem, and "PrivateKeyFile.pem".</dd>
/// <dt><i>pMirrorName</i></dt>
/// <dd>Name of mirror set to create. Default: IRISMIRROR<i>N</i>, where <i>N</i> is a mirror naming sequence number unique within this
/// cluster (usually the same as the node id).</dd>
/// <dt><i>pMemberName</i></dt>
/// <dd>Name by which this instance is known to the mirror. Default: The mirror name, with the letter 'A' appended for the primary failover
/// member, or 'B' for the backup failover member.</dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.<br>
/// </dd>
/// </dl>
/// <p><b>Notes:</b></p>
/// <ul>
/// <li>Mirrored data nodes are always paired, and both members of a pair are assigned the same node id.
/// Each instance of the pair is attached by a separate call to
/// AttachAsMirroredNode, specifying pMemberRole as <i>"primary"</i> for the first node attached, and
/// as <i>"backup"</i> for the second node attached.  These specify
/// the initial roles, which are swapped when the mirror fails over. Use <method>ListNodes</method> to
/// determine the current member roles of all mirrored nodes.
/// <li>If the current instance is already a mirror member, the mirror configuration parameters (pArbiterIP,
/// pArbiterPort, pSSLDirectory, pMirrorName, and pMemberName) are ignored, and the mirror
/// configuration is not modified.</li>
/// <li>If any of the arguments pArbiterIP, pArbiterPort, or pSSLDirectory is not specified,
/// the values configured for the node specified by pClusterURL are used.</li>
/// <li>Recommended best practice is to attach both failover members of a mirror set, before storing
/// any data in the cluster database. In the case of creating a new mirror set, data stored in the
/// primary member is not backed up until the backup member has been attached.  In the case of attaching
/// the failover members of an existing mirror set, if only the primary failover member has been attached,
/// and the mirror fails over, sharded operations on the cluster cannot access data on other failover
/// member that has been promoted from backup to primary, until it has been attached to the cluster.</li>
/// <li>When attaching the failover members of an existing mirrored set, attach the current primary member
/// first, then the current backup member.  The node being attached as primary must actually be
/// primary at the time it is attached, and the node being attached as backup must actually be backup
/// at the time it is attached.</li>
/// <li>A cluster namespace, with same name as on all other nodes of this cluster,
/// is created if a namespace of that name doesn't already exist.
/// If it does already exist, its globals database becomes the shard database for
/// this node.</li>
/// <li>If the node specified by pClusterURL is a data node, it is used as the template
/// for configuration settings on this node.  If the specified
/// node is a compute node, the corresponding data node is used as the template.</li>
/// <li>If the cluster namespace doesn't exist, it is created with interoperability
/// enabled or not according to whether it is enabled for the cluster namespace
/// on the template node, and with its globals database settings,
/// including directory path, matching those of the shard database on the template
/// node.</li>
/// <li>All SQL configuration settings are set to match those on the template node.</li>
/// <li>Data nodes are assigned a numeric id, in sequence starting from 1, in the
/// order they are attached to the cluster.  A data node's id is the same as
/// its shard number.  Nodes are listed by id by <method>ListNodes</method> and
/// <method>GetMetadata</method>.</li>
/// </ul>
ClassMethod AttachAsMirroredNode(pClusterURL As %String, pMemberRole As %String, pHostIPAddress As %String = "", pArbiterIP As %String = "", pArbiterPort As %Integer = 0, pSSLDirectory As %String = "", pMirrorName As %String = "", pMemberName As %String = "") As %Status
{
}

ClassMethod Attach(pNodeType As %String = "", pClusterURL As %String, pHostIPAddress As %String = "", pMemberRole As %String = "primary", pArbiterIP As %String = "", pArbiterPort As %Integer = 0, pSSLDirectory As %String = "", pMirrorName As %String = "", pMemberName As %String = "") As %Status [ Internal, Private ]
{
}

ClassMethod SwapDatabases(pNamespace1 As %String, pNamespace2 As %String) As %Status [ Internal, Private ]
{
}

ClassMethod CreateOrReuseDatabase(pDbNameSubscript As %String, pDbNameDefault As %String, ByRef pDbName As %String, ByRef pTemplateProperties) As %Status [ Internal, Private ]
{
}

ClassMethod CatchupDBInternal(pDbName As %String, pPath As %String = "", pPass = 1) As %Status [ Internal, Private ]
{
}

/// Catches up the database specified by pDbName.  Call this method if <method>AttachAsMirroredNode</method>
/// returns the error message "Cannot catch up database <i>dbname</i>, manual catchup required".
/// <p><b>Parameters:</b></p>
/// <dl>
/// <dt><i>pDbName</i></dt>
/// <dd>The name of the database to catch up.</dd>
/// </dl>
/// <p><b>Returns:</b>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// </dl>
ClassMethod CatchupDB(pDbName As %String) As %Status
{
}

ClassMethod GetDbPropsForNamespace(pNamespace As %String, pDbNameSubscript As %String, pDbNameDefault As %String, ByRef pProperties, ByRef pNamespaceExists As %Boolean, ByRef pNamespaceIsInteropEnabled As %Boolean) As %Status [ Internal, Private ]
{
}

/// Gets the name of the cluster namespace on the current InterSystems IRIS instance.
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Name of the cluster namespace, or empty string if this instance is not a node in a cluster.</dd>
/// </dl>
ClassMethod ClusterNamespace() As %String
{
}

/// Lists the nodes of the cluster to which the current InterSystems IRIS instance belongs,
/// to the console or to a specified output file.
/// <p>The list contains a row for each node, with information in columns under the following headings:</p>
/// <ul>
/// <li>NodeId - a numeric id.  For data nodes, this is identical to the shard number.</li>
/// <li>NodeType - "Data" or "Compute".</li>
/// <li>DataNodeId - for compute nodes only, the id of the corresponding data node.</li>
/// <li>Host - the hostname or IP address of the machine hosting the node's InterSystems IRIS instance.</li>
/// <li>Port - the default port (Super Server port) of the InterSystems IRIS instance.</li>
/// <li>Mirror - the mirror name, if the node is mirrored.</li>
/// <li>Failover - for mirrored nodes only, the type of failover member, either "Primary" or "Backup".</li>
/// <li>VIP - for mirrored nodes only, the VIP, if one is configured. </li>
/// </ul>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>pOutputFile</i></dt>
/// <dd>The pathname of a file to which output is written. Default: Prints output to the console.</dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// <p><b>Notes:</b>
/// <ul>
/// <li>Nodes which are pending removal, because they have been detached but the cluster has not yet been
/// rebalanced to moved sharded data from them to other shards, are listed
/// with their shard number in brackets and followed by two asterisks, for example "[25**]".</li>
/// </ul>
/// </dl>
ClassMethod ListNodes(pOutputFile As %String = "") As %Status
{
}

/// Retrieves an overview of the metadata of the cluster to which the current InterSystems IRIS instance
/// belongs.
/// <p>The metadata is returned in an array, passed by reference, under the following subscripts:</p>
/// <ul>
/// <li>ClusterNamespace - the name of the cluster namespace, visible on all nodes.</li>
/// <li>MasterNamespace - the name of the master namespace on node 1.</li>
/// <li>MasterGlobalsDatabase - the name of the globals database of the master namespace.</li>
/// <li>MasterRoutinesDatabase - the name of the routines database of the master namespace.</li>
/// <li>Node - information specific to individual nodes, stored under two additional subscripts: the
/// node's numeric id (with ":Primary" or ":Backup" appended for mirrored nodes), and one of the following:
/// <ul>
/// <li>NodeType - "Data" or "Compute".</li>
/// <li>DataNodeId - for compute nodes only, the id of the corresponding data node.</li>
/// <li>ShardDatabase - for data nodes only, the name of the database containing this node's portion of sharded data.</li>
/// <li>Host  - the hostname or IP address of the machine hosting the node's InterSystems IRIS instance.</li>
/// <li>SuperServerPort - the default port (Super Server port) of the InterSystems IRIS instance.</li>
/// <li>WebServerPort - the web server port of the InterSystems IRIS instance.</li>
/// <li>IRISVersion - the InterSystems IRIS version number.</li>
/// <li>ShardingVersion - the sharding manager version number.</li>
/// </ul>
/// </li>
/// </ul>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>pMetadata</i></dt>
/// <dd>Array in which metadata is returned, passed by reference.</dd>
/// </dl>
/// <p><b>Returns:</b></p>
/// <dl>
/// <dt></dt>
/// <dd>Status code reporting success or failure of this API call.</dd>
/// </dl>
ClassMethod GetMetadata(ByRef pMetadata) As %Status
{
}

/// Create a mirror member on the designated instance<br>
/// <b>pMirrorSetName</b>  Mirror Set name<br>
/// <b>pPrimaryName</b>    Primary member name<br>
/// <b>pPrimaryIP</b>      Primary member IP address<br>
/// <b>pBackupName</b>     Backup member name<br>
/// <b>pBackupIP</b>       Backup member IP address<br>
/// <b>pAgentPort</b>      ISC Agent Port<br>
/// <b>pNodeType</b>       "primary" | "backup" | "async"<br>
/// <b>pInstance</b>       Instance name<br>
/// <b>pArbiterIP</b>      Arbiter Node IP address<br>
/// <b>pArbiterPort</b>    Arbiter Node port number<br>
/// <b>pSSLdir</b>         SSL/TLS keys directory<br>
ClassMethod CreateMirror(pMirrorSetName As %String = "", pPrimaryName As %String = "", pPrimaryIP As %String = "", pBackupName As %String = "", pBackupIP As %String = "", pAgentPort As %Integer = "", pNodeType As %String = "", pInstance As %String = "", pArbiterIP As %String = "", pArbiterPort As %Integer = 0, pSSLdir As %String = "") As %String [ Internal, Private ]
{
}

ClassMethod IsNodeReady(pClusterURL As %String = "") As %Status
{
}

/// Detaches the current InterSystems IRIS instance from the cluster to which it is currently attached.  This removes
/// the instance from the cluster's set of nodes.
/// <p>This API call can be used to detach a data node (either mirrored on non-mirrored) or a compute node.
/// <p>If the current instance is a data node, and any sharded tables exist, the instance is not immediately detached,
/// but is flagged for pending removal.  In that case, the next call to the <method>Rebalance</method> method of <class>%SYSTEM.Sharding</class> moves any sharded data
/// from this node to other nodes of the cluster, and completes the process of detaching this instance.  Node 1 of a cluster may not be detached.
/// <p>If the current instance is a compute node, it is always immediately detached.
/// <p>Calling <b>Detach</b> on either failover member of a mirrored data node detaches both failover members
/// <p>Detaching a data node automatically detaches any compute nodes that are associated with that data node.
/// This method returns an error in any of the following cases:
/// <ul><dl>
/// <li>The current InterSystems IRIS instance is not a node of a sharded cluster.
/// <li>The current instance is node 1 of a sharded cluster.
/// </ul>
/// <p><b>Returns:</b>
/// <dd>Status code reporting success or failure of this API call.<br>
/// </dd>
/// <p><b>Notes:</b>
/// <ul>
/// <li>Detaching a node removes mappings that were created when the node was attached.  It does not remove the
/// cluster namespace, but causes that namespace to no longer serve as a cluster namespace.
/// If the instance is mirrored, detaching does not remove the instance from the mirror.
/// <li>When a data node is flagged for pending removal, due to calling <b>Detach</b> while sharded tables exist,
/// the pending removal can be cancelled by calling <method>AttachAsDataNode</method> (for a non-mirrored data node),
/// <method>AttachAsMirroredNode</method> (for a mirrored data node), or <method>AttachAsComputeNode</method> (for a compute
/// node).  Call <method>ListNodes</method> to determine whether a node is currently flagged for pending removal.
/// <li>When a node is detached, the node numbers of any higher-numbered nodes are decremented to maintain an unbroken
/// numeric sequence.  If the node is flagged for pending removal, the numbers of higher-numbered nodes aren't changed
/// until the process of detaching the node is completed during the next call to the <class>%SYSTEM.Sharding</class>
/// <b>Rebalance</b> method.
/// </ul>
ClassMethod Detach() As %Status
{
}

}
