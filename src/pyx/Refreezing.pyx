import numpy 
from math import *
def model_refreezing(float tavg=0.0,
                     float Tmf=0.0,
                     float SWrf=0.0):
    """

    snowfall accumulation  calculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: It simulates the depth of snow cover and recalculate weather data

    """
    cdef float Mrf
    # Mrf calculation
    Mrf=0.0
    if ( tavg  < Tmf ): 
        Mrf = SWrf * ( Tmf - tavg )
    return  Mrf
