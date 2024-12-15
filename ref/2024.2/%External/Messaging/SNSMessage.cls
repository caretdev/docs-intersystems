/// Amazon S3 SNS message.
Class %External.Messaging.SNSMessage Extends %External.Messaging.Message
{

/// Message topic ARN.
Property topicARN As %String(MAXLEN = 1000) [ Required ];

/// Message body.
Property message As %String(MAXLEN = "") [ Required ];

/// Optional message subject.
Property subject As %String(MAXLEN = 1000);

}
