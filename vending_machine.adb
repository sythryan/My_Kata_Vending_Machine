with Ada.Text_IO;
-- Author : Syth Ryan

package body Vending_Machine is

   function Accept_Coin (Coin : in Integer) return Boolean is
   begin
      return coin /= 1;
   end Accept_Coin;

end Vending_Machine;
