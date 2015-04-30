-- Author : Syth Ryan

package vending_machine is

   type Coin_Type is (Penny, Nickel, Dime, Quarter);
   type Product_Type is (Cola, Chips, Candy);

   function Accept_Coin (Coin : in Coin_Type) return Boolean;
   -- Returns whether or not a coin is accepted with this vending machine

   function Select_Product (Product : in Product_Type;
                            Money   : in Integer ) return Boolean;

end vending_machine;
