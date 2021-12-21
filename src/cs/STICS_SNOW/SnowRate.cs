using System;
using System.Collections.Generic;

public class SnowRate 
{
    private double _M;
    private double _Snowaccu;
    private double _Mrf;
    
    public SnowRate() { }
    
    
    public SnowRate(SnowRate toCopy, bool copyAll) // copy constructor 
    {
    if (copyAll)
    {
    
    _M = toCopy._M;
    _Snowaccu = toCopy._Snowaccu;
    _Mrf = toCopy._Mrf;
    }
    }
    public double M
        {
            get { return this._M; }
            set { this._M= value; } 
        }
    public double Snowaccu
        {
            get { return this._Snowaccu; }
            set { this._Snowaccu= value; } 
        }
    public double Mrf
        {
            get { return this._Mrf; }
            set { this._Mrf= value; } 
        }
}