#ifndef _SnowState_
#define _SnowState_
#define _USE_MATH_DEFINES
#include <cmath>
#include <iostream>
# include<vector>
# include<string>
using namespace std;
class SnowState
{
    private:
        double tminrec;
        double Sdepth;
        double Sdry;
        double ps;
        double Swet;
        double tmaxrec;
        double preciprec;
        double Snowmelt;
        double Sdepth_cm;
    public:
        SnowState();
        double gettminrec();
        void settminrec(double _tminrec);
        double getSdepth();
        void setSdepth(double _Sdepth);
        double getSdry();
        void setSdry(double _Sdry);
        double getps();
        void setps(double _ps);
        double getSwet();
        void setSwet(double _Swet);
        double gettmaxrec();
        void settmaxrec(double _tmaxrec);
        double getpreciprec();
        void setpreciprec(double _preciprec);
        double getSnowmelt();
        void setSnowmelt(double _Snowmelt);
        double getSdepth_cm();
        void setSdepth_cm(double _Sdepth_cm);

};
#endif