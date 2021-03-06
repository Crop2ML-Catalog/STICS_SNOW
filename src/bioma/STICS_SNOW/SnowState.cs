
using System;
using System.Collections.Generic;
using CRA.ModelLayer.Core;
using System.Reflection;
using CRA.ModelLayer.ParametersManagement;   

namespace Snow.DomainClass
{
    public class SnowState : ICloneable, IDomainClass
    {
        private double _ps;
        private double _Sdepth;
        private double _Sdry;
        private double _Swet;
        private double _tminrec;
        private double _tmaxrec;
        private double _preciprec;
        private double _Snowmelt;
        private double _Sdepth_cm;
        private ParametersIO _parametersIO;

        public SnowState()
        {
            _parametersIO = new ParametersIO(this);
        }

        public SnowState(SnowState toCopy, bool copyAll) // copy constructor 
        {
            if (copyAll)
            {
                _ps = toCopy._ps;
                _Sdepth = toCopy._Sdepth;
                _Sdry = toCopy._Sdry;
                _Swet = toCopy._Swet;
                _tminrec = toCopy._tminrec;
                _tmaxrec = toCopy._tmaxrec;
                _preciprec = toCopy._preciprec;
                _Snowmelt = toCopy._Snowmelt;
                _Sdepth_cm = toCopy._Sdepth_cm;
            }
        }

        public double ps
        {
            get { return this._ps; }
            set { this._ps= value; } 
        }
        public double Sdepth
        {
            get { return this._Sdepth; }
            set { this._Sdepth= value; } 
        }
        public double Sdry
        {
            get { return this._Sdry; }
            set { this._Sdry= value; } 
        }
        public double Swet
        {
            get { return this._Swet; }
            set { this._Swet= value; } 
        }
        public double tminrec
        {
            get { return this._tminrec; }
            set { this._tminrec= value; } 
        }
        public double tmaxrec
        {
            get { return this._tmaxrec; }
            set { this._tmaxrec= value; } 
        }
        public double preciprec
        {
            get { return this._preciprec; }
            set { this._preciprec= value; } 
        }
        public double Snowmelt
        {
            get { return this._Snowmelt; }
            set { this._Snowmelt= value; } 
        }
        public double Sdepth_cm
        {
            get { return this._Sdepth_cm; }
            set { this._Sdepth_cm= value; } 
        }

        public string Description
        {
            get { return "SnowState of the component";}
        }

        public string URL
        {
            get { return "http://" ;}
        }

        public virtual IDictionary<string, PropertyInfo> PropertiesDescription
        {
            get { return _parametersIO.GetCachedProperties(typeof(IDomainClass));}
        }

        public virtual Boolean ClearValues()
        {
             _ps = default(double);
             _Sdepth = default(double);
             _Sdry = default(double);
             _Swet = default(double);
             _tminrec = default(double);
             _tmaxrec = default(double);
             _preciprec = default(double);
             _Snowmelt = default(double);
             _Sdepth_cm = default(double);
            return true;
        }

        public virtual Object Clone()
        {
            IDomainClass myclass = (IDomainClass) this.MemberwiseClone();
            _parametersIO.PopulateClonedCopy(myclass);
            return myclass;
        }
    }
}