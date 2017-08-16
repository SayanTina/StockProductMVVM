using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StockProductMVVM.Models
{
    public class Product : INotifyPropertyChanged
    {
        string _ProductId;
        public string ProductId
        {
            get
            {
                return _ProductId;
            }
            set
            {
                if (_ProductId != value)
                {
                    _ProductId = value;
                    RaisePropertyChanged("ProductId");
                }
            }
        }

        string _Name;
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                if (_Name != value)
                {
                    _Name = value;
                    RaisePropertyChanged("Name");
                }
            }
        }

        string _Description;
        public string Description
        {
            get
            {
                return _Description;
            }
            set
            {
                if (_Description != value)
                {
                    _Description = value;
                    RaisePropertyChanged("Description");
                }
            }
        }

        int _Cost;
        public int Cost
        {
            get
            {
                return _Cost;
            }
            set
            {
                if (_Cost != value)
                {
                    _Cost = value;
                    RaisePropertyChanged("Cost");
                }
            }
        }

        int _Price;
        public int Price
        {
            get
            {
                return _Price;
            }
            set
            {
                if (_Price != value)
                {
                    _Price = value;
                    RaisePropertyChanged("Price");
                }
            }
        }

        int _Discount;
        public int Discount
        {
            get
            {
                return _Discount;
            }
            set
            {
                if (_Discount != value)
                {
                    _Discount = value;
                    RaisePropertyChanged("Discount");
                }
            }
        }

        double _DiscountPrice;
        public double DiscountPrice
        {
            get
            {
                return _DiscountPrice;
            }
            set
            {
                if (_DiscountPrice != value)
                {
                    _DiscountPrice = value;
                    RaisePropertyChanged("DiscountPrice");
                }
            }
        }

        int _UnitInStock;
        public int UnitInStock
        {
            get
            {
                return _UnitInStock;
            }
            set
            {
                if (_UnitInStock != value)
                {
                    _UnitInStock = value;
                    RaisePropertyChanged("UnitInStock");
                }
            }
        }

        bool _Ischecked;
        public bool Ischecked
        {
            get
            {
                return _Ischecked;
            }
            set
            {
                if (_Ischecked != value)
                {
                    _Ischecked = value;
                    RaisePropertyChanged("Ischecked");
                }
            }
        }


        void RaisePropertyChanged(string prop)
        {
            if (PropertyChanged != null) { PropertyChanged(this, new PropertyChangedEventArgs(prop)); }
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}

