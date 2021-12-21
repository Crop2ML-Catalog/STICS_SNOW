import numpy 
from math import *
def model_snowdepth(float Snowmelt=0.0,
                    float Sdepth_t1=0.0,
                    float Snowaccu=0.0,
                    float E=0.0,
                    float rho=100.0):
    """

    snow cover depth Calculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: snow cover depth Calculation

    """
    cdef float Sdepth
    # Snow depth calculation
    Sdepth=0.0
    if(Snowmelt  <= (Sdepth_t1+Snowaccu/rho)): 
        Sdepth=(Snowaccu/rho+Sdepth_t1-Snowmelt-(Sdepth_t1*E))
    return  Sdepth
