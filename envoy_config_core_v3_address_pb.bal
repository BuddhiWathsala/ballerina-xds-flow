public type EnvoyInternalAddress record {|
    string server_listener_name?;
|};

isolated function isValidEnvoyinternaladdress(EnvoyInternalAddress r) returns boolean {
    int address_name_specifierCount = 0;
    if !(r?.server_listener_name is ()) {
        address_name_specifierCount += 1;
    }
    if (address_name_specifierCount > 1) {
        return false;
    }
    return true;
}

isolated function setEnvoyInternalAddress_ServerListenerName(EnvoyInternalAddress r, string server_listener_name) {
    r.server_listener_name = server_listener_name;
}

public type Address record {|
    SocketAddress socket_address?;
    Pipe pipe?;
    EnvoyInternalAddress envoy_internal_address?;
|};

isolated function isValidAddress(Address r) returns boolean {
    int addressCount = 0;
    if !(r?.socket_address is ()) {
        addressCount += 1;
    }
    if !(r?.pipe is ()) {
        addressCount += 1;
    }
    if !(r?.envoy_internal_address is ()) {
        addressCount += 1;
    }
    if (addressCount > 1) {
        return false;
    }
    return true;
}

isolated function setAddress_SocketAddress(Address r, SocketAddress socket_address) {
    r.socket_address = socket_address;
    _ = r.removeIfHasKey("pipe");
    _ = r.removeIfHasKey("envoy_internal_address");
}

isolated function setAddress_Pipe(Address r, Pipe pipe) {
    r.pipe = pipe;
    _ = r.removeIfHasKey("socket_address");
    _ = r.removeIfHasKey("envoy_internal_address");
}

isolated function setAddress_EnvoyInternalAddress(Address r, EnvoyInternalAddress envoy_internal_address) {
    r.envoy_internal_address = envoy_internal_address;
    _ = r.removeIfHasKey("socket_address");
    _ = r.removeIfHasKey("pipe");
}

public type CidrRange record {|
    string address_prefix = "";
    UInt32Value prefix_len = {};
|};

public type TcpKeepalive record {|
    UInt32Value keepalive_probes = {};
    UInt32Value keepalive_time = {};
    UInt32Value keepalive_interval = {};
|};

public type BindConfig record {|
    SocketAddress source_address = {};
    BoolValue freebind = {};
    SocketOption[] socket_options = [];
|};

public type Pipe record {|
    string path = "";
    int mode = 0;
|};

public type SocketAddress record {|
    SocketAddress_Protocol protocol = TCP;
    string address = "";
    string resolver_name = "";
    boolean ipv4_compat = false;
    int port_value?;
    string named_port?;
|};

isolated function isValidSocketaddress(SocketAddress r) returns boolean {
    int port_specifierCount = 0;
    if !(r?.port_value is ()) {
        port_specifierCount += 1;
    }
    if !(r?.named_port is ()) {
        port_specifierCount += 1;
    }
    if (port_specifierCount > 1) {
        return false;
    }
    return true;
}

isolated function setSocketAddress_PortValue(SocketAddress r, int port_value) {
    r.port_value = port_value;
    _ = r.removeIfHasKey("named_port");
}

isolated function setSocketAddress_NamedPort(SocketAddress r, string named_port) {
    r.named_port = named_port;
    _ = r.removeIfHasKey("port_value");
}

public enum SocketAddress_Protocol {
    TCP,
    UDP
}

