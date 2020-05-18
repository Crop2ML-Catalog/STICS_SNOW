MODULE Snowdrymod
    IMPLICIT NONE
CONTAINS

    SUBROUTINE model_snowdry(Sdry_t1, &
        Snowaccu, &
        Mrf, &
        M, &
        Sdry)
        IMPLICIT NONE
        REAL, INTENT(IN) :: Sdry_t1
        REAL, INTENT(IN) :: Snowaccu
        REAL, INTENT(IN) :: Mrf
        REAL, INTENT(IN) :: M
        REAL, INTENT(OUT) :: Sdry
        REAL:: tmp_sdry
        !- Description:
    !            * Title: water in solid state in the snow cover Calculation
    !            * Author: STICS
    !            * Reference: -
    !            * Institution: INRA
    !            * Abstract: -
        !- inputs:
    !            * name: Sdry_t1
    !                          ** description : water in solid state in the snow cover in previous day
    !                          ** inputtype : variable
    !                          ** variablecategory : state
    !                          ** datatype : DOUBLE
    !                          ** default : 0.0
    !                          ** min : 0.0
    !                          ** max : 500.0
    !                          ** unit : mm
    !                          ** uri : 
    !            * name: Snowaccu
    !                          ** description : snowfall accumulation
    !                          ** inputtype : variable
    !                          ** variablecategory : state
    !                          ** datatype : DOUBLE
    !                          ** default : 0.0
    !                          ** min : 
    !                          ** max : 
    !                          ** unit : mm
    !                          ** uri : 
    !            * name: Mrf
    !                          ** description : liquid water in the snow cover in the process of refreezing
    !                          ** inputtype : variable
    !                          ** variablecategory : state
    !                          ** datatype : DOUBLE
    !                          ** default : 0.0
    !                          ** min : 
    !                          ** max : 
    !                          ** unit : mm
    !                          ** uri : 
    !            * name: M
    !                          ** description : snow in the process of melting
    !                          ** inputtype : variable
    !                          ** variablecategory : state
    !                          ** datatype : DOUBLE
    !                          ** default : 0.0
    !                          ** min : 
    !                          ** max : 
    !                          ** unit : mm
    !                          ** uri : 
        !- outputs:
    !            * name: Sdry
    !                          ** description : water in solid state in the snow cover
    !                          ** variablecategory : state
    !                          ** datatype : DOUBLE
    !                          ** min : 0.0
    !                          ** max : 500.0
    !                          ** unit : mm
    !                          ** uri : 
        Sdry = 0.0
        IF(M .LE. Sdry_t1) THEN
            tmp_sdry = Snowaccu + Mrf - M + Sdry_t1
            IF(tmp_sdry .LT. 0.0) THEN
                Sdry = 0.001
            ELSE
                Sdry = tmp_sdry
            END IF
        END IF
    END SUBROUTINE model_snowdry

END MODULE
