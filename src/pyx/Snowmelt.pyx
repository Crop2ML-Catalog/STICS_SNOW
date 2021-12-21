import numpy 
from math import *
def model_snowmelt(float ps=0.0,
                   float M=0.0):
    """

    Snow Melt
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: Snow melt

    """
    cdef float Snowmelt
    # Snow melt calculation
    Snowmelt=0.0
    if( ps  > 1e-8 ):
        Snowmelt = M / ps
    return  Snowmelt
