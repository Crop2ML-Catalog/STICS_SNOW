#include "SnowAuxiliary.h"
SnowAuxiliary::SnowAuxiliary() { }

int SnowAuxiliary::getjul() {return this-> jul; }
double SnowAuxiliary::getprecip() {return this-> precip; }
double SnowAuxiliary::gettmax() {return this-> tmax; }
double SnowAuxiliary::gettmin() {return this-> tmin; }
double SnowAuxiliary::gettavg() {return this-> tavg; }

void SnowAuxiliary::setjul(int _jul) { this->jul = _jul; }
void SnowAuxiliary::setprecip(double _precip) { this->precip = _precip; }
void SnowAuxiliary::settmax(double _tmax) { this->tmax = _tmax; }
void SnowAuxiliary::settmin(double _tmin) { this->tmin = _tmin; }
void SnowAuxiliary::settavg(double _tavg) { this->tavg = _tavg; }