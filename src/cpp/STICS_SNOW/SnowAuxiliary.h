#ifndef _SnowAuxiliary_
#define _SnowAuxiliary_
#define _USE_MATH_DEFINES
#include <cmath>
#include <iostream>
# include<vector>
# include<string>
using namespace std;
class SnowAuxiliary
{
    private:
        int jul;
        double precip;
        double tmax;
        double tmin;
        double tavg;
    public:
        SnowAuxiliary();
        int getjul();
        void setjul(int _jul);
        double getprecip();
        void setprecip(double _precip);
        double gettmax();
        void settmax(double _tmax);
        double gettmin();
        void settmin(double _tmin);
        double gettavg();
        void settavg(double _tavg);

};
#endif