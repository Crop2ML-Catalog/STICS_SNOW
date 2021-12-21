public class SnowComponent
{
    
    public SnowComponent() { }
    

    //Declaration of the associated strategies
    Melting _Melting = new Melting();
    Refreezing _Refreezing = new Refreezing();
    SnowAccumulation _SnowAccumulation = new SnowAccumulation();
    SnowDensity _SnowDensity = new SnowDensity();
    SnowDepth _SnowDepth = new SnowDepth();
    SnowDepthTrans _SnowDepthTrans = new SnowDepthTrans();
    SnowDry _SnowDry = new SnowDry();
    SnowMelt _SnowMelt = new SnowMelt();
    SnowWet _SnowWet = new SnowWet();
    Tavg _Tavg = new Tavg();
    TempMax _TempMax = new TempMax();
    TempMin _TempMin = new TempMin();
    Preciprec _Preciprec = new Preciprec();

    public double Tmf
    {
        get
        {
             return _Refreezing.Tmf; 
        }
        set
        {
            _Refreezing.Tmf = value;
            _Melting.Tmf = value;
        }
    }
    public double SWrf
    {
        get
        {
             return _Refreezing.SWrf; 
        }
        set
        {
            _Refreezing.SWrf = value;
        }
    }
    public double tsmax
    {
        get
        {
             return _SnowAccumulation.tsmax; 
        }
        set
        {
            _SnowAccumulation.tsmax = value;
        }
    }
    public double DKmax
    {
        get
        {
             return _Melting.DKmax; 
        }
        set
        {
            _Melting.DKmax = value;
        }
    }
    public double trmax
    {
        get
        {
             return _SnowAccumulation.trmax; 
        }
        set
        {
            _SnowAccumulation.trmax = value;
        }
    }
    public double rho
    {
        get
        {
             return _Preciprec.rho; 
        }
        set
        {
            _Preciprec.rho = value;
            _SnowDepth.rho = value;
        }
    }
    public double Kmin
    {
        get
        {
             return _Melting.Kmin; 
        }
        set
        {
            _Melting.Kmin = value;
        }
    }
    public double Pns
    {
        get
        {
             return _SnowDepthTrans.Pns; 
        }
        set
        {
            _SnowDepthTrans.Pns = value;
        }
    }
    public double tmaxseuil
    {
        get
        {
             return _TempMin.tmaxseuil; 
        }
        set
        {
            _TempMin.tmaxseuil = value;
            _TempMax.tmaxseuil = value;
        }
    }
    public double tminseuil
    {
        get
        {
             return _TempMin.tminseuil; 
        }
        set
        {
            _TempMin.tminseuil = value;
            _TempMax.tminseuil = value;
        }
    }
    public double prof
    {
        get
        {
             return _TempMin.prof; 
        }
        set
        {
            _TempMin.prof = value;
            _TempMax.prof = value;
        }
    }
    public double E
    {
        get
        {
             return _SnowDepth.E; 
        }
        set
        {
            _SnowDepth.E = value;
        }
    }

    public void  CalculateModel(SnowState s, SnowState s1, SnowRate r, SnowAuxiliary a, SnowExogenous ex)
    {
        _snowaccumulation.CalculateModel(s,s1, r, a, ex);
        _snowdensity.CalculateModel(s,s1, r, a, ex);
        _tavg.CalculateModel(s,s1, r, a, ex);
        _melting.CalculateModel(s,s1, r, a, ex);
        _refreezing.CalculateModel(s,s1, r, a, ex);
        _snowmelt.CalculateModel(s,s1, r, a, ex);
        _snowdry.CalculateModel(s,s1, r, a, ex);
        _snowdepth.CalculateModel(s,s1, r, a, ex);
        _snowwet.CalculateModel(s,s1, r, a, ex);
        _snowdepthtrans.CalculateModel(s,s1, r, a, ex);
        _preciprec.CalculateModel(s,s1, r, a, ex);
        _tempmin.CalculateModel(s,s1, r, a, ex);
        _tempmax.CalculateModel(s,s1, r, a, ex);
    }
    
    public SnowComponent(SnowComponent toCopy): this() // copy constructor 
    {

        Tmf = toCopy.Tmf;
        SWrf = toCopy.SWrf;
        tsmax = toCopy.tsmax;
        DKmax = toCopy.DKmax;
        trmax = toCopy.trmax;
        rho = toCopy.rho;
        Kmin = toCopy.Kmin;
        Pns = toCopy.Pns;
        tmaxseuil = toCopy.tmaxseuil;
        tminseuil = toCopy.tminseuil;
        prof = toCopy.prof;
        E = toCopy.E;
    }
}