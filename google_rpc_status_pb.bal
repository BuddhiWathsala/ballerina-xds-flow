import ballerina/protobuf.types.'any;

public type Status record {|
    int code = 0;
    string message = "";
    'any:Any[] details = [];
|};

