-- Author : Syth Ryan

package vending_machine is

   type Coin_Type is (Penny, Nickel, Dime, Quarter);

   function Accept_Coin (Coin : in Coin_Type) return Boolean;
   -- Returns whether or not a coin is accepted with this vending machine

end vending_machine;
