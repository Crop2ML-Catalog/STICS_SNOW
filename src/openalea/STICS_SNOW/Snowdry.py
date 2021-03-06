# coding: utf8
from copy import copy

import numpy
from math import *

def model_snowdry(Sdry_t1 = 0.0,
         Snowaccu = 0.0,
         Mrf = 0.0,
         M = 0.0):
    """
     - Name: SnowDry -Version: 1.0, -Time step: 1
     - Description:
                 * Title: water in solid state in the snow cover Calculation
                 * Author: STICS
                 * Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
                 * Institution: INRA
                 * Abstract: water in solid state in the snow cover
     - inputs:
                 * name: Sdry_t1
                               ** description : water in solid state in the snow cover in previous day
                               ** inputtype : variable
                               ** variablecategory : state
                               ** datatype : DOUBLE
                               ** default : 0.0
                               ** min : 0.0
                               ** max : 500.0
                               ** unit : mmW
                               ** uri : 
                 * name: Snowaccu
                               ** description : snowfall accumulation
                               ** inputtype : variable
                               ** variablecategory : state
                               ** datatype : DOUBLE
                               ** default : 0.0
                               ** min : 
                               ** max : 
                               ** unit : mmW/d
                               ** uri : 
                 * name: Mrf
                               ** description : liquid water in the snow cover in the process of refreezing
                               ** inputtype : variable
                               ** variablecategory : state
                               ** datatype : DOUBLE
                               ** default : 0.0
                               ** min : 
                               ** max : 
                               ** unit : mmW/d
                               ** uri : 
                 * name: M
                               ** description : snow in the process of melting
                               ** inputtype : variable
                               ** variablecategory : state
                               ** datatype : DOUBLE
                               ** default : 0.0
                               ** min : 
                               ** max : 
                               ** unit : mmW/d
                               ** uri : 
     - outputs:
                 * name: Sdry
                               ** description : water in solid state in the snow cover
                               ** variablecategory : state
                               ** datatype : DOUBLE
                               ** min : 0.0
                               ** max : 500.0
                               ** unit : mmW
                               ** uri : 
    """

    Sdry = 0.0
    if M <= Sdry_t1:
        tmp_sdry = Snowaccu + Mrf - M + Sdry_t1
        if tmp_sdry < 0.0:
            Sdry = 0.001
        else:
            Sdry = tmp_sdry
    return Sdry