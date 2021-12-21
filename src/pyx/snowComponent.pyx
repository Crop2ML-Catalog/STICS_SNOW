from datetime import datetime
from math import *
from snow_pkg.Melting import model_melting
from snow_pkg.Refreezing import model_refreezing
from snow_pkg.Snowaccumulation import model_snowaccumulation
from snow_pkg.Snowdensity import model_snowdensity
from snow_pkg.Snowdepth import model_snowdepth
from snow_pkg.Snowdepthtrans import model_snowdepthtrans
from snow_pkg.Snowdry import model_snowdry
from snow_pkg.Snowmelt import model_snowmelt
from snow_pkg.Snowwet import model_snowwet
from snow_pkg.Tavg import model_tavg
from snow_pkg.Tempmax import model_tempmax
from snow_pkg.Tempmin import model_tempmin
from snow_pkg.Preciprec import model_preciprec
def model_snow(int jul=0,
      float Tmf=0.0,
      float SWrf=0.0,
      float tsmax=0.0,
      float precip=0.0,
      float DKmax=0.0,
      float trmax=0.0,
      float tmax=0.0,
      float ps_t1=0.0,
      float Sdepth_t1=0.0,
      float Sdry_t1=0.0,
      float Swet_t1=0.0,
      float rho=100.0,
      float Kmin=0.0,
      float Pns=100.0,
      float tmaxseuil=0.0,
      float tminseuil=0.0,
      float tmin=0.0,
      float prof=0.0,
      float E=0.0):
    cdef float tavg
    cdef float M
    cdef float Mrf
    cdef float Snowaccu
    cdef float ps
    cdef float Snowmelt
    cdef float Sdepth
    cdef float Sdepth_cm
    cdef float Sdry
    cdef float Swet
    cdef float tmaxrec
    cdef float tminrec
    cdef float preciprec
    Snowaccu = model_snowaccumulation( tsmax,tmax,trmax,precip)
    ps = model_snowdensity( ps_t1,Sdepth_t1,Sdry_t1,Swet_t1)
    tavg = model_tavg( tmin,tmax)
    M = model_melting( jul,Tmf,DKmax,Kmin,tavg)
    Mrf = model_refreezing( tavg,Tmf,SWrf)
    Snowmelt = model_snowmelt( ps,M)
    Sdry = model_snowdry( Sdry_t1,Snowaccu,Mrf,M)
    Sdepth = model_snowdepth( Snowmelt,Sdepth_t1,Snowaccu,E,rho)
    Swet = model_snowwet( Swet_t1,precip,Snowaccu,Mrf,M,Sdry)
    Sdepth_cm = model_snowdepthtrans( Sdepth,Pns)
    preciprec = model_preciprec( Sdry_t1,Sdry,Swet,Swet_t1,Sdepth_t1,Sdepth,Mrf,precip,Snowaccu,rho)
    tminrec = model_tempmin( Sdepth_cm,prof,tmin,tminseuil,tmaxseuil)
    tmaxrec = model_tempmax( Sdepth_cm,prof,tmax,tminseuil,tmaxseuil)
    return M, tminrec, Sdepth, Sdry, Snowaccu, ps, Swet, tavg, Mrf, tmaxrec, preciprec, Snowmelt, Sdepth_cm