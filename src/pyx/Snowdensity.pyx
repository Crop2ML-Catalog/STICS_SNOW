import numpy 
from math import *
def model_snowdensity(float ps_t1=0.0,
                      float Sdepth_t1=0.0,
                      float Sdry_t1=0.0,
                      float Swet_t1=0.0):
    """

    Density of snow cover calculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: density of snow cover

    """
    cdef float ps
    # ps calculation
    ps=0.0
    if ( abs(Sdepth_t1)  > 0.0 ):
        if ( abs( Sdry_t1 +  Swet_t1 )  > 0.0 ):
            ps = ( Sdry_t1 +  Swet_t1 )  / Sdepth_t1
        else:
            ps=ps_t1
    return  ps
