import ballerina/time;

public type HttpUri record {|
    string uri = "";
    time:Seconds timeout = 0.0d;
    string cluster?;
|};

isolated function isValidHttpuri(HttpUri r) returns boolean {
    int http_upstream_typeCount = 0;
    if !(r?.cluster is ()) {
        http_upstream_typeCount += 1;
    }
    if (http_upstream_typeCount > 1) {
        return false;
    }
    return true;
}

isolated function setHttpUri_Cluster(HttpUri r, string cluster) {
    r.cluster = cluster;
}

