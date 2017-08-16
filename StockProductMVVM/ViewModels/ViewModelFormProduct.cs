using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StockProductMVVM.Helpers;
using StockProductMVVM.Models;
using StockProductMVVM.Views;
using System.Collections.ObjectModel;
using System.Windows.Data;
using System.Windows;

namespace StockProductMVVM.ViewModels
{
    class ViewModelFormProduct : ViewModelMain
    {
        public RelayCommand SaveProductCommand { get; set; }
        public ViewModelMain VMMain { get; set; }
        public string ProductId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Cost { get; set; }
        public int Price { get; set; }
        public int Discount { get; set; }
        public int UnitInStock { get; set; }
        public bool Edit_Mode { get; set;}
        public ViewModelFormProduct()
        {
            SaveProductCommand = new RelayCommand(SaveProduct);
        }

        void SaveProduct(object parameter)
        {
            var value = (object[])parameter;
            if (!Edit_Mode) // Add item mode
            {
                VMMain.Products.Add(new Product
                {
                    ProductId = (string)value[0],
                    Name = (string)value[1],
                    Description = (string)value[2],
                    Cost = int.Parse((string)value[3]),
                    Price = int.Parse((string)value[4]),
                    Discount = int.Parse((string)value[5]),
                    DiscountPrice = CalPriceDiscount(int.Parse((string)value[4]), int.Parse((string)value[5])),
                    UnitInStock = int.Parse((string)value[6]), 
                });
            }
            else // Edit item mode
            {
                var update_data = VMMain.SelectedProduct as Product;
                update_data.ProductId = ProductId;
                update_data.Name = Name;
                update_data.Description = Description;
                update_data.Cost = Cost;
                update_data.Price = Price;
                update_data.Discount = Discount;
                update_data.DiscountPrice = CalPriceDiscount(Price, Discount);
                update_data.UnitInStock = UnitInStock;
            }
            
            CloseWindow();
        }
        public double CalPriceDiscount(int price, int discount)
        {
            double priceD = Convert.ToDouble(price);
            double discountD = Convert.ToDouble(discount);
            double ans = priceD - (priceD * (discountD * 0.01));
            return ans;
        }
    }
}
