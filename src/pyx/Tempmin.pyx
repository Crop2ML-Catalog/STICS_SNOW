import numpy 
from math import *
def model_tempmin(float Sdepth_cm=0.0,
                  float prof=0.0,
                  float tmin=0.0,
                  float tminseuil=0.0,
                  float tmaxseuil=0.0):
    """

    Minimum temperature  calculation
    Author: STICS
    Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    Institution: INRA
    Abstract: recalculation of minimum temperature

    """
    cdef float tminrec
    tminrec=tmin
    if (Sdepth_cm  > prof):
        if(tmin  < tminseuil):
            tminrec=tminseuil
        else:
            if (tmin  > tmaxseuil):
                tminrec=tmaxseuil
    else:
        if (Sdepth_cm  > 0.0) :
            tminrec=tminseuil-(1-(Sdepth_cm/prof))*(abs(tmin)+tminseuil)
    return  tminrec
