import ballerina/time;
import ballerina/protobuf.types.'any;

public type DiscoveryResponse record {|
    string version_info = "";
    'any:Any[] resources = [];
    boolean canary = false;
    string type_url = "";
    string nonce = "";
    ControlPlane control_plane = {};
|};

public type Resource record {|
    string name = "";
    string[] aliases = [];
    string 'version = "";
    'any:Any 'resource = {typeUrl: "", value: ()};
    time:Seconds ttl = 0.0d;
    Resource_CacheControl cache_control = {};
|};

public type Resource_CacheControl record {|
    boolean do_not_cache = false;
|};

public type DeltaDiscoveryResponse record {|
    string system_version_info = "";
    Resource[] resources = [];
    string type_url = "";
    string[] removed_resources = [];
    string nonce = "";
    ControlPlane control_plane = {};
|};

public type DiscoveryRequest record {|
    string version_info = "";
    Node node = {};
    string[] resource_names = [];
    string type_url = "";
    string response_nonce = "";
    Status error_detail = {};
|};

public type DeltaDiscoveryRequest record {|
    Node node = {};
    string type_url = "";
    string[] resource_names_subscribe = [];
    string[] resource_names_unsubscribe = [];
    string response_nonce = "";
    Status error_detail = {};
    record {|string key; string value;|}[] initialresourceversions = [];
|};

