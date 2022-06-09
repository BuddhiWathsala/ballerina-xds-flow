public type SocketOption record {|
    string description = "";
    int level = 0;
    int name = 0;
    SocketOption_SocketState state = STATE_PREBIND;
    int int_value?;
    byte[] buf_value?;
|};

isolated function isValidSocketoption(SocketOption r) returns boolean {
    int valueCount = 0;
    if !(r?.int_value is ()) {
        valueCount += 1;
    }
    if !(r?.buf_value is ()) {
        valueCount += 1;
    }
    if (valueCount > 1) {
        return false;
    }
    return true;
}

isolated function setSocketOption_IntValue(SocketOption r, int int_value) {
    r.int_value = int_value;
    _ = r.removeIfHasKey("buf_value");
}

isolated function setSocketOption_BufValue(SocketOption r, byte[] buf_value) {
    r.buf_value = buf_value;
    _ = r.removeIfHasKey("int_value");
}

public enum SocketOption_SocketState {
    STATE_PREBIND,
    STATE_BOUND,
    STATE_LISTENING
}

