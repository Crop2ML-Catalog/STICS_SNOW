import numpy 
from math import *
def model_tavg(float tmin=0.0,
               float tmax=0.0):
    """

    Mean temperature  calculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: It simulates the depth of snow cover and recalculate weather data

    """
    cdef float tavg
    tavg = (tmin + tmax)/2
    return  tavg
