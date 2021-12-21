using System;
using System.Collections.Generic;
using System.Linq;
class SnowWrapper
{
    private SnowState s;
    private SnowRate r;
    private SnowAuxiliary a;
    private SnowExogenous ex;
    private SnowComponent snowComponent;

    public SnowWrapper()
    {
        s = new SnowState();
        r = new SnowRate();
        a = new SnowAuxiliary();
        ex = new SnowExogenous();
        snowComponent = new SnowComponent();
        loadParameters();
    }

        double Tmf = 0.0d;
    double SWrf = 0.0d;
    double tsmax = 0.0d;
    double DKmax = 0.0d;
    double trmax = 0.0d;
    double rho = 100.0d;
    double Kmin = 0.0d;
    double Pns = 100.0d;
    double tmaxseuil = 0.0d;
    double tminseuil = 0.0d;
    double prof = 0.0d;
    double E = 0.0d;

    public double ps{ get { return s.ps;}} 
     
    public double Sdepth{ get { return s.Sdepth;}} 
     
    public double Sdry{ get { return s.Sdry;}} 
     
    public double Swet{ get { return s.Swet;}} 
     
    public double tminrec{ get { return s.tminrec;}} 
     
    public double tmaxrec{ get { return s.tmaxrec;}} 
     
    public double preciprec{ get { return s.preciprec;}} 
     
    public double Snowmelt{ get { return s.Snowmelt;}} 
     
    public double Sdepth_cm{ get { return s.Sdepth_cm;}} 
     
    public double M{ get { return r.M;}} 
     
    public double Snowaccu{ get { return r.Snowaccu;}} 
     
    public double Mrf{ get { return r.Mrf;}} 
     
    public double tavg{ get { return a.tavg;}} 
     

    public SnowWrapper(SnowWrapper toCopy, bool copyAll) : this()
    {
        s = (toCopy.s != null) ? new SnowState(toCopy.s, copyAll) : null;
        r = (toCopy.r != null) ? new SnowRate(toCopy.r, copyAll) : null;
        a = (toCopy.a != null) ? new SnowAuxiliary(toCopy.a, copyAll) : null;
        ex = (toCopy.ex != null) ? new SnowExogenous(toCopy.ex, copyAll) : null;
        if (copyAll)
        {
            snowComponent = (toCopy.snowComponent != null) ? new SnowComponent(toCopy.snowComponent) : null;
        }
    }

    public void Init(){
        snowComponent.Init(s, r, a);
        loadParameters();
    }

    private void loadParameters()
    {
        snowComponent.Tmf = Tmf;
        snowComponent.SWrf = SWrf;
        snowComponent.tsmax = tsmax;
        snowComponent.DKmax = DKmax;
        snowComponent.trmax = trmax;
        snowComponent.rho = rho;
        snowComponent.Kmin = Kmin;
        snowComponent.Pns = Pns;
        snowComponent.tmaxseuil = tmaxseuil;
        snowComponent.tminseuil = tminseuil;
        snowComponent.prof = prof;
        snowComponent.E = E;
    }

    public void EstimateSnow(int jul, double precip, double tmax, double tmin)
    {
        a.jul = jul;
        a.precip = precip;
        a.tmax = tmax;
        a.tmin = tmin;
        snowComponent.CalculateModel(s,s1, r, a, ex);
    }

}