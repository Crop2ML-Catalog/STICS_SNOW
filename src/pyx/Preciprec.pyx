import numpy 
from math import *
def model_preciprec(float Sdry_t1=0.0,
                    float Sdry=0.0,
                    float Swet=0.0,
                    float Swet_t1=0.0,
                    float Sdepth_t1=0.0,
                    float Sdepth=0.0,
                    float Mrf=0.0,
                    float precip=0.0,
                    float Snowaccu=0.0,
                    float rho=100.0):
    """

    Precipitation ReCalculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: recalculation of precipitation

    """
    cdef float preciprec
    preciprec = precip
    if ((Sdry+Swet)<(Sdry_t1+Swet_t1)):
        preciprec=preciprec+(Sdepth_t1-Sdepth)*rho-Mrf
    preciprec=preciprec-Snowaccu
    return  preciprec
