import ballerina/io;
public function main() returns error? {
    AggregatedDiscoveryServiceClient adsClient = check new ("http://xds.domain.com:18000");
    StreamAggregatedResourcesStreamingClient streamingClient = check adsClient->StreamAggregatedResources();
    check sendLdsRequest(streamingClient);
    
}


function sendLdsRequest(StreamAggregatedResourcesStreamingClient streamingClient) returns error? {
    Node node = {
        id: "b7f9c818-fb46-43ca-8662-d3bdbcf7ec18~10.0.0.1",
        metadata: {
            "R_GCP_PROJECT_NUMBER": "123456789012"
        },
        locality: {
            zone: "us-central1-a"
        },
        user_agent_version: "1.41.0",
        user_agent_name: "gRPC Java",
        client_features: ["envoy.lb.does_not_support_overprovisioning"]
    };
    DiscoveryRequest request = {
        version_info: "",
        resource_names: ["be-srv"],
        type_url: "type.googleapis.com/envoy.config.listener.v3.Listener",
        node: node,
        response_nonce: ""
    };
    _ = check streamingClient->sendDiscoveryRequest(request);
    _ = check streamingClient->complete();
    DiscoveryResponse? response = check streamingClient->receiveDiscoveryResponse();
    io:println(`LDS: ${response}`);
    io:println(response is ());
    io:println(response);
}