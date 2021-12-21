#ifndef _SnowRate_
#define _SnowRate_
#define _USE_MATH_DEFINES
#include <cmath>
#include <iostream>
# include<vector>
# include<string>
using namespace std;
class SnowRate
{
    private:
        double M;
        double Snowaccu;
        double Mrf;
    public:
        SnowRate();
        double getM();
        void setM(double _M);
        double getSnowaccu();
        void setSnowaccu(double _Snowaccu);
        double getMrf();
        void setMrf(double _Mrf);

};
#endif