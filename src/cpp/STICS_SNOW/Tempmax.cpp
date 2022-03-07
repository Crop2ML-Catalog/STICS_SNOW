#ifndef _TEMPMAX_
#define _USE_MATH_DEFINES
#include <cmath>
#include <iostream>
#include <vector>
#include <string>
#include <numeric>
#include <algorithm>
#include <array>
#include <map>
#include <tuple>
#include "Tempmax.h"
using namespace std;

Tempmax::Tempmax() { }
double Tempmax::getprof() {return this-> prof; }
double Tempmax::gettminseuil() {return this-> tminseuil; }
double Tempmax::gettmaxseuil() {return this-> tmaxseuil; }
void Tempmax::setprof(double _prof) { this->prof = _prof; }
void Tempmax::settminseuil(double _tminseuil) { this->tminseuil = _tminseuil; }
void Tempmax::settmaxseuil(double _tmaxseuil) { this->tmaxseuil = _tmaxseuil; }
void Tempmax::Calculate_Model(SnowState& s, SnowState& s1, SnowRate& r, SnowAuxiliary& a, SnowExogenous& ex)
{
    //- Name: TempMax -Version: 1.0, -Time step: 1
    //- Description:
    //            * Title: Model of Maximum temperature recalculation
    //            * Author: Guillaume Jégo,
    //            Martin Chantigny,
    //            Elizabeth Pattey,
    //            Gilles Bélanger,
    //            Philippe Rochette,
    //            Anne Vanasse,
    //            Claudia Goyer
    //		
    //            * Reference: doi:http://dx.doi.org/10.1016/j.agrformet.2014.05.002
    //            * Institution: Agriculture and Agri-Food Canada,
    //				Agriculture and Agri-Food Canada,
    //				Agriculture and Agri-Food Canada,
    //				Agriculture and Agri-Food Canada,
    //				Agriculture and Agri-Food Canada,
    //				CanadaLaval University,
    //				Agriculture and Agri-Food Canada
    //		
    //            * ExtendedDescription: It estimates the new maximum temperature
    //            * ShortDescription: It estimates the new maximum temperature
    //- inputs:
    //            * name: Sdepth_cm
    //                          ** description : snow depth
    //                          ** inputtype : variable
    //                          ** variablecategory : state
    //                          ** datatype : DOUBLE
    //                          ** default : 0.0
    //                          ** min : 0.0
    //                          ** max : 500.0
    //                          ** unit : cm
    //                          ** uri : 
    //            * name: prof
    //                          ** description : snow cover threshold for snow insulation 
    //                          ** inputtype : parameter
    //                          ** parametercategory : constant
    //                          ** datatype : DOUBLE
    //                          ** default : 0.0
    //                          ** min : 0.0
    //                          ** max : 1000
    //                          ** unit : cm
    //                          ** uri : 
    //            * name: tmax
    //                          ** description : current maximum air temperature
    //                          ** inputtype : variable
    //                          ** variablecategory : auxiliary
    //                          ** datatype : DOUBLE
    //                          ** default : 0.0
    //                          ** min : 0.0
    //                          ** max : 100.0
    //                          ** unit : degC
    //                          ** uri : 
    //            * name: tminseuil
    //                          ** description : minimum temperature when snow cover is higher than prof
    //                          ** inputtype : parameter
    //                          ** parametercategory : constant
    //                          ** datatype : DOUBLE
    //                          ** default : 0.0
    //                          ** min : 0.0
    //                          ** max : 5000.0
    //                          ** unit : degC
    //                          ** uri : 
    //            * name: tmaxseuil
    //                          ** description : maximum temperature when snow cover is higher than prof
    //                          ** inputtype : parameter
    //                          ** parametercategory : constant
    //                          ** datatype : DOUBLE
    //                          ** default : 0.0
    //                          ** min : 
    //                          ** max : 
    //                          ** unit : degC
    //                          ** uri : 
    //- outputs:
    //            * name: tmaxrec
    //                          ** description : recalculated maximum temperature
    //                          ** variablecategory : state
    //                          ** datatype : DOUBLE
    //                          ** min : 0.0
    //                          ** max : 500.0
    //                          ** unit : degC
    //                          ** uri : 
    double Sdepth_cm = s.getSdepth_cm();
    double tmax = a.gettmax();
    double tmaxrec;
    tmaxrec = tmax;
    if (Sdepth_cm > prof)
    {
        if (tmax < tminseuil)
        {
            tmaxrec = tminseuil;
        }
        else
        {
            if (tmax > tmaxseuil)
            {
                tmaxrec = tmaxseuil;
            }
        }
    }
    else
    {
        if (Sdepth_cm > 0.0)
        {
            if (tmax <= 0.0)
            {
                tmaxrec = tmaxseuil - ((1 - (Sdepth_cm / prof)) * -tmax);
            }
            else
            {
                tmaxrec = 0.0;
            }
        }
    }
    s.settmaxrec(tmaxrec);
}
#endif