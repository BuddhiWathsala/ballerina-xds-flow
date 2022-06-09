import ballerina/protobuf.types.'any;

public type HeaderValueOption record {|
    HeaderValue header = {};
    BoolValue append = {};
|};

public type Locality record {|
    string region = "";
    string zone = "";
    string sub_zone = "";
|};

public type Node record {|
    string id = "";
    string cluster = "";
    map<anydata> metadata = {};
    Locality locality = {};
    string user_agent_name = "";
    Extension[] extensions = [];
    string[] client_features = [];
    Address[] listening_addresses = [];
    string user_agent_version?;
    BuildVersion user_agent_build_version?;
    record {|string key; ContextParams value;|}[] dynamicparameters = [];
|};

isolated function isValidNode(Node r) returns boolean {
    int user_agent_version_typeCount = 0;
    if !(r?.user_agent_version is ()) {
        user_agent_version_typeCount += 1;
    }
    if !(r?.user_agent_build_version is ()) {
        user_agent_version_typeCount += 1;
    }
    if (user_agent_version_typeCount > 1) {
        return false;
    }
    return true;
}

isolated function setNode_UserAgentVersion(Node r, string user_agent_version) {
    r.user_agent_version = user_agent_version;
    _ = r.removeIfHasKey("user_agent_build_version");
}

isolated function setNode_UserAgentBuildVersion(Node r, BuildVersion user_agent_build_version) {
    r.user_agent_build_version = user_agent_build_version;
    _ = r.removeIfHasKey("user_agent_version");
}

public type RemoteDataSource record {|
    HttpUri http_uri = {};
    string sha256 = "";
    RetryPolicy retry_policy = {};
|};

public type Metadata record {|
    record {|string key; map<anydata> value;|}[] filtermetadata = [];
    record {|string key; 'any:Any value;|}[] typedfiltermetadata = [];
|};

public type ControlPlane record {|
    string identifier = "";
|};

public type DataSource record {|
    string filename?;
    byte[] inline_bytes?;
    string inline_string?;
|};

isolated function isValidDatasource(DataSource r) returns boolean {
    int specifierCount = 0;
    if !(r?.filename is ()) {
        specifierCount += 1;
    }
    if !(r?.inline_bytes is ()) {
        specifierCount += 1;
    }
    if !(r?.inline_string is ()) {
        specifierCount += 1;
    }
    if (specifierCount > 1) {
        return false;
    }
    return true;
}

isolated function setDataSource_Filename(DataSource r, string filename) {
    r.filename = filename;
    _ = r.removeIfHasKey("inline_bytes");
    _ = r.removeIfHasKey("inline_string");
}

isolated function setDataSource_InlineBytes(DataSource r, byte[] inline_bytes) {
    r.inline_bytes = inline_bytes;
    _ = r.removeIfHasKey("filename");
    _ = r.removeIfHasKey("inline_string");
}

isolated function setDataSource_InlineString(DataSource r, string inline_string) {
    r.inline_string = inline_string;
    _ = r.removeIfHasKey("filename");
    _ = r.removeIfHasKey("inline_bytes");
}

public type Extension record {|
    string name = "";
    string category = "";
    string type_descriptor = "";
    BuildVersion 'version = {};
    boolean disabled = false;
|};

public type TransportSocket record {|
    string name = "";
    'any:Any typed_config?;
|};

isolated function isValidTransportsocket(TransportSocket r) returns boolean {
    int config_typeCount = 0;
    if !(r?.typed_config is ()) {
        config_typeCount += 1;
    }
    if (config_typeCount > 1) {
        return false;
    }
    return true;
}

isolated function setTransportSocket_TypedConfig(TransportSocket r, 'any:Any typed_config) {
    r.typed_config = typed_config;
}

public type RuntimeUInt32 record {|
    int default_value = 0;
    string runtime_key = "";
|};

public type RuntimePercent record {|
    Percent default_value = {};
    string runtime_key = "";
|};

public type RuntimeDouble record {|
    float default_value = 0.0;
    string runtime_key = "";
|};

public type HeaderValue record {|
    string key = "";
    string value = "";
|};

public type RuntimeFeatureFlag record {|
    BoolValue default_value = {};
    string runtime_key = "";
|};

public type HeaderMap record {|
    HeaderValue[] headers = [];
|};

public type WatchedDirectory record {|
    string path = "";
|};

public type AsyncDataSource record {|
    DataSource local?;
    RemoteDataSource 'remote?;
|};

isolated function isValidAsyncdatasource(AsyncDataSource r) returns boolean {
    int specifierCount = 0;
    if !(r?.local is ()) {
        specifierCount += 1;
    }
    if !(r?.'remote is ()) {
        specifierCount += 1;
    }
    if (specifierCount > 1) {
        return false;
    }
    return true;
}

isolated function setAsyncDataSource_Local(AsyncDataSource r, DataSource local) {
    r.local = local;
    _ = r.removeIfHasKey("remote");
}

isolated function setAsyncDataSource_Remote(AsyncDataSource r, RemoteDataSource 'remote) {
    r.'remote = 'remote;
    _ = r.removeIfHasKey("local");
}

public type BuildVersion record {|
    SemanticVersion 'version = {};
    map<anydata> metadata = {};
|};

public type RuntimeFractionalPercent record {|
    FractionalPercent default_value = {};
    string runtime_key = "";
|};

public type RetryPolicy record {|
    BackoffStrategy retry_back_off = {};
    UInt32Value num_retries = {};
|};

public enum RoutingPriority {
    DEFAULT,
    HIGH
}

public enum RequestMethod {
    METHOD_UNSPECIFIED,
    GET,
    HEAD,
    POST,
    PUT,
    DELETE,
    CONNECT,
    OPTIONS,
    TRACE,
    PATCH
}

public enum TrafficDirection {
    UNSPECIFIED,
    INBOUND,
    OUTBOUND
}

