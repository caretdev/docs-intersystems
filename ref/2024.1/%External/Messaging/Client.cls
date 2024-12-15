Class %External.Messaging.Client Extends %RegisteredObject [ Language = objectscript ]
{

/// Connection to a Java Gateway
Property gateway As %External.JavaGateway;

/// Remote Java messaging client object
Property jclient As %Net.Remote.Object;

/// Connect to gateway and instantiate Java messaging client
Method Connect(jclientClass As %String, settings As %String, additionalClasspaths As %String = "") As %Status
{
}

/// Connects to JMS using the passed in settings JSON string. <br>
ClassMethod CreateJMSClient(settings As %String, Output sc As %Status, additionalClasspaths As %String = "") As JMSClient
{
}

/// Connects to SNS using the passed in settings JSON string. <br>
ClassMethod CreateSNSClient(settings As %String, Output sc As %Status, additionalClasspaths As %String = "") As SNSClient
{
}

/// Connects to SQS using the passed in settings JSON string. <br>
ClassMethod CreateSQSClient(settings As %String, Output sc As %Status, additionalClasspaths As %String = "") As SQSClient
{
}

/// Connects to Kafka using the passed in settings JSON string. <br>
ClassMethod CreateKafkaClient(settings As %String, Output sc As %Status, additionalClasspaths As %String = "") As KafkaClient
{
}

/// Connects to RabbitMQ using the passed in settings JSON string. <br>
ClassMethod CreateRabbitMQClient(settings As %String, Output sc As %Status, additionalClasspaths As %String = "") As RabbitMQClient
{
}

/// Factory method to create an instance of messaging client.
/// The type of the client is dertermined by the type of the settings class.
/// Supported settings classes are SNSSettings, SQSSettings, KafkaSettings, JMSSettings and RabbitMQSettings.
/// additionalClasspaths: Additional Java class paths needed by the Java Gateway to instantiate the messaging client.
/// If there are multiple paths, pass in a %ListOfDataTypes.
ClassMethod CreateClient(settings As Settings, Output sc As %Status, additionalClasspaths As %String = "") As Client
{
}

/// Applicable to all. <br>
/// Sends a message that is passed in as a parameter, which can be any %External.Messaging.___Message objects.
Method SendMessage(message As %External.Messaging.Message) As %Status
{
}

/// Applicable to all except SNS.
/// Receives a List of Messages.
/// queueOrTopicName: Name of the queue/topic to receive messages from.
/// messages: Output list of received messages(%External.Messaging.___Message objects).
/// settings: Optional attributes in JSON string required by the underlying messaging provider to receive messages.
/// Corresponding settings classes are KafkaReceiveSettings, SQSReceiveSettings, JMSReceiveSettings and RabbitMQReceiveSettings.
Method ReceiveMessage(queueOrTopicName As %String, Output messages As %ListOfObjects, settings As %String = "") As %Status
{
}

/// Applicable to all except JMS.
/// settings: JSON string representing attributes required to create the queue/topic.
/// The settings are only required for Kafka, SQS and RabbitMQ.
/// The corresponding settings classes are KafkaTopicSettings, SQSQueueSettings and RabbitMQQueueSettings.
Method CreateQueueOrTopic(queueOrTopicName As %String, settings As %String = "") As %Status
{
}

/// Applicable to all except JMS.
Method DeleteQueueOrTopic(queueOrTopicName As %String) As %Status
{
}

/// Close connections and release resources
Method Close() As %Status
{
}

}
