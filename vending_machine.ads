-- Author : Syth Ryan
-- Notes:
--     + Money is Processed with no decimals, $1.00 is 100

package vending_machine is

   type Coin_Type is (Penny, Nickel, Dime, Quarter);
   type Coin_Array is array (Natural range <>) of Coin_Type;
   type Product_Type is (Cola, Chips, Candy);

   function Accept_Coin (Coin : in Coin_Type) return Boolean;
   -- Returns whether or not a coin is accepted with this vending machine

   function Select_Product (Product : in Product_Type;
                            Money   : in Natural) return Boolean;
   -- Returns Whether Product Was Purchased
   -- Assumptions: Product is not out of Stock

   function Make_Change (Money : in Natural;
                         Cost  : in Natural) return Natural;
   -- Returns change difference
   -- May Throw an unhandled error if Cost is greater than Money

   function Return_Coins (Money : in Natural;
                          Cost  : in Natural) return Coin_Array;
   -- Returns an array of coins to be returned to the user
   -- May Throw an unhandled error if Cost is greater than Money

   function Sold_Out (Product : in Product_Type) return Boolean;
   -- Returns a Boolean, True if a Product is sold out.
private
   Chips_In_Stock : Integer := 0;
   Cola_In_Stock  : Integer := 3;
   Candy_In_Stock : Integer := 2;

end vending_machine;
