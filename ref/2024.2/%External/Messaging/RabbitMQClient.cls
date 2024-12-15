Class %External.Messaging.RabbitMQClient Extends Client
{

/// Creates an exchange with a name, type, and its attributes
Method CreateExchange(exchangeName As %String, exchangeType As %String, durable As %Boolean, autoDelete As %Boolean) As %Status
{
}

/// Delete an exchange with the name
Method DeleteExchange(exchangeName As %String) As %Status
{
}

/// Create a queue
Method CreateQueue(queueName As %String, durable As %Boolean, exclusive As %Boolean, autoDetect As %Boolean) As %Status
{
}

/// Delete a queue
Method DeleteQueue(queueName As %String) As %Status
{
}

/// Binds a queue to an exchange with the given bindingKeys, formatted as a comma-separated list.<br>
/// If there is a comma in a binding key, escape it using the backslash character: '\,'.
/// Backslash characters can be escaped using another backslash character: '\\'.
/// Do not include a space after the comma, or the space will be included in the binding key.<br><br>
/// For example, if you wanted to bind the queue to the exchange with keys:
/// <ul>
/// <li>keynumber1</li>
/// <li>key,number,2</li>
/// <li>key\number\3</li>
/// </ul>
/// Then the contents of the bindingKeys argument would be: <br><br>
/// keynumber1,key\,number\,2,key\\number\\3
Method BindQueue(queueName As %String, exchangeName As %String, bindingKeys As %String) As %Status
{
}

}
