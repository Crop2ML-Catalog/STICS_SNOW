#include "SnowRate.h"
SnowRate::SnowRate() { }

double SnowRate::getM() {return this-> M; }
double SnowRate::getSnowaccu() {return this-> Snowaccu; }
double SnowRate::getMrf() {return this-> Mrf; }

void SnowRate::setM(double _M) { this->M = _M; }
void SnowRate::setSnowaccu(double _Snowaccu) { this->Snowaccu = _Snowaccu; }
void SnowRate::setMrf(double _Mrf) { this->Mrf = _Mrf; }