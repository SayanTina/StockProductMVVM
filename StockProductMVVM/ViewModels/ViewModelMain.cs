using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using StockProductMVVM.Models;
using StockProductMVVM.Helpers;
using StockProductMVVM.Views;
using System.Data;
using System.Windows;

namespace StockProductMVVM.ViewModels
{
    class ViewModelMain : ViewModelBase
    {
        public ObservableCollection<Product> Products { get; set; }

        object _SelectedProduct;
        public object SelectedProduct
        {
            get
            {
                return _SelectedProduct;
            }
            set
            {
                if (_SelectedProduct != value)
                {
                    _SelectedProduct = value;
                    RaisePropertyChanged("SelectedProduct");
                }
            }
        }

        private bool _CbAll;
        
        public bool CbAll
        {
            get { return _CbAll; }
            set {
                if (_CbAll != value)
                {
                    _CbAll = value;
                    RaisePropertyChanged("CbAll");
                }
                if(Products != null)
                {
                    foreach(Product p in Products)
                    {
                        p.Ischecked = value;
                    }
                }
            }
        }



        public RelayCommand AddProductCommand { get; set; }
        public RelayCommand EditProductCommand { get; set; }
        public RelayCommand DeleteProductCommand { get; set; }
        public RelayCommand CheckAllProductCommand { get; set; }

        public ViewModelMain()
        {
            Products = new ObservableCollection<Models.Product>
            {
                new Product { ProductId="001", Name="Sugus", Description="Candy", Cost=100, Price=200, Discount=0, DiscountPrice=200, UnitInStock=10, Ischecked=true},
                new Product { ProductId="002", Name="Sugus0", Description="Candy", Cost=100, Price=200, Discount=0, DiscountPrice=200, UnitInStock=10, Ischecked=false},
                new Product { ProductId="003", Name="Sugus1", Description="Candy", Cost=100, Price=200, Discount=0, DiscountPrice=200, UnitInStock=10, Ischecked=false},
            };

            AddProductCommand = new RelayCommand(AddProduct);
            EditProductCommand = new RelayCommand(EditProduct);
            DeleteProductCommand = new RelayCommand(DeleteProduct);
            CheckAllProductCommand = new RelayCommand(CheckAllProduct);
        }

        void AddProduct(object parameter)
        {
            FormProduct form = new FormProduct();
            form.DataContext = new ViewModelFormProduct()
            {
                Edit_Mode = false,
                VMMain = this
            };
            form.Show();
        }

        void EditProduct(object parameter)
        {
            if (SelectedProduct == null) return;
            FormProduct form = new FormProduct();
            form.DataContext = new ViewModelFormProduct()
            {
                ProductId = (parameter as Product).ProductId,
                Name = (parameter as Product).Name,
                Description = (parameter as Product).Description,
                Cost = (parameter as Product).Cost,
                Price = (parameter as Product).Price,
                Discount = (parameter as Product).Discount,
                UnitInStock = (parameter as Product).UnitInStock,
                Edit_Mode = true,
                VMMain = this,
            };
            form.Show();
        }
        void DeleteProduct(object parameter)
        {
            Product pd;
            for(int i = Products.Count()-1;i >= 0; i--)
            {
                if (Products[i].Ischecked)
                {
                    pd = Products[i];
                    Products.Remove(pd);
                }

            }

        }
        void CheckAllProduct(object parameter)
        {
            MessageBox.Show("In FN");
            for (int i = Products.Count() - 1; i >= 0; i--)
            {
                if (CbAll)
                    Products[i].Ischecked = true;
                else
                    Products[i].Ischecked = false;
            }
        }
    }
}
