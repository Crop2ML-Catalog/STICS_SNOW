#include "SnowState.h"
SnowState::SnowState() { }

double SnowState::gettminrec() {return this-> tminrec; }
double SnowState::getSdepth() {return this-> Sdepth; }
double SnowState::getSdry() {return this-> Sdry; }
double SnowState::getps() {return this-> ps; }
double SnowState::getSwet() {return this-> Swet; }
double SnowState::gettmaxrec() {return this-> tmaxrec; }
double SnowState::getpreciprec() {return this-> preciprec; }
double SnowState::getSnowmelt() {return this-> Snowmelt; }
double SnowState::getSdepth_cm() {return this-> Sdepth_cm; }

void SnowState::settminrec(double _tminrec) { this->tminrec = _tminrec; }
void SnowState::setSdepth(double _Sdepth) { this->Sdepth = _Sdepth; }
void SnowState::setSdry(double _Sdry) { this->Sdry = _Sdry; }
void SnowState::setps(double _ps) { this->ps = _ps; }
void SnowState::setSwet(double _Swet) { this->Swet = _Swet; }
void SnowState::settmaxrec(double _tmaxrec) { this->tmaxrec = _tmaxrec; }
void SnowState::setpreciprec(double _preciprec) { this->preciprec = _preciprec; }
void SnowState::setSnowmelt(double _Snowmelt) { this->Snowmelt = _Snowmelt; }
void SnowState::setSdepth_cm(double _Sdepth_cm) { this->Sdepth_cm = _Sdepth_cm; }