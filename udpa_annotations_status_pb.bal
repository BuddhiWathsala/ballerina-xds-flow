public type StatusAnnotation record {|
    boolean work_in_progress = false;
    PackageVersionStatus package_version_status = UNKNOWN;
|};

public enum PackageVersionStatus {
    UNKNOWN,
    FROZEN,
    ACTIVE,
    NEXT_MAJOR_VERSION_CANDIDATE
}

