public type Percent record {|
    float value = 0.0;
|};

public type FractionalPercent record {|
    int numerator = 0;
    FractionalPercent_DenominatorType denominator = HUNDRED;
|};

public enum FractionalPercent_DenominatorType {
    HUNDRED,
    TEN_THOUSAND,
    MILLION
}

