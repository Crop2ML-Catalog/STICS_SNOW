import numpy 
from math import *
def model_snowdepthtrans(float Sdepth=0.0,
                         float Pns=100.0):
    """

    snow cover depth conversion
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: snow cover depth in cm

    """
    cdef float Sdepth_cm
    Sdepth_cm=Sdepth*Pns
    return  Sdepth_cm
