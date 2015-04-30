with Ada.Text_IO;
-- Author : Syth Ryan

-- Personal Note: Cents are not decimal, $1.00 equals an Integer of 100
package body Vending_Machine is

   function Accept_Coin (Coin : in Coin_Type) return Boolean is
   begin
      return coin /= Penny;
   end Accept_Coin;

   function Select_Product (Product : in Product_Type;
                            Money   : in Integer) return Boolean is
   begin
      case Product is
      when Cola =>
         return Money >= 100; -- $1.00
      when Chips =>
         return Money >= 50;  -- $0.50
      when others =>
         return False;
      end case;
   end Select_Product;

end Vending_Machine;
