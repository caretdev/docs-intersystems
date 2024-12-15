Class %External.Messaging.SNSClient Extends Client
{

/// Applicable to SNS. <br>
/// Creates a SNS Topic with the name <br>
/// Output topicARN of created topic
Method CreateTopic(topicName As %String, Output topicARN As %String) As %Status
{
}

/// Delete topic with topicARN
Method DeleteTopic(topicARN As %String) As %Status
{
}

}
