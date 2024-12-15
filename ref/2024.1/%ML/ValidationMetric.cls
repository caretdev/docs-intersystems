Class %ML.ValidationMetric Extends %Persistent [ System = 4 ]
{

Property ValidationRun As ValidationRun [ Required ];

Property MetricName As %String(MAXLEN = 200);

Property MetricValue As %Numeric;

Property TargetValue As %String(MAXLEN = 2000);

}
