import numpy 
from math import *
def model_snowaccumulation(float tsmax=0.0,
                           float tmax=0.0,
                           float trmax=0.0,
                           float precip=0.0):
    """

    snowfall accumulation  calculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: It simulates the depth of snow cover and recalculate weather data

    """
    cdef float Snowaccu
    # Snow accumulation (unit cm)
    cdef float fs=0.0
    if (tmax < tsmax): fs=1.0
    if ((tmax >= tsmax) and (tmax  <= trmax)):
        fs=(trmax-tmax)/(trmax-tsmax)
    Snowaccu=fs*precip 
    return  Snowaccu
