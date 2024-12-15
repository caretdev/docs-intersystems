Class %Net.Cloud.Storage.Client Extends %RegisteredObject [ Language = objectscript ]
{

Parameter BUFFERLENGTH = 32000;

/// Connection to a Java Gateway
Property gateway As %External.JavaGateway;

/// Remote Java client object to Azure, Google or S3
Property jclient As %Net.Remote.Object;

/// Convert a stream to binary stream encoded in UTF-8
ClassMethod ToUTF8(stream As %Stream.Object) As %Stream.TmpBinary [ Private ]
{
}

/// Test if a bucket exists
Method BucketExists(bucketName As %String) As %Boolean
{
}

/// Get bucket info
Method GetBucketInfo(bucketName As %String) As BucketInfo
{
}

/// Create a new bucket
Method CreateBucket(bucketName As %String)
{
}

/// List all buckets
Method ListBuckets() As %ListOfObjects
{
}

/// Delete a bucket from the cloud
Method DeleteBucket(bucketName As %String)
{
}

/// Test if a blob exists
Method BlobExists(bucketName As %String, blobName As %String) As %Boolean
{
}

/// Get blob info
Method GetBlobInfo(bucketName As %String, blobName As %String) As BlobInfo
{
}

/// List all blobs within a bucket, filtered by blobNamePrefix and blobNamePattern.
/// bucketName: bucket name
/// blobNamePrefix: blob name prefix, used to filter the result on the server.
/// blobNamePattern: blob name pattern, used to filter the result by the client. Support wild cards "?" and "*".
Method ListBlobs(bucketName As %String, blobNamePrefix As %String = "", blobNamePattern As %String = "") As %ListOfObjects
{
}

/// Upload a string blob to the cloud
/// String content will be encoded as UTF-8
Method UploadBlobFromString(bucketName As %String, blobName As %String, content As %String)
{
}

/// Upload a file blob to the cloud
Method UploadBlobFromFile(bucketName As %String, blobName As %String, filePath As %String)
{
}

/// Upload a binary or character stream blob to the cloud
/// For character stream, its content is converted to UTF-8 first, then uploaded as binary stream.
Method UploadBlobFromStream(bucketName As %String, blobName As %String, stream As %Stream.Object)
{
}

Method UploadBlobWithPresignedUrl(presignedUrl As %String, stream As %Stream.Object)
{
}

/// Download a blob from the cloud to a string
/// blobEncoding: Blob content encoding, the name follows Java convention.
/// If blobEncoding = "", treat the blob content as encoded in UTF-8.
Method DownloadBlobToString(bucketName As %String, blobName As %String, blobEncoding As %String = "") As %String
{
}

/// Download a blob from the cloud to a file
Method DownloadBlobToFile(bucketName As %String, blobName As %String, filePath As %String)
{
}

/// Download a blob from the cloud to a stream
/// blobEncoding name follows Java convention
/// If blobEncoding = "", the returning stream is %GlobalBinarayStream; otherwise, it is %GlobalCharacterStream.
Method DownloadBlobToStream(bucketName As %String, blobName As %String, blobEncoding As %String = "") As %Stream.Object
{
}

/// Delete a blob from the cloud
Method DeleteBlob(bucketName As %String, blobName As %String)
{
}

/// Test if a bucket is public accessible
Method IsBucketPublicAccessible(bucketName As %String) As %Boolean
{
}

/// Close storage client and disconnect Java gateway
Method Close()
{
}

/// Create a Java gateway connection
ClassMethod CreateGateway(javaServer As %RawString) As %External.JavaGateway [ Private ]
{
}

/// Factory method to create a cloud storage client.
/// javaServer: Java gateway name, default to default Java gateway.
/// storageProvider: Specify storage provider. 0: Amazon S3, 1: Azure Blob, 2: Google Cloud Storage.
/// credentialsFile: File name containing credentials for specific storage provider.
/// region: Cloud storage region for specific storage provider.
/// sc: returning status code.
/// endPoint: Optional PrivateLink endpoint
ClassMethod CreateClient(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, Output sc As %Status, endPoint As %String = "") As Client
{
}

/// Single method to upload blob from string
ClassMethod SingleUploadBlobFromString(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, endPoint As %String = "", bucketName As %String, blobName As %String, content As %String) As %Status
{
}

/// Single method to upload blob from file
ClassMethod SingleUploadBlobFromFile(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, endPoint As %String = "", bucketName As %String, blobName As %String, filePath As %String) As %Status
{
}

/// Single method to upload blob from stream
ClassMethod SingleUploadBlobFromStream(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, endPoint As %String = "", bucketName As %String, blobName As %String, stream As %Stream.Object) As %Status
{
}

/// Single method to download blob to string
ClassMethod SingleDownloadBlobToString(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, endPoint As %String = "", bucketName As %String, blobName As %String, blobEncoding As %String = "", Output toString As %String) As %Status
{
}

/// Single method to download blob to file
ClassMethod SingleDownloadBlobToFile(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, endPoint As %String = "", bucketName As %String, blobName As %String, filePath As %String) As %Status
{
}

/// Single method to download blob to stream
ClassMethod SingleDownloadBlobToStream(javaServer As %RawString = "", storageProvider As %Integer, credentialsFile As %String = "", region As %String, endPoint As %String = "", bucketName As %String, blobName As %String, blobEncoding As %String = "", Output toStream As %Stream.Object) As %Status
{
}

/// Copy a blob from source to target
Method CopyBlob(sourceBucketName As %String, sourceBlobName As %String, targetBucketName As %String, targetBlobName As %String)
{
}

/// Move a blob from source to target
Method MoveBlob(sourceBucketName As %String, sourceBlobName As %String, targetBucketName As %String, targetBlobName As %String)
{
}

/// Test if a bucket is writable
Method IsBucketWritable(bucketName As %String)
{
}

}
