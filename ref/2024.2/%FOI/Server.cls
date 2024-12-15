Class %FOI.Server
{

ClassMethod CompileSchemas(schemaNames)
{
}

ClassMethod SaveSchema(chunk1, chunk2, chunk3, chunk4, chunk5)
{
}

/// return schema definition for schemaName
ClassMethod GetSchema(schemaName)
{
}

ClassMethod GetRecordMetadata(schemaName)
{
}

ClassMethod GetTableClass(tableName)
{
}

ClassMethod Load(fileName)
{
}

ClassMethod Compile(className)
{
}

ClassMethod GetGlobalName(className)
{
}

ClassMethod LoadClass(chunk1, chunk2, chunk3, chunk4, chunk5)
{
}

ClassMethod DeleteClass(className)
{
}

ClassMethod GetMetaData(className)
{
}

ClassMethod GetMetaDataUnconditionally(className)
{
}

ClassMethod CompareTimestamp(className, timestamp)
{
}

ClassMethod Handshake(protocolVersion, userName, machineName, exeName, osInfo, hostInfo)
{
}

ClassMethod ResetSequence(globalName)
{
}

ClassMethod DeleteObject(className, id)
{
}

ClassMethod UpdateObject(id, value, className, keyDegree, nodeCount)
{
}

ClassMethod getObjectUM(args...)
{
}

ClassMethod assignShardedId(className, globalName)
{
}

/// SSSND - Sharded System assigned, ID, Single node, No Return, Deferred Indexing (SSND)
ClassMethod writeObjectSSSND(value, className, globalName, indexOpt)
{
}

/// SSSRD - Write array of objects to database, system assigned ID, single node, return ID's, indexOpt = 0 (deferred), 1 = no indexing, 2 = immediate indexing
ClassMethod writeArraySSSRD(arrayList, className, globalName, indexOpt)
{
}

/// SMND - Write object to database, system assigned ID, multiple nodes, return ID, Deferred or no indexing
ClassMethod writeObjectSMND(value, globalName, nodeCount, indexOpt)
{
}

/// SSRD - Write object to database, system assigned ID, Single node, Return ID, Deferred or no indexing (SSR)
ClassMethod writeObjectSSRD(value, globalName, indexOpt)
{
}

ClassMethod writeObjectSSNI(value, className, indexOpt)
{
}

/// SMNI - Write array of objects to database, system assigned ID, multiple nodes, return ID's, Immediate indexing
ClassMethod writeObjectSMNI(value, className, nodeCount, indexOpt)
{
}

/// SMRI - Write array of objects to database, system assigned ID, multiple nodes, return ID's, Immediate indexing
ClassMethod writeObjectSMRI(value, className, nodeCount, indexOpt)
{
}

/// SMRD - Write object to database, system assigned ID, multiple nodes, return ID, Deferred or no indexing
ClassMethod writeObjectSMRD(value, globalName, indexOpt)
{
}

ClassMethod writeObjectUSND(value, globalName, keyDegree, indexOpt)
{
}

ClassMethod writeObjectUSNI(value, className, keyDegree, indexOpt)
{
}

ClassMethod writeObjectUMNI(value, className, keyDegree, nodeCount, indexOpt)
{
}

ClassMethod writeObjectUMND(value, globalName, keyDegree, nodeCount, indexOpt)
{
}

ClassMethod writeArraySSNI(arrayList, className, indexOpt)
{
}

/// SMNI - Write array of objects to database, system assigned ID, multiple nodes, return ID's, Immediate indexing
ClassMethod writeArraySMNI(arrayList, className, nodeCount, indexOpt)
{
}

/// sSSRD - Write array of objects to database, system assigned ID, single node, return ID's, indexOpt = 0 (deferred), 1 = no indexing, 2 = immediate indexing
ClassMethod writeArraySSRD(arrayList, globalName, indexOpt)
{
}

/// Array of SMND - System assigned ID, Multiple nodes, No Return (SMNR)
ClassMethod writeArraySMND(arrayList, globalName, nodeCount, indexOpt)
{
}

/// SMRD - Write array of objects to database, system assigned ID, multiple nodes, return ID's, Deferred or no indexing
ClassMethod writeArraySMRD(arrayList, globalName, nodeCount, indexOpt)
{
}

/// sSMRI - Write array of objects to database, system assigned ID, multiple nodes, return ID's, Immediate indexing
ClassMethod writeArraySMRI(arrayList, className, nodeCount, indexOpt)
{
}

ClassMethod writeArrayUSND(arrayList, globalName, keyDegree, indexOpt)
{
}

ClassMethod writeArrayUSNI(arrayList, className, keyDegree, indexOpt)
{
}

/// writeArrayUMND - user-defined IDKEY indexing doesn't allow (currently) for deferred
/// filing of indexes but we do need this for schemas with no indexes defined. In the future we
/// may relax this restriction for deferred index filing. For now, indexOpt is expected to be zero (no indexing).
ClassMethod writeArrayUMND(arrayList, globalName, keyDegree, nodeCount, indexOpt)
{
}

ClassMethod writeArrayUMNI(arrayList, className, keyDegree, nodeCount, indexOpt)
{
}

ClassMethod InsertObjectNoId(className, data)
{
}

ClassMethod InsertObject(className, id, data)
{
}

ClassMethod IsExtentEmpty(className)
{
}

ClassMethod CleanUpExtent(className)
{
}

ClassMethod DeleteExtent(className)
{
}

ClassMethod StartIndexing(className)
{
}

ClassMethod StopIndexing(className)
{
}

ClassMethod WaitForIndexing(className)
{
}

ClassMethod RemoteCalls(function)
{
}

ClassMethod MethodCalls(type)
{
}

ClassMethod SetStream(type, globalNameLength, length)
{
}

ClassMethod GetStream(type, oidLength)
{
}

ClassMethod ProcessException(exception) [ Private ]
{
}

}
