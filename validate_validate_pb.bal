import ballerina/time;

public type FieldRules record {|
    MessageRules message = {};
    FloatRules 'float?;
    DoubleRules double?;
    Int32Rules int32?;
    Int64Rules int64?;
    UInt32Rules uint32?;
    UInt64Rules uint64?;
    SInt32Rules sint32?;
    SInt64Rules sint64?;
    Fixed32Rules fixed32?;
    Fixed64Rules fixed64?;
    SFixed32Rules sfixed32?;
    SFixed64Rules sfixed64?;
    BoolRules bool?;
    StringRules 'string?;
    BytesRules bytes?;
    EnumRules 'enum?;
    RepeatedRules repeated?;
    MapRules 'map?;
    AnyRules 'any?;
    DurationRules duration?;
    TimestampRules timestamp?;
|};

isolated function isValidFieldrules(FieldRules r) returns boolean {
    int typeCount = 0;
    if !(r?.'float is ()) {
        typeCount += 1;
    }
    if !(r?.double is ()) {
        typeCount += 1;
    }
    if !(r?.int32 is ()) {
        typeCount += 1;
    }
    if !(r?.int64 is ()) {
        typeCount += 1;
    }
    if !(r?.uint32 is ()) {
        typeCount += 1;
    }
    if !(r?.uint64 is ()) {
        typeCount += 1;
    }
    if !(r?.sint32 is ()) {
        typeCount += 1;
    }
    if !(r?.sint64 is ()) {
        typeCount += 1;
    }
    if !(r?.fixed32 is ()) {
        typeCount += 1;
    }
    if !(r?.fixed64 is ()) {
        typeCount += 1;
    }
    if !(r?.sfixed32 is ()) {
        typeCount += 1;
    }
    if !(r?.sfixed64 is ()) {
        typeCount += 1;
    }
    if !(r?.bool is ()) {
        typeCount += 1;
    }
    if !(r?.'string is ()) {
        typeCount += 1;
    }
    if !(r?.bytes is ()) {
        typeCount += 1;
    }
    if !(r?.'enum is ()) {
        typeCount += 1;
    }
    if !(r?.repeated is ()) {
        typeCount += 1;
    }
    if !(r?.'map is ()) {
        typeCount += 1;
    }
    if !(r?.'any is ()) {
        typeCount += 1;
    }
    if !(r?.duration is ()) {
        typeCount += 1;
    }
    if !(r?.timestamp is ()) {
        typeCount += 1;
    }
    if (typeCount > 1) {
        return false;
    }
    return true;
}

isolated function setFieldRules_Float(FieldRules r, FloatRules 'float) {
    r.'float = 'float;
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Double(FieldRules r, DoubleRules double) {
    r.double = double;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Int32(FieldRules r, Int32Rules int32) {
    r.int32 = int32;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Int64(FieldRules r, Int64Rules int64) {
    r.int64 = int64;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Uint32(FieldRules r, UInt32Rules uint32) {
    r.uint32 = uint32;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Uint64(FieldRules r, UInt64Rules uint64) {
    r.uint64 = uint64;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Sint32(FieldRules r, SInt32Rules sint32) {
    r.sint32 = sint32;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Sint64(FieldRules r, SInt64Rules sint64) {
    r.sint64 = sint64;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Fixed32(FieldRules r, Fixed32Rules fixed32) {
    r.fixed32 = fixed32;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Fixed64(FieldRules r, Fixed64Rules fixed64) {
    r.fixed64 = fixed64;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Sfixed32(FieldRules r, SFixed32Rules sfixed32) {
    r.sfixed32 = sfixed32;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Sfixed64(FieldRules r, SFixed64Rules sfixed64) {
    r.sfixed64 = sfixed64;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Bool(FieldRules r, BoolRules bool) {
    r.bool = bool;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_String(FieldRules r, StringRules 'string) {
    r.'string = 'string;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Bytes(FieldRules r, BytesRules bytes) {
    r.bytes = bytes;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Enum(FieldRules r, EnumRules 'enum) {
    r.'enum = 'enum;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Repeated(FieldRules r, RepeatedRules repeated) {
    r.repeated = repeated;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Map(FieldRules r, MapRules 'map) {
    r.'map = 'map;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Any(FieldRules r, AnyRules 'any) {
    r.'any = 'any;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("duration");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Duration(FieldRules r, DurationRules duration) {
    r.duration = duration;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("timestamp");
}

isolated function setFieldRules_Timestamp(FieldRules r, TimestampRules timestamp) {
    r.timestamp = timestamp;
    _ = r.removeIfHasKey("float");
    _ = r.removeIfHasKey("double");
    _ = r.removeIfHasKey("int32");
    _ = r.removeIfHasKey("int64");
    _ = r.removeIfHasKey("uint32");
    _ = r.removeIfHasKey("uint64");
    _ = r.removeIfHasKey("sint32");
    _ = r.removeIfHasKey("sint64");
    _ = r.removeIfHasKey("fixed32");
    _ = r.removeIfHasKey("fixed64");
    _ = r.removeIfHasKey("sfixed32");
    _ = r.removeIfHasKey("sfixed64");
    _ = r.removeIfHasKey("bool");
    _ = r.removeIfHasKey("string");
    _ = r.removeIfHasKey("bytes");
    _ = r.removeIfHasKey("enum");
    _ = r.removeIfHasKey("repeated");
    _ = r.removeIfHasKey("map");
    _ = r.removeIfHasKey("any");
    _ = r.removeIfHasKey("duration");
}

public type DoubleRules record {|
    float 'const = 0.0;
    float lt = 0.0;
    float lte = 0.0;
    float gt = 0.0;
    float gte = 0.0;
    float[] 'in = [];
    float[] not_in = [];
|};

public type Int32Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type Int64Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type FloatRules record {|
    float 'const = 0.0;
    float lt = 0.0;
    float lte = 0.0;
    float gt = 0.0;
    float gte = 0.0;
    float[] 'in = [];
    float[] not_in = [];
|};

public type UInt32Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type AnyRules record {|
    boolean required = false;
    string[] 'in = [];
    string[] not_in = [];
|};

public type UInt64Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type Fixed32Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type DurationRules record {|
    boolean required = false;
    time:Seconds 'const = 0.0d;
    time:Seconds lt = 0.0d;
    time:Seconds lte = 0.0d;
    time:Seconds gt = 0.0d;
    time:Seconds gte = 0.0d;
    time:Seconds 'in = 0.0d;
    time:Seconds not_in = 0.0d;
|};

public type StringRules record {|
    string 'const = "";
    int len = 0;
    int min_len = 0;
    int max_len = 0;
    int len_bytes = 0;
    int min_bytes = 0;
    int max_bytes = 0;
    string pattern = "";
    string prefix = "";
    string suffix = "";
    string contains = "";
    string not_contains = "";
    string[] 'in = [];
    string[] not_in = [];
    boolean strict = false;
    boolean email?;
    boolean hostname?;
    boolean ip?;
    boolean ipv4?;
    boolean ipv6?;
    boolean uri?;
    boolean uri_ref?;
    boolean address?;
    boolean uuid?;
    KnownRegex well_known_regex?;
|};

isolated function isValidStringrules(StringRules r) returns boolean {
    int well_knownCount = 0;
    if !(r?.email is ()) {
        well_knownCount += 1;
    }
    if !(r?.hostname is ()) {
        well_knownCount += 1;
    }
    if !(r?.ip is ()) {
        well_knownCount += 1;
    }
    if !(r?.ipv4 is ()) {
        well_knownCount += 1;
    }
    if !(r?.ipv6 is ()) {
        well_knownCount += 1;
    }
    if !(r?.uri is ()) {
        well_knownCount += 1;
    }
    if !(r?.uri_ref is ()) {
        well_knownCount += 1;
    }
    if !(r?.address is ()) {
        well_knownCount += 1;
    }
    if !(r?.uuid is ()) {
        well_knownCount += 1;
    }
    if !(r?.well_known_regex is ()) {
        well_knownCount += 1;
    }
    if (well_knownCount > 1) {
        return false;
    }
    return true;
}

isolated function setStringRules_Email(StringRules r, boolean email) {
    r.email = email;
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Hostname(StringRules r, boolean hostname) {
    r.hostname = hostname;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Ip(StringRules r, boolean ip) {
    r.ip = ip;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Ipv4(StringRules r, boolean ipv4) {
    r.ipv4 = ipv4;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Ipv6(StringRules r, boolean ipv6) {
    r.ipv6 = ipv6;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Uri(StringRules r, boolean uri) {
    r.uri = uri;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_UriRef(StringRules r, boolean uri_ref) {
    r.uri_ref = uri_ref;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Address(StringRules r, boolean address) {
    r.address = address;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("uuid");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_Uuid(StringRules r, boolean uuid) {
    r.uuid = uuid;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("well_known_regex");
}

isolated function setStringRules_WellKnownRegex(StringRules r, KnownRegex well_known_regex) {
    r.well_known_regex = well_known_regex;
    _ = r.removeIfHasKey("email");
    _ = r.removeIfHasKey("hostname");
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
    _ = r.removeIfHasKey("uri");
    _ = r.removeIfHasKey("uri_ref");
    _ = r.removeIfHasKey("address");
    _ = r.removeIfHasKey("uuid");
}

public type MapRules record {|
    int min_pairs = 0;
    int max_pairs = 0;
    boolean no_sparse = false;
    FieldRules keys = {};
    FieldRules values = {};
|};

public type Fixed64Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type SInt32Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type BoolRules record {|
    boolean 'const = false;
|};

public type BytesRules record {|
    byte[] 'const = [];
    int len = 0;
    int min_len = 0;
    int max_len = 0;
    string pattern = "";
    byte[] prefix = [];
    byte[] suffix = [];
    byte[] contains = [];
    byte[] 'in = [];
    byte[] not_in = [];
    boolean ip?;
    boolean ipv4?;
    boolean ipv6?;
|};

isolated function isValidBytesrules(BytesRules r) returns boolean {
    int well_knownCount = 0;
    if !(r?.ip is ()) {
        well_knownCount += 1;
    }
    if !(r?.ipv4 is ()) {
        well_knownCount += 1;
    }
    if !(r?.ipv6 is ()) {
        well_knownCount += 1;
    }
    if (well_knownCount > 1) {
        return false;
    }
    return true;
}

isolated function setBytesRules_Ip(BytesRules r, boolean ip) {
    r.ip = ip;
    _ = r.removeIfHasKey("ipv4");
    _ = r.removeIfHasKey("ipv6");
}

isolated function setBytesRules_Ipv4(BytesRules r, boolean ipv4) {
    r.ipv4 = ipv4;
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv6");
}

isolated function setBytesRules_Ipv6(BytesRules r, boolean ipv6) {
    r.ipv6 = ipv6;
    _ = r.removeIfHasKey("ip");
    _ = r.removeIfHasKey("ipv4");
}

public type EnumRules record {|
    int 'const = 0;
    boolean defined_only = false;
    int[] 'in = [];
    int[] not_in = [];
|};

public type SInt64Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type TimestampRules record {|
    boolean required = false;
    time:Utc 'const = [0, 0.0d];
    time:Utc lt = [0, 0.0d];
    time:Utc lte = [0, 0.0d];
    time:Utc gt = [0, 0.0d];
    time:Utc gte = [0, 0.0d];
    boolean lt_now = false;
    boolean gt_now = false;
    time:Seconds 'within = 0.0d;
|};

public type SFixed64Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public type MessageRules record {|
    boolean skip = false;
    boolean required = false;
|};

public type RepeatedRules record {|
    int min_items = 0;
    int max_items = 0;
    boolean unique = false;
    FieldRules items = {};
|};

public type SFixed32Rules record {|
    int 'const = 0;
    int lt = 0;
    int lte = 0;
    int gt = 0;
    int gte = 0;
    int[] 'in = [];
    int[] not_in = [];
|};

public enum KnownRegex {
    UNKNOWN,
    HTTP_HEADER_NAME,
    HTTP_HEADER_VALUE
}

