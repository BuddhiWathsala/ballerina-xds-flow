import ballerina/time;

public type BackoffStrategy record {|
    time:Seconds base_interval = 0.0d;
    time:Seconds max_interval = 0.0d;
|};

