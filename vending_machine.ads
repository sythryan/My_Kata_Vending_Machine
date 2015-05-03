-- Author : Syth Ryan
-- Notes:
--     + Money is Processed with no decimals, $1.00 is 100

package vending_machine is

   type Coin_Type is (Penny, Nickel, Dime, Quarter);
   type Product_Type is (Cola, Chips, Candy);

   function Accept_Coin (Coin : in Coin_Type) return Boolean;
   -- Returns whether or not a coin is accepted with this vending machine

   function Select_Product (Product : in Product_Type;
                            Money   : in Natural) return Boolean;
   -- Returns Whether Product Was Purchased

   function Make_Change (Money : in Natural;
                         Cost  : in Natural) return Natural;
   -- Returns change difference
   -- Will Throw an unhandled error if Cost is greater than Money

end vending_machine;
