   M S B A M L   `   `   `  ����K  GStockProductMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:StockProductMVVM.HelpersStockProductMVVM.Helpers  5   	   C&clr-namespace:StockProductMVVM.HelpersStockProductMVVM.Helpers  5   	   I)clr-namespace:StockProductMVVM.ViewModelsStockProductMVVM.ViewModels  5   	   '    !StockProductMVVM.Views.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   :helpers&clr-namespace:StockProductMVVM.Helpers     5   	   =
converters&clr-namespace:StockProductMVVM.Helpers     5   	   8vm)clr-namespace:StockProductMVVM.ViewModels     5   	     � WindowStartupLocation$  CenterScreen=�5   5    � Title$ 
MainWindow��5   	   $	��400��6   $	��550��6)   
�������   ViewModelMain � DataContext# �   5	   	    � 	Resources 5
      /  )StockProductMVVM.ViewModels.ViewModelMain;   5StockProductMVVM.Helpers.BooleanToVisibilityConverter   BooleanToVisibilityConverter��%:   &	        &	        5   
   6     5   
   62   5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $
��Auto �6   .+�5   
   �� $
��Auto=�6   .��5      �� $��Product list in stock��6   $
��Left=�66   $
��Left=�6Q   $	��Top=�6s   .��5      �� .+�5      � .+�5      �� -   5        $��
cbShowCost��5   #    d� 	IsChecked$
 TrueY�65   $��	Show Cost��6F   $��5,0,5,0q�6Z   �� 5      -   5        $��cbShowPriceAndDisc��5   #   $
 TrueY�6=   $��Show Price & Discount��6O   5      &   System.Windows.Controls.DataGrid  5      $
��Left=�6i   $��5,0,0,0q�6�      AutoGenerateColumns .     CanUserAddRows .  ��6   �� *
Products+ �� SelectedItem 6@   �� *SelectedProduct+	   Columns	 5      4  .System.Windows.Controls.DataGridTemplateColumn  5!      ,  &System.Windows.Controls.DataGridColumn
   HeaderTemplate
 5"   "   �� 5#   &   .R�5$   *   �� $��cbAllIsChecked��63   $��30��6J    6U   �� *DataContext.CbAll+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� RelativeSource ��  �� AncestorType$ DataGridL�5%   '      CellTemplate 5'   "   �� 5(   &   .R�5)   *   �� $��cbIsChecked��63   $��Center=�6�   $��Center=�6�    6F   �� *	Ischecked+$ PropertyChanged=�6�   5*   '   5,      0  *System.Windows.Controls.DataGridTextColumn  51         Header$ 	ProductId��61      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6{   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *	ProductId+   SortDirection 6b   Z� 6{     52      $
 Name��61    6?   �� *Name+ 6X   Z�   53      $ Description��61    6F   �� *Description+ 6f   Z�   54      $
 Cost��65      SortMemberPath$
 Cost��6C      CanUserSort .    
Visibility 6l   ��  �� Source %	  System.Windows.Markup.Reference	  *
cbShowCost+ �� Path$ 	IsChecked� �� 	Converter# [  55   "   �� 56   &   .R�57   *   �� $��Right=�64   ��6P   �� *Cost+58   '   5:        5;      $ Price��65   $ Price��6D    .  6n   ��  	  *cbShowPriceAndDisc+$ 	IsChecked�# [  5<   "   �� 5=   &   .R�5>   *   �� $��Right=�64   ��6P   �� *Price+5?   '   5A        5B      $ Discount��65   $ Discount��6G    .  6t   ��  	  *cbShowPriceAndDisc+$ 	IsChecked�# [  5C   "   �� 5D   &   .R�5E   *   �� $��Right=�64   ��6P   �� *
Discount+5F   '   5H        5I      $ Discount Price��65   $ DisCountPrice��6M    .  5J   "   �� 5K   &   .R�5L   *   �� $��Right=�64   ��6P   �� *DiscountPrice+5M   '   5O        5P      $ Unit In Stock��65   $ UnitInStock��6L    .  5Q   "   �� 5R   &   .R�5S   *   �� $��Right=�64   ��6P   �� *UnitInStock+5T   '   5V      5X      5Y      5Z      5[      � 5\   
   $��1��6    5]       �� 
TargetType �� Property �� Value��%�   '��       �� 5^      " ��6   .�5_      ��  � ��$ 5q�6/   �� 5`       � ��$ 50��6.   �� 5a       � ��$ 20��6/   �� 5b       � ��$ 14(�61   �� 5c       � ��$ Center=�6C   5d      5e      .+�5f      �� $	��Add��6   ��6#   �� *AddProductCommand+�� 5g      $
��Edit��6   ��6$   �� *EditProductCommand+��6K   �� *SelectedProduct+�� 5h      $��Delete��6   ��6&   �� *DeleteProductCommand+5i      5j      5k      