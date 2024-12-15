Class %External.Messaging.SQSClient Extends Client
{

/// Create a queue
Method CreateQueue(queueName As %String, settings As SQSQueueSettings) As %Status
{
}

/// Delete a queue
Method DeleteQueue(queueName As %String) As %Status
{
}

/// Delete message from queue
Method DeleteMessage(queueName As %String, receiptHandle As %String) As %Status
{
}

}
