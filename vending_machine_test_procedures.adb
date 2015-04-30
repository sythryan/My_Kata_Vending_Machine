with vending_machine;
with Ada.Text_IO; use Ada.Text_IO;
-- Author : Syth Ryan
package body Vending_Machine_Test_Procedures is

   procedure passOneToAcceptCoinShouldReturnFalse is

   begin
      if (vending_machine.Accept_Coin(1)) then
         Put_Line("- FAILD: passOneToAcceptCoinShouldReturnFalse");
      else
         Put_Line("+ PASSED: passOneToAcceptCoinShouldReturnFalse");
      end if;
   end passOneToAcceptCoinShouldReturnFalse;
   -------------------------------------------------------

   procedure passFiveToAcceptCoinShouldReturnTrue is
   begin
      if (vending_machine.Accept_Coin(5)) then
         Put_Line("+ PASSED: passFiveToAcceptCoinShouldReturnTrue");
      else
         Put_Line("- FAILD: passFiveToAcceptCoinShouldReturnTrue");
      end if;
   end passFiveToAcceptCoinShouldReturnTrue;
   -------------------------------------------------------


end Vending_Machine_Test_Procedures;
