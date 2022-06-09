public type MigrateAnnotation record {|
    string rename = "";
|};

public type FileMigrateAnnotation record {|
    string move_to_package = "";
|};

public type FieldMigrateAnnotation record {|
    string rename = "";
    string oneof_promotion = "";
|};

