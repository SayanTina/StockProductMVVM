   M S B A M L   `   `   `  ����K  GStockProductMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:StockProductMVVM.ViewsStockProductMVVM.Views  5   	   C&clr-namespace:StockProductMVVM.HelpersStockProductMVVM.Helpers  5   	   C&clr-namespace:StockProductMVVM.HelpersStockProductMVVM.Helpers  5
   	   (    "StockProductMVVM.Views.FormProduct   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:StockProductMVVM.Views     5   	   =
converters&clr-namespace:StockProductMVVM.Helpers     5   	   :helpers&clr-namespace:StockProductMVVM.Helpers     5
   	     � Title$  FormProduct��5	   	   $	��400��6   $	��400��6*   +   %StockProductMVVM.Helpers.DialogCloser   DialogResult 5   	   �� *CloseWindowFlag+ � 	Resources 5      3   -StockProductMVVM.Helpers.PassThroughConverter   ConvertToMulti��%   &	          5   
   6*   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5      $��3* �6    � RowDefinitions 5   
   �� 5      $��2* �6   �� 5      $
��auto �6   .+�5   
   �� $��Stretch=�6   $��0��63   $��10q�6C    5       �� 
TargetType �� Property �� Value��%u   '��       �� 5      " ��6   .�5      ��  � ��$ 2q�6/   �� 5       � ��$ 16(�61   5      5      .+�5      �� .��6   Id6   �� 5       .��6   Name6   �� 5!      .��6   Description6!   �� 5"      .��6   Cost6   �� 5#      .��6   Price6   �� 5$      .��6   
Discount6   �� 5%      .��6   Unit In Stock6#   5&      �� 5'   
   $��1��6   $��10q�6%   $
��Left=�61    5(      ��%�   '��       �� 5)      " ��6   .�5*      ��  � ��$	 8.5q�6/   �� 5+       � ��$	 150��6.   �� 5,       � ��$
 auto��6/   5-      5.      .+�5/      �� -   5         ��Name$ 	ProductId��5/      ��6*   �� *	ProductId+�� 50      -   5        $
 Name��50      ��6$   �� *Name+6<   �� 51      -   5        $ Description��51      ��6+   �� *Description+6J   �� 52      -   5        $
 Cost��52      ��6$   �� *Cost+�� 53      -   5        $ Price��53      ��6%   �� *Price+�� 54      -   5        $ Discount��54      ��6(   �� *
Discount+�� 55      -   5        $ UnitInStock��55      ��6+   �� *UnitInStock+57      � 58   
   $��10q�6   $��2��6    $��1��64   $��Center=�6A   $��30��6^   .+�59      �� $��0,0,10,0q�6   $
��Save��6N   $��16(�6^   $��60��6l   ��6'   �� *SaveProductCommand+��5:      `� 5;      	 `� 	Converter#	 [  6#   .1�5<      �� 
 �� Path$

 Text�6"    �� ElementName$ 	ProductId��6.   �� 5=      $

 Text�6"   $
 Name��6.   �� 5>      $

 Text�6"   $ Description��6.   �� 5?      $

 Text�6"   $
 Cost��6.   �� 5@      $

 Text�6"   $ Price��6.   �� 5A      $

 Text�6"   $ Discount��6.   �� 5B      $

 Text�6"   $ UnitInStock��6.   5C      5E      �� 5F      $��Cancel��6   $��60��6'   $��30��62   $��16(�6>   5G      5H      5I      