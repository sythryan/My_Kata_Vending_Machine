with Ada.Text_IO;
-- Author : Syth Ryan

package body Vending_Machine is

   function Accept_Coin (Coin : in Coin_Type) return Boolean is
   begin
      return coin /= Penny;
   end Accept_Coin;

end Vending_Machine;
